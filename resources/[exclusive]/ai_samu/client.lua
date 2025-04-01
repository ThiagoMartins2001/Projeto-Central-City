local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
emP = Tunnel.getInterface("ai_samu")


RegisterCommand("samu", function()
    local health = GetEntityHealth(PlayerPedId())

    print("^2DEBUG: Health do jogador:", health) -- Verifica a saúde do jogador

    if health <= 100 then -- Se o jogador estiver morto
        print("^2DEBUG: Jogador está morto!")

        if emP.checkServices() then
            print("^2DEBUG: Não há paramédicos disponíveis!")

            if emP.checkPayment() then
                print("^2DEBUG: Pagamento realizado com sucesso!")

                TriggerEvent("Notify", "sucesso", "Você pagou $ 20000")
                Citizen.Wait(1000) -- Espera 1 segundo para evitar conflitos
                
                print("^2DEBUG: Chamando knb:samu")
                TriggerEvent("knb:samu") -- Chama o evento do SAMU
            else
                print("^1DEBUG: Falha no pagamento!")
                TriggerEvent("Notify", "negado", "Você não possui dinheiro suficiente.")
            end
        else
            print("^1DEBUG: Há paramédicos disponíveis, não pode chamar SAMU!")
            TriggerEvent("Notify", "negado", "Já existem paramédicos em serviço.")
        end
    else
        print("^1DEBUG: Jogador não está morto, bloqueando comando!")
        TriggerEvent("Notify", "negado", "Você não pode utilizar este comando agora.")
    end
end, false)






RegisterNetEvent("knb:samu")
AddEventHandler("knb:samu", function()
    print("^2DEBUG: Evento knb:samu foi chamado!")
    
    player = GetPlayerPed(-1)
    playerPos = GetEntityCoords(player)
    
    print("^2DEBUG: Posição do jogador:", playerPos)

    local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(player, 0.0, 5.0, 0.0)
    local targetVeh = GetTargetVehicle(player, inFrontOfPlayer)

    print("^2DEBUG: Posição do jogador na frente:", inFrontOfPlayer)
    print("^2DEBUG: Veículo alvo identificado:", targetVeh)

    local driverhash = GetHashKey("s_m_m_paramedic_01")
    RequestModel(driverhash)
    local vehhash = GetHashKey("sprintersamu")
    RequestModel(vehhash)

    print("^2DEBUG: Modelos carregando...")

    while not HasModelLoaded(driverhash) and RequestModel(driverhash) or not HasModelLoaded(vehhash) and RequestModel(vehhash) do
        Citizen.Wait(0)
    end

    print("^2DEBUG: Modelos carregados!")

    -- Verificando se o veículo alvo existe
    if DoesEntityExist(targetVeh) then
        print("^2DEBUG: Veículo alvo encontrado!")

        if DoesEntityExist(samuVeh) then
            DeleteVeh(samuVeh, samuPed)
            SpawnVehicle(playerPos.x, playerPos.y, playerPos.z, vehhash, driverhash)
        else
            SpawnVehicle(playerPos.x, playerPos.y, playerPos.z, vehhash, driverhash)
        end

        print("^2DEBUG: O SAMU foi spawnado!")

        GoToTarget(GetEntityCoords(targetVeh).x, GetEntityCoords(targetVeh).y, GetEntityCoords(targetVeh).z, samuVeh, samuPed, vehhash, targetVeh)
    else
        print("^1DEBUG: Nenhum alvo encontrado!")
    end
end)



function SpawnVehicle(x, y, z, vehhash, driverhash)
    local found, spawnPos, spawnHeading = GetClosestVehicleNodeWithHeading(x + math.random(-100, 100), y + math.random(-100, 100), z, 0, 3, 0)
    
    if found then
        -- Garantir que o modelo do veículo e do motorista sejam carregados corretamente.
        RequestModel(vehhash)
        while not HasModelLoaded(vehhash) do
            Citizen.Wait(100)
        end
        
        RequestModel(driverhash)
        while not HasModelLoaded(driverhash) do
            Citizen.Wait(100)
        end

        -- Criando o veículo SAMU
        samuVeh = CreateVehicle(vehhash, spawnPos, spawnHeading, true, false)
        if DoesEntityExist(samuVeh) then
            print("^2DEBUG: Veículo do SAMU criado com sucesso na posição: ", spawnPos)
        else
            print("^1DEBUG: Erro ao criar veículo do SAMU.")
        end

        -- Criando o ped (motorista paramédico)
        samuPed = CreatePedInsideVehicle(samuVeh, 26, driverhash, -1, true, false)
        if DoesEntityExist(samuPed) then
            print("^2DEBUG: Motorista (paramédico) criado com sucesso dentro do veículo.")
        else
            print("^1DEBUG: Erro ao criar motorista dentro do SAMU.")
        end

        -- Garantir que o veículo esteja em uma posição válida
        SetVehicleOnGroundProperly(samuVeh)
        
        -- Movimento até a posição do jogador
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        TaskVehicleDriveToCoord(samuPed, samuVeh, playerCoords.x, playerCoords.y, playerCoords.z, 20.0, 1, vehhash, 16777216, 1, true)

        -- Adiciona um blip no veículo
        samuBlip = AddBlipForEntity(samuVeh)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("SAMU")
        EndTextCommandSetBlipName(samuBlip)
        SetBlipFlashes(samuBlip, true)
        SetBlipColour(samuBlip, 5)

        print("^2DEBUG: Blip do SAMU criado com sucesso!")

        -- Aguardar até que o SAMU chegue perto do jogador e o paramédico faça a animação de reviver
        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(1000)
                
                local dist = #(playerCoords - GetEntityCoords(samuVeh))  -- Distância entre o SAMU e o jogador
                if dist < 10.0 then
                    print("^2DEBUG: SAMU chegou perto do jogador.")
                    -- Adicionar animação para o paramédico (reviver)
                    TaskGoToCoordAnyMeans(samuPed, playerCoords.x, playerCoords.y, playerCoords.z, 1.0, 0, 0, 786603)
                    Citizen.Wait(5000)  -- Espera enquanto o paramédico caminha até o jogador
                    -- Reviver o jogador aqui, caso o jogador esteja morto
                    TriggerEvent('knb:samuRevive', playerPed)
                    break
                end
            end
        end)
    else
        print("^1DEBUG: Posição de spawn inválida!")
    end
