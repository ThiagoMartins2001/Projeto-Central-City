local DECOR = {
    FLOAT = 1,
    BOOL = 2,
    INT = 3,
    UNK = 4,
    TIME = 5,
}

local DECORATORS = {
    ["flatbed3_bed"] = DECOR.INT, -- The bed entity
    ["flatbed3_car"] = DECOR.INT, -- The car entity
    ["flatbed3_attached"] = DECOR.BOOL, -- Is a car attached?
    ["flatbed3_lowered"] = DECOR.BOOL, -- Is the bed lowered?
    ["flatbed3_state"] = DECOR.INT, -- Multi-state for the bed
}

for k,v in next, DECORATORS do
    DecorRegister(k, v)
end

function lerp(a, b, t)
	return a + (b - a) * t
end

-- Value controlling all movement
local LERP_VALUE = 0.0

local lastFlatbed = nil
local lastBed = nil

--local raisedOffset = vector3(0.0, -3.8, 0.25)
local backOffset = {vector3(0.0, -4.0, 0.0), vector3(0.0, 0.0, 0.0)}
local loweredOffset = {vector3(0.0, -0.4, -1.0), vector3(12.0, 0.0, 0.0)}
local raisedOffset = {vector3(0.0, -3.8, 0.19), vector3(0.0, 0.0, 0.0)}

local attachmentOffset = {vector3(0.0, 1.5, 0.35), vector3(0.0, 0.0, 0.0)}

local bedController = {vector3(-2.5, -3.8, -1.0), vector3(0.0, 0.0, 0.0)}

local controllerMessageLoweredCar = "OMNI_FB3_INST_LC"
local controllerMessageLoweredNoCar = "OMNI_FB3_INST_LN"
local controllerMessageRaised = "OMNI_FB3_INST_R"
AddTextEntry(controllerMessageLoweredCar, "~INPUT_CONTEXT~ para ~y~levantar ~w~a prancha.~n~ ~INPUT_DETONATE~ para ~r~desanexar ~w~o veículo.")
AddTextEntry(controllerMessageLoweredNoCar, "~INPUT_CONTEXT~ para ~y~levantar ~w~a prancha.~n~ ~INPUT_DETONATE~ para ~g~anexar ~w~um veículo.")
AddTextEntry(controllerMessageRaised, "~INPUT_CONTEXT~ para ~y~abaixar ~w~a prancha.")

local hasPermission = false -- Flag para armazenar se o jogador tem permissão

RegisterNetEvent("flatbed:permissionResponse")
AddEventHandler("flatbed:permissionResponse", function(permission)
    hasPermission = permission -- Atualiza a flag com o valor enviado pelo servidor
end)
local entityEnumerator = {
	__gc = function(enum)
		if enum.destructor and enum.handle then
			enum.destructor(enum.handle)
		end

		enum.destructor = nil
		enum.handle = nil
	end
}

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
	return coroutine.wrap(function()
		local iter, id = initFunc()
		if not id or id == 0 then
			disposeFunc(iter)
			return
		end

		local enum = {handle = iter, destructor = disposeFunc}
		setmetatable(enum, entityEnumerator)

		local next = true
		repeat
		coroutine.yield(id)
		next, id = moveFunc(iter)
		until not next

		enum.destructor, enum.handle = nil, nil
		disposeFunc(iter)
	end)
end

function EnumerateObjects()
	return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end

function EnumeratePeds()
	return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

function EnumerateVehicles()
	return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

function EnumeratePickups()
	return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
end

function GetAllVehicles() 
	local vehicles = {}

	for vehicle in EnumerateVehicles() do
		table.insert(vehicles, vehicle)
	end

	return vehicles
end

function GetAllObjects() 
	local objs = {}

	for obj in EnumerateObjects() do
		table.insert(objs, obj)
	end

	return objs
end

function BigDelete(entity) 
    local playerPed = PlayerPedId()
    carModel = GetEntityModel(entity)
    carName = GetDisplayNameFromVehicleModel(carModel)
    if (NetworkGetNetworkIdFromEntity(entity) ~= nil and NetworkGetNetworkIdFromEntity(entity) > 0) then
        NetworkRequestControlOfEntity(entity)
        
        local timeout = 2000
        while timeout > 0 and not NetworkHasControlOfEntity(entity) do
            Wait(100)
            timeout = timeout - 100
        end

        SetEntityAsMissionEntity(entity, true, true)
        
        local timeout = 2000
        while timeout > 0 and not IsEntityAMissionEntity(entity) do
            Wait(100)
            timeout = timeout - 100
        end

        Citizen.InvokeNative( 0xEA386986E786A54F, Citizen.PointerValueIntInitialized( entity ) )
        
        if (DoesEntityExist(entity)) then 
            DeleteEntity(entity)
        end 
    end
