local capaceteModelo = 242 -- ID do capacete (prop)
local idCareca = 1 -- ID do cabelo careca
local capaceteColocado = false
local cabeloOriginal = nil
local texturaCabelo = nil

-- Função para verificar se o jogador é da Polícia ou PRF
function IsPlayerPoliceOrPRF()
    local playerId = PlayerPedId()

    -- Verifica se o jogador tem a permissão de policial ou PRF
    local user_id = vRP.Passport(playerId) -- Obtém o ID do jogador no vRP
    local Work = vRP.vRP.GetUserType(user_id) -- Obtém o trabalho do jogador

    if Work == "Police" or Work == "Prf" then
        return true
    end

    return false
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)

        local playerPed = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(playerPed, false)

        -- Verifica se está em qualquer moto e se o jogador é da Polícia ou PRF
        if vehicle ~= 0 and IsThisModelABike(GetEntityModel(vehicle)) and IsPlayerPoliceOrPRF() then
            -- Se ainda não colocou o capacete
            if not capaceteColocado then
                cabeloOriginal = GetPedDrawableVariation(playerPed, 2) -- Slot do cabelo
                texturaCabelo = GetPedTextureVariation(playerPed, 2)

                -- Remove o cabelo (careca)
                SetPedComponentVariation(playerPed, 2, idCareca, 0, 0)

                -- Coloca o capacete no prop slot 0
                SetPedPropIndex(playerPed, 0, capaceteModelo, 0, true)

                capaceteColocado = true
            end
        else
            -- Se saiu da moto e estava com capacete colocado
            if capaceteColocado then
                Citizen.Wait(500)

                -- Restaura o cabelo original
                if cabeloOriginal ~= nil then
                    SetPedComponentVariation(playerPed, 2, cabeloOriginal, texturaCabelo, 0)
                end

                -- Remove capacete
                ClearPedProp(playerPed, 0)
                capaceteColocado = false
            end
        end
    end
end)