end








function DeleteVeh(vehicle, driver)
    SetEntityAsMissionEntity(vehicle, false, false)                                            			--Car Removal
    DeleteEntity(vehicle)
    SetEntityAsMissionEntity(driver, false, false)                                              		--Driver Removal
    DeleteEntity(driver)
    RemoveBlip(samuBlip)                                                                    			--Blip Removal
end

function GoToTarget(x, y, z, vehicle, driver, vehhash, target)
    TaskVehicleDriveToCoord(driver, vehicle, x, y, z, 17.0, 0, vehhash, 786603, 1, true)
    ShowAdvancedNotification("CHAR_CALL911", "~b~SAMU", "~r~Emergência", "Uma equipe está sendo enviada para sua localização.")
    enroute = true
    while enroute do
        Citizen.Wait(500)
        distanceToTarget = GetDistanceBetweenCoords(GetEntityCoords(target), GetEntityCoords(vehicle).x, GetEntityCoords(vehicle).y, GetEntityCoords(vehicle).z, true)
        if distanceToTarget < 20 then
            ShowAdvancedNotification("CHAR_DR_FRIEDLANDER", "~b~SAMU", "~r~Doutor Rogério", "Já estou chegando.")
            TaskVehicleTempAction(driver, vehicle, 27, 6000)
            GoToTargetWalking(target, vehicle, driver)
        end
    end
end

function GoToTargetWalking(target, vehicle, driver)
    while enroute do
        Citizen.Wait(500)
        deadplayer = GetEntityCoords(player)
        TaskGoToCoordAnyMeans(driver, deadplayer, 2.0, 0, 0, 786603, 0xbf800000)
        distanceToTarget = GetDistanceBetweenCoords(deadplayer, GetEntityCoords(driver).x, GetEntityCoords(driver).y, GetEntityCoords(driver).z, true)
        norunrange = false 
        if distanceToTarget <= 10 and not norunrange then -- stops ai from sprinting when close
            TaskGoToCoordAnyMeans(driver, deadplayer, 1.0, 0, 0, 786603, 0xbf800000)
            norunrange = true
        end
        if distanceToTarget <= 2 then
            TaskTurnPedToFaceCoord(driver, GetEntityCoords(target), -1)
            ShowAdvancedNotification("CHAR_DR_FRIEDLANDER", "~b~SAMU", "~r~Doutor Rogério", "O que aconteceu? Vou tentar reanimar você.")
            RequestAnimDict("mini@cpr@char_a@cpr_str")
			while not HasAnimDictLoaded("mini@cpr@char_a@cpr_str") do
			    Citizen.Wait(1000)
			end
			TaskPlayAnim(driver,"mini@cpr@char_a@cpr_str","cpr_pumpchest",1.0, 1.0, -1, 9, 1.0, 0, 0, 0)
            Citizen.Wait(10000)
            ClearPedTasks(driver)
            Reviver(vehicle, driver)
            ShowAdvancedNotification("CHAR_DR_FRIEDLANDER", "~b~SAMU", "~r~Doutor Rogério", "Tudo certo! Já vou indo.")
        end
        
    end
end

function Reviver(vehicle, driver)
	enroute = false
    norunrange = false
	FreezeEntityPosition(driver, false)
    Citizen.Wait(500)
    vRP.killGod()
	vRP.setHealth(150)
    TriggerEvent("Notify","sucesso","Reanimação efetuada com sucesso.")
    Citizen.Wait(5000)
    LeaveTarget(vehicle, driver)
end

function LeaveTarget(vehicle, driver)
	TaskVehicleDriveWander(driver, vehicle, 17.0, drivingStyle)
	SetEntityAsNoLongerNeeded(vehicle)
	SetPedAsNoLongerNeeded(driver)
	RemoveBlip(samuBlip)
	samuVeh = nil
	samuPed = nil
	targetVeh = nil
end

function GetTargetVehicle(player, dir)
    local ped = PlayerPedId() -- Pega o jogador corretamente
    local pedCoords = GetEntityCoords(ped) -- Pega a posição do jogador
    
    print("^2DEBUG: Posição do jogador dentro de GetTargetVehicle:", pedCoords) 

    if DoesEntityExist(ped) then
        print("^2DEBUG: Retornando o próprio jogador como alvo!")
        return ped -- Retorna o jogador como "alvo"
    else
        print("^1DEBUG: Nenhum alvo encontrado!")
        TriggerEvent("Notify", "aviso", "Você não pode utilizar este comando agora.")
        return nil
    end
end



function ShowAdvancedNotification(icon, sender, title, text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    SetNotificationMessage(icon, icon, true, 4, sender, title, text)
    DrawNotification(false, true)
end

function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

