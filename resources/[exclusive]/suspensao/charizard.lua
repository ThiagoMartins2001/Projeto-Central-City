local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
MTserver = Tunnel.getInterface("suspensao")
Mts = {}
Tunnel.bindInterface("suspensao", Mts)

local maxSuspHeight = 0.12  -- Altura máxima da suspensão
local minSuspHeight = -0.1  -- Altura mínima da suspensão
local step = 0.01  -- Passo para cada ajuste da suspensão

local NUi = false

function playSound(soundFile)
    SendNUIMessage({
        transactionType = "playSound",
        transactionFile = soundFile,
    })
end

function playSuspensionSound(isRaising)
    local sound = isRaising and "subindo" or "descendo"
    TriggerEvent('vrp_sound:source', sound, 0.3)  -- Volume pode ser ajustado conforme necessário
end

function adjustSuspension(vehicle, targetHeight)
    local currentHeight = GetVehicleSuspensionHeight(vehicle)
    local isRaising = targetHeight > currentHeight

    -- Verifica se o ajuste é necessário antes de tocar o som
    if (isRaising and currentHeight < maxSuspHeight) or (not isRaising and currentHeight > minSuspHeight) then
        playSuspensionSound(isRaising)
    end

    while math.abs(currentHeight - targetHeight) > step do
        Citizen.Wait(100)  -- Tempo entre cada passo aumentado para 100ms
        if currentHeight < targetHeight then
            currentHeight = currentHeight + step
            if currentHeight > targetHeight then
                currentHeight = targetHeight
            end
        else
            currentHeight = currentHeight - step
            if currentHeight < targetHeight then
                currentHeight = targetHeight
            end
        end
        TriggerServerEvent("trywheel", VehToNet(vehicle), currentHeight)
    end
end



Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(ped, false)
        local waitTime = 2000

        if vehicle > 0 then
            waitTime = 1
        end

        Citizen.Wait(waitTime)
    end
end)

-- RegisterCommand("susp", function(source, args)
--     local ped = PlayerPedId()
--     local vehicle = GetVehiclePedIsIn(ped, false)
--     if IsEntityAVehicle(vehicle) then
--         SetNuiFocus(true, true)
--         SendNUIMessage({ abrir = true })
--     else
--         TriggerServerEvent("Notify", source, "negado", "Você não está em um veículo.", 5000)
--     end
-- end)
RegisterCommand("susp", function(source, args)
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    if IsEntityAVehicle(vehicle) then
        TriggerEvent("openSuspMenu", source)
    else
        TriggerEvent("Notify", "negado", "Você não está em um veículo.", 5000)
    end
end)

RegisterNetEvent("openSuspMenu")
AddEventHandler("openSuspMenu", function()
    SetNuiFocus(true, true)
    SendNUIMessage({ abrir = true })
end)

RegisterNUICallback("Close", function()
    SetNuiFocus(false, false)
    SetCursorLocation(0.5, 0.5)
    SendNUIMessage({ action = true })
end)

RegisterNUICallback("botaos", function()
    TriggerEvent("susp+1")
end)

RegisterNUICallback("botaod", function()
    TriggerEvent("susp-1")
end)

RegisterNUICallback("botaosm", function()
    TriggerEvent("susps1")
end)

RegisterNUICallback("botaodm", function()
    TriggerEvent("suspd1")
end)

-- Função para descer a suspensão até o mínimo definido
AddEventHandler("suspd1", function()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    if IsEntityAVehicle(vehicle) then
        local targetHeight = minSuspHeight
        adjustSuspension(vehicle, targetHeight)
        
        -- Executar som duas vezes seguidas
        TriggerEvent('vrp_sound:source', "descendo", 0.3)
        Citizen.Wait(0) -- Sem intervalo
        TriggerEvent('vrp_sound:source', "descendo", 0.3)
    else
        TriggerServerEvent("Notify", source, "negado", "Você não está em um veículo.", 5000)
    end
end)


-- Função para subir a suspensão até o máximo definido
AddEventHandler("susps1", function()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    if IsEntityAVehicle(vehicle) then
        local targetHeight = maxSuspHeight
        adjustSuspension(vehicle, targetHeight)
    else
        TriggerServerEvent("Notify", source, "negado", "Você não está em um veículo.", 5000)
    end
end)
-- Ajuste de suspensão em passos pequenos com limite máximo e mínimo
AddEventHandler("susp+1", function()
    local ped = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(ped)
    if IsEntityAVehicle(vehicle) then
        local lSusp = GetVehicleSuspensionHeight(vehicle)
        local result = lSusp - step
        if result >= minSuspHeight then
            TriggerServerEvent("trywheel", VehToNet(vehicle), result)
            -- Toca o som de descida somente se a suspensão não estiver no mínimo
            if lSusp > minSuspHeight then
                local sound = "descendo"
                TriggerEvent('vrp_sound:source', sound, 0.3)
            end
        else
            TriggerServerEvent("Notify", source, "negado", "A suspensão já está no limite mínimo.", 5000)
        end
    else
        TriggerServerEvent("Notify", source, "negado", "Você não está em um veículo.", 5000)
    end
end)


AddEventHandler("susp-1", function()
    local ped = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(ped)
    if IsEntityAVehicle(vehicle) then
        local lSusp = GetVehicleSuspensionHeight(vehicle)
        local result = lSusp + step
        if result <= maxSuspHeight then
            TriggerServerEvent("trywheel", VehToNet(vehicle), result)
            -- Toca o som de subida somente se a suspensão não estiver no máximo
            if lSusp < maxSuspHeight then
                local sound = "subindo"
                TriggerEvent('vrp_sound:source', sound, 0.3)
                
                -- Aguarda 0.5 segundos e interrompe o som
                Citizen.Wait(500)
                TriggerEvent('vrp_sound:source', "", 0)  -- Envia um evento para parar o som
            end
        else
            TriggerServerEvent("Notify", source, "negado", "A suspensão já está no limite máximo.", 5000)
        end
    else
        TriggerServerEvent("Notify", source, "negado", "Você não está em um veículo.", 5000)
    end
end)




RegisterNetEvent("syncwheel")
AddEventHandler("syncwheel", function(index, arg)
    if NetworkDoesNetworkIdExist(index) then
        local v = NetToVeh(index)
        if DoesEntityExist(v) and IsEntityAVehicle(v) then
            SetVehicleSuspensionHeight(v, tonumber(arg))
        end
    end
end)

RegisterNetEvent("returncall")
AddEventHandler("returncall", function(e)
    local ped = PlayerPedId()
    local vcar = GetVehiclePedIsIn(ped, false)
    SetVehicleSuspensionHeight(vcar, tonumber(e))
end)

function debig(text, font, x, y, scale, r, g, b, a)
    SetTextFont(font)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextOutline()
    SetTextCentre(1)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end