end

function BedCheck()
    local objects = GetAllObjects()
    for i=1, #objects do
        local obj = objects[i]
        if GetHashKey("inm_flatbed_base") == GetEntityModel(obj) then
            local tow = false
            local vehicles = GetAllVehicles()
            for i=1, #vehicles do
                local car = vehicles[i]
                if GetHashKey("flatbed3") == GetEntityModel(car) then
                    local car_coords = GetEntityCoords(car, false)
                    local bed_coords = GetEntityCoords(obj, false)
                    local dist = GetDistanceBetweenCoords(car_coords.x, car_coords.y, car_coords.z, bed_coords.x, bed_coords.y, bed_coords.z, true)
                    if dist < 10.0 then
                        tow = true
                        break
                    end
                end
            end
            if not tow then
               -- print("BED DETECTED WITHOUT FLATBED3 NEARBY - NO DELETION PERFORMED")
            end
        end
    end
end

function drawMarker(pos)
    local plyPos = GetEntityCoords(PlayerPedId(), true)
    if IsPedInAnyVehicle(PlayerPedId(), true) then
        return false
    end
    local dist = #(pos - plyPos)
    if dist < 25.0 then
        DrawMarker(5, pos, vector3(0.0, 0.0, 0.0), vector3(0.0, 0.0, 0.0), vector3(1.0, 1.0, 1.0), 255, 0, 0, 150)

        if dist < 1.5 then
            return true
        end
    end
    return false
end

function showHelpText(text)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringTextLabel(text)
    EndTextCommandDisplayHelp(0, 0, 1, -1)

end

function getVehicleInDirection(coordFrom, coordTo)
    local rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y,
            coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10,
            GetPlayerPed(-1), 0)
    local a, b, c, d, vehicle = GetRaycastResult(rayHandle)
    return vehicle
end

function log(text)
   -- print("[omni_flatbed/client] " .. text)
end

Citizen.CreateThread(function()
    --log("Flatbed Loading")
    RequestModel("inm_flatbed_base")
    while not HasModelLoaded("inm_flatbed_base") do
        Wait(0)
    end
    --log("Flatbed Loading Complete")
    while true do
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(ped, true)

        if veh and GetEntityModel(veh) ~= GetHashKey("flatbed3") then
            veh = lastFlatbed
        end
        if lastFlatbed then
            if not DoesEntityExist(lastFlatbed) then
                --log("FLATBED DELETED?")
                if lastBed then
                    if DoesEntityExist(lastBed) then
                      --  log("BED STILL EXISTS!")
                        BigDelete(lastBed)
                        lastBed = nil
                    end
                end
                lastFlatbed = nil
            end
        end
        if veh and DoesEntityExist(veh) and GetEntityModel(veh) == GetHashKey("flatbed3") and NetworkHasControlOfEntity(veh) then
            lastFlatbed = veh
            local rightDir, fwdDir, upDir, pos = GetEntityMatrix(veh)

            if not DecorExistOn(veh, "flatbed3_bed") or DecorGetInt(veh, "flatbed3_bed") == 0 then
                DecorSetInt(veh, "flatbed3_bed", 0)
                local bed = CreateObjectNoOffset("inm_flatbed_base", pos, true, 0, 1)
               -- log("GENERATING BED")
                if DoesEntityExist(bed) then
                    local bedNet = ObjToNet(bed)
                    DecorSetInt(veh, "flatbed3_bed", bedNet)
                   -- log("DONE GENERATING BED")
                end
            else
                SetVehicleExtra(veh, 1, not false)
            end
            local bedNet = DecorGetInt(veh, "flatbed3_bed")
            local bed = nil
            if bedNet ~= 0 then
                bed = NetToObj(bedNet)
                lastBed = bed

                if not DecorExistOn(veh, "flatbed3_attached") then
                    DecorSetBool(veh, "flatbed3_attached", false)
                end
                local attached = DecorGetBool(veh, "flatbed3_attached")

                if not DecorExistOn(veh, "flatbed3_lowered") then
                    DecorSetBool(veh, "flatbed3_lowered", true)
                end
                local lowered = DecorGetBool(veh, "flatbed3_lowered")

                if not DecorExistOn(veh, "flatbed3_state") then
                    DecorSetInt(veh, "flatbed3_state", 0)
                end
                local state = DecorGetInt(veh, "flatbed3_state")

                if not DecorExistOn(veh, "flatbed3_car") then
                    DecorSetInt(veh, "flatbed3_car", 0)
                end
                local carNet = DecorGetInt(veh, "flatbed3_car")
                local car = nil
                if carNet ~= 0 then
                    car = NetToVeh(carNet)
                end

                local data = bedController
                local x = pos.x + (fwdDir.x * data[1].x) + (rightDir.x * data[1].y) + (upDir.x * data[1].z)
                local y = pos.y + (fwdDir.y * data[1].x) + (rightDir.y * data[1].y) + (upDir.y * data[1].z)
                local z = pos.z + (fwdDir.z * data[1].x) + (rightDir.z * data[1].y) + (upDir.z * data[1].z)
                local controllerPos = vector3(x, y, z)

               if state == 0 then
                    -- Raised
                    if lowered then
                        DetachEntity(bed, 0, 0)
                        AttachEntityToEntity(bed, veh, GetEntityBoneIndexByName(veh, "chassis"), raisedOffset[1], raisedOffset[2], 0, 0, 1, 0, 0, 1)

                        DecorSetBool(veh, "flatbed3_lowered", false)
                        lowered = false
                    end

                    if drawMarker(controllerPos) then
                        showHelpText(controllerMessageRaised)

                        if IsControlJustPressed(0, 38) then
                            -- Solicita a permissão do servidor antes de tentar operar
                            TriggerServerEvent("flatbed:checkPermission")
                            Citizen.Wait(500) -- Espera um tempo para receber a resposta do servidor
            
                            -- Se a permissão for concedida, muda o estado
                            if hasPermission then
                                            -- Reproduz a animação de puxar alavanca
                local playerPed = PlayerPedId()
local flatbed3 = GetClosestVehicle(GetEntityCoords(playerPed), 10.0, GetHashKey("flatbed3"), 70) -- Obtém o veículo mais próximo do jogador no raio de 10m

if flatbed3 ~= 0 then -- Verifica se encontrou o flatbed3
    local flatbedCoords = GetEntityCoords(flatbed3) -- Obtém as coordenadas do flatbed3
    local flatbedHeading = GetEntityHeading(flatbed3) -- Obtém a direção em que o flatbed3 está virado
    
    -- Calcula a posição para o jogador ficar próximo ao flatbed3
   -- local x, y, z = table.unpack(flatbedCoords + vector3(-3.5, 1.1, 0)) -- Posiciona o jogador 1,5m atrás do caminhão
    
    -- Move o jogador para a posição desejada e o rotaciona na direção do flatbed3
    --SetEntityCoords(playerPed, x, y, z, false, false, false, true) 
    SetEntityHeading(playerPed, flatbedHeading + 260.0) -- Gira o jogador para ficar de frente para o flatbed3
end

-- Solicita o dicionário de animações
RequestAnimDict("amb@prop_human_parking_meter@female@idle_a") 
while not HasAnimDictLoaded("amb@prop_human_parking_meter@female@idle_a") do
    Citizen.Wait(100)
end

-- Executa a animação
TaskPlayAnim(playerPed, "amb@prop_human_parking_meter@female@idle_a", "idle_a_female", 8.0, -8.0, -1, 1, 0, false, false, false)

-- Espera para a animação ser executada antes de mudar o estado
Citizen.Wait(2000) 

-- Cancela a animação após a execução
ClearPedTasks(playerPed) -- Cancela a animação

                            state = 1
                            DecorSetInt(veh, "flatbed3_state", state)
                        else
                            TriggerEvent('chat:addMessage', { args = { '^1Acesso negado', 'Você não tem permissão para operar o reboque.' } })
                        end
                        end
                    end
                elseif state == 1 then
                    -- Moving back
                    local offsetPos = raisedOffset[1]
                    local offsetRot = raisedOffset[2]

                    offsetPos = offsetPos + vector3(lerp(0.0, backOffset[1].x, LERP_VALUE), lerp(0.0, backOffset[1].y, LERP_VALUE), lerp(0.0, backOffset[1].z, LERP_VALUE))
                    offsetRot = offsetRot + vector3(lerp(0.0, backOffset[2].x, LERP_VALUE), lerp(0.0, backOffset[2].y, LERP_VALUE), lerp(0.0, backOffset[2].z, LERP_VALUE))

                    DetachEntity(bed, 0, 0)
                    AttachEntityToEntity(bed, veh, GetEntityBoneIndexByName(veh, "chassis"), offsetPos, offsetRot, 0, 0, 1, 0, 0, 1)

                    LERP_VALUE = LERP_VALUE + (1.0 * Timestep()) / 4.0

                    if LERP_VALUE >= 1.0 then
                        state = state + 1
                        DecorSetInt(veh, "flatbed3_state", state)
                        LERP_VALUE = 0.0
                    end
                elseif state == 2 then
                    -- Lowering
                    local offsetPos = raisedOffset[1] + backOffset[1]
                    local offsetRot = raisedOffset[2] + backOffset[2]

                    offsetPos = offsetPos + vector3(lerp(0.0, loweredOffset[1].x, LERP_VALUE), lerp(0.0, loweredOffset[1].y, LERP_VALUE), lerp(0.0, loweredOffset[1].z, LERP_VALUE))
                    offsetRot = offsetRot + vector3(lerp(0.0, loweredOffset[2].x, LERP_VALUE), lerp(0.0, loweredOffset[2].y, LERP_VALUE), lerp(0.0, loweredOffset[2].z, LERP_VALUE))

                    DetachEntity(bed, 0, 0)
                    AttachEntityToEntity(bed, veh, GetEntityBoneIndexByName(veh, "chassis"), offsetPos, offsetRot, 0, 0, 1, 0, 0, 1)

                    LERP_VALUE = LERP_VALUE + (1.0 * Timestep()) / 2.0

                    if LERP_VALUE >= 1.0 then
                        state = state + 1
                        DecorSetInt(veh, "flatbed3_state", state)
                        LERP_VALUE = 0.0
                    end
                elseif state == 3 then
                    -- Lowered
                    if not lowered then
                        local offsetPos = raisedOffset[1] + backOffset[1] + loweredOffset[1]
                        local offsetRot = raisedOffset[2] + backOffset[2] + loweredOffset[2]
                        DetachEntity(bed, 0, 0)
                        AttachEntityToEntity(bed, veh, GetEntityBoneIndexByName(veh, "chassis"), offsetPos, offsetRot, 0, 0, 1, 0, 0, 1)
                        DecorSetBool(veh, "flatbed3_lowered", true)
                        lowered = true
                    end

                    if drawMarker(controllerPos) then
                        if attached then
                            showHelpText(controllerMessageLoweredCar)
                        else
                            showHelpText(controllerMessageLoweredNoCar)
                        end
                        if IsControlJustPressed(0, 38) then
                            -- Solicita a permissão do servidor antes de tentar operar
                            TriggerServerEvent("flatbed:checkPermission")
                            Citizen.Wait(500) -- Espera um tempo para receber a resposta do servidor
            
                            -- Se a permissão for concedida, muda o estado
                            if hasPermission then
                                                -- Reproduz a animação de puxar alavanca
                local playerPed = PlayerPedId()
local flatbed3 = GetClosestVehicle(GetEntityCoords(playerPed), 10.0, GetHashKey("flatbed3"), 70) -- Obtém o veículo mais próximo do jogador no raio de 10m

if flatbed3 ~= 0 then -- Verifica se encontrou o flatbed3
    local flatbedCoords = GetEntityCoords(flatbed3) -- Obtém as coordenadas do flatbed3
    local flatbedHeading = GetEntityHeading(flatbed3) -- Obtém a direção em que o flatbed3 está virado
    
    -- Calcula a posição para o jogador ficar próximo ao flatbed3
   -- local x, y, z = table.unpack(flatbedCoords + vector3(-3.5, 1.1, 0)) -- Posiciona o jogador 1,5m atrás do caminhão
    
    -- Move o jogador para a posição desejada e o rotaciona na direção do flatbed3
    --SetEntityCoords(playerPed, x, y, z, false, false, false, true) 
    SetEntityHeading(playerPed, flatbedHeading + 260.0) -- Gira o jogador para ficar de frente para o flatbed3
end

-- Solicita o dicionário de animações
RequestAnimDict("amb@prop_human_parking_meter@female@idle_a") 
while not HasAnimDictLoaded("amb@prop_human_parking_meter@female@idle_a") do
    Citizen.Wait(100)
end

-- Executa a animação
TaskPlayAnim(playerPed, "amb@prop_human_parking_meter@female@idle_a", "idle_a_female", 8.0, -8.0, -1, 1, 0, false, false, false)

-- Espera para a animação ser executada antes de mudar o estado
Citizen.Wait(2000) 

-- Cancela a animação após a execução
ClearPedTasks(playerPed) -- Cancela a animação
                            state = 4
                            DecorSetInt(veh, "flatbed3_state", state)
                        else
                            TriggerEvent('chat:addMessage', { args = { '^1Acesso negado', 'Você não tem permissão para operar o reboque.' } })
                        end
                        end
                        if IsControlJustPressed(0, 47) then
                            TriggerServerEvent("flatbed:checkPermission")
                            Citizen.Wait(500) 
                            if hasPermission then
                                local playerPed = PlayerPedId()
                                local flatbed3 = GetClosestVehicle(GetEntityCoords(playerPed), 10.0, GetHashKey("flatbed3"), 70)
                        
                                if flatbed3 ~= 0 then
                                    local flatbedCoords = GetEntityCoords(flatbed3)
                                    local flatbedHeading = GetEntityHeading(flatbed3)
                                    SetEntityHeading(playerPed, flatbedHeading + 260.0)
                                end
                        
                                -- Solicita o dicionário de animações
                                RequestAnimDict("amb@prop_human_parking_meter@female@idle_a")
                                while not HasAnimDictLoaded("amb@prop_human_parking_meter@female@idle_a") do
                                    Citizen.Wait(100)
                                end
                        
                                -- Executa a animação
                                TaskPlayAnim(playerPed, "amb@prop_human_parking_meter@female@idle_a", "idle_a_female", 8.0, -8.0, -1, 1, 0, false, false, false)
                        
                                Citizen.Wait(2000)
                                ClearPedTasks(playerPed)
                        
                                if attached then
                                    DetachEntity(car, 0, 1)
                                    car = nil
                                    DecorSetInt(veh, "flatbed3_car", 0)
                                    attached = false
                                    DecorSetBool(veh, "flatbed3_attached", attached)
                                else
                                    local bedPos = GetEntityCoords(bed, false)
                                    local newCar = getVehicleInDirection(bedPos + vector3(0.0, 0.0, 0.25), bedPos + vector3(0.0, 0.0, 2.25))
                        
                                    if not newCar or not DoesEntityExist(newCar) then
                                        local backCheckPos = bedPos - GetEntityForwardVector(bed) * 5.0
                                        DrawMarker(0, backCheckPos.x, backCheckPos.y, backCheckPos.z + 1.0, 0, 0, 0, 0, 0, 0, 2.0, 2.0, 2.0, 255, 0, 0, 100, false, true, 2, false, nil, nil, false)
                        
                                        local damagedVeh = getVehicleInDirection(backCheckPos + vector3(0.0, 0.0, 0.25), backCheckPos + vector3(0.0, 0.0, 2.25))
                        
                                        if damagedVeh and DoesEntityExist(damagedVeh) then
                                            NetworkRequestControlOfEntity(damagedVeh)
                                            while not NetworkHasControlOfEntity(damagedVeh) do
                                                Citizen.Wait(0)
                                            end
                                            
                                            -- Sistema de cabo para conectar o veículo à rampa
                                            local cable = StartRopeUnwindingFront(damagedVeh) -- Inicia o cabo
                                            AttachRopeToEntity(cable, damagedVeh, vector3(0.0, 0.0, 0.5)) -- Conecta o cabo ao veículo
                                            
                                            local step = 0.01 
                                            local startPosition = GetEntityCoords(damagedVeh)
                                            local finalPosition = bedPos + attachmentOffset[1] + vector3(0.0, -0.8, startPosition.z - bedPos.z - 0.50)
                                            local startTime = GetGameTimer()
                        
                                            while #(GetEntityCoords(damagedVeh) - finalPosition) > 0.1 do
                                                local vehPos = GetEntityCoords(damagedVeh)
                                                local moveStep = (finalPosition - vehPos) * step
                                                SetEntityCoords(damagedVeh, vehPos.x + moveStep.x, vehPos.y + moveStep.y, bedPos.z + 0.1, false, false, false, true)
                                                Citizen.Wait(15)
                        
                                                if GetGameTimer() - startTime > 1500 then
                                                    break
                                                end
                                            end
                        
                                            StopRopeUnwindingFront(cable) -- Para o cabo após puxar o veículo
                                            DetachRopeFromEntity(cable, damagedVeh) -- Remove o cabo do veículo
                                            
                                            AttachEntityToEntity(
                                                damagedVeh, 
                                                bed, 
                                                0, 
                                                attachmentOffset[1] + vector3(0.0, -0.8, startPosition.z - bedPos.z ), 
                                                attachmentOffset[2], 
                                                0, 
                                                0, 
                                                false, 
                                                0, 
                                                0, 
                                                1
                                            )
                                            
                                            car = damagedVeh
                                            DecorSetInt(veh, "flatbed3_car", VehToNet(damagedVeh))
                                            attached = true
                                            DecorSetBool(veh, "flatbed3_attached", attached)
                                        end
                                    else
                                        local carPos = GetEntityCoords(newCar, false)
                                        NetworkRequestControlOfEntity(newCar)
                                        while not NetworkHasControlOfEntity(newCar) do Wait(0) end
                                        
                                        AttachEntityToEntity(
                                            newCar, 
                                            bed, 
                                            0, 
                                            attachmentOffset[1] + vector3(0.0, -0.8, carPos.z - bedPos.z - 0.50), 
                                            attachmentOffset[2], 
                                            0, 
                                            0, 
                                            false, 
                                            0, 
                                            0, 
                                            1
                                        )
                                        car = newCar
                                        DecorSetInt(veh, "flatbed3_car", VehToNet(newCar))
                                        attached = true
                                        DecorSetBool(veh, "flatbed3_attached", attached)
                                    end
                                end
                            else
                                TriggerEvent('chat:addMessage', { args = { '^1Acesso negado', 'Você não tem permissão para operar o reboque.' } })
                            end
                        end
                    end
                elseif state == 4 then
                    -- Raising
                    local offsetPos = raisedOffset[1] + backOffset[1]
                    local offsetRot = raisedOffset[2] + backOffset[2]

                    offsetPos = offsetPos + vector3(lerp(loweredOffset[1].x, 0.0, LERP_VALUE), lerp(loweredOffset[1].y, 0.0, LERP_VALUE), lerp(loweredOffset[1].z, 0.0, LERP_VALUE))
                    offsetRot = offsetRot + vector3(lerp(loweredOffset[2].x, 0.0, LERP_VALUE), lerp(loweredOffset[2].y, 0.0, LERP_VALUE), lerp(loweredOffset[2].z, 0.0, LERP_VALUE))

                    DetachEntity(bed, 0, 0)
                    AttachEntityToEntity(bed, veh, GetEntityBoneIndexByName(veh, "chassis"), offsetPos, offsetRot, 0, 0, 1, 0, 0, 1)

                    LERP_VALUE = LERP_VALUE + (1.0 * Timestep()) / 2.0

                    if LERP_VALUE >= 1.0 then
                        state = state + 1
                        DecorSetInt(veh, "flatbed3_state", state)
                        LERP_VALUE = 0.0
                    end
                elseif state == 5 then
                    -- Moving forward
                    local offsetPos = raisedOffset[1]
                    local offsetRot = raisedOffset[2]

                    offsetPos = offsetPos + vector3(lerp(backOffset[1].x, 0.0, LERP_VALUE), lerp(backOffset[1].y, 0.0, LERP_VALUE), lerp(backOffset[1].z, 0.0, LERP_VALUE))
                    offsetRot = offsetRot + vector3(lerp(backOffset[2].x, 0.0, LERP_VALUE), lerp(backOffset[2].y, 0.0, LERP_VALUE), lerp(backOffset[2].z, 0.0, LERP_VALUE))

                    DetachEntity(bed, 0, 0)
                    AttachEntityToEntity(bed, veh, GetEntityBoneIndexByName(veh, "chassis"), offsetPos, offsetRot, 0, 0, 1, 0, 0, 1)

                    LERP_VALUE = LERP_VALUE + (1.0 * Timestep()) / 4.0

                    if LERP_VALUE >= 1.0 then
                        state = 0
                        DecorSetInt(veh, "flatbed3_state", state)
                        LERP_VALUE = 0.0
                    end
                else
                    state = 0
                    DecorSetInt(veh, "flatbed3_state", state)
                end

                if not IsPedInVehicle(ped, veh, true) then

                end
            end
        end
        Wait(0)
    end
end)
-- CLIENT-DEPENDENT FLOATING BED CHECK. 
Citizen.CreateThread(function() 
    while true do 
        Citizen.Wait(5000) 
        BedCheck()
    end
end)
