-----------------------------------------------------------------------------------------------------------------------------------------
-- UTILS
-----------------------------------------------------------------------------------------------------------------------------------------
local function GetDistance(x1, y1, z1, x2, y2, z2)
    local dx, dy, dz = x1 - x2, y1 - y2, z1 - z2
    return math.sqrt(dx * dx + dy * dy + dz * dz)
end

local Electricity = {}
local Explosions = {
    vec3(2108.88, 2334.7, 96.88),
    vec3(2092.43, 2320.5, 96.67)
}

local restoreCoords = {x = 2137.08, y = 1936.64, z = 93.77}
local blackoutCooldown = 28800 -- 8 horas em segundos

-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:ELECTRICITY (APAGÃO)
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("inventory:Electricity")
AddEventHandler("inventory:Electricity", function()
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport or Active[Passport] then return end

    if not Electricity["Blackout"] then
        Electricity["Blackout"] = os.time()
    end

    -- Verifica se já se passaram 8h desde o último blackout
    if os.time() < Electricity["Blackout"] then
        TriggerClientEvent("Notify", source, "amarelo", "O sistema ainda está se recuperando. Tente novamente mais tarde.", 5000, "Atenção")
        return
    end

    -- Notificar policiais próximos
    local Coords = vRP.GetEntityCoords(source)
    local Total = 0
    for groupName, groupData in pairs(vRP.Groups()) do
        if groupData["Type"] == "Police" then
            local Service, Amount = vRP.NumPermission(groupName)
            Total = Total + Amount
            if Service then
                for _, policeSrc in pairs(Service) do
                    async(function()
                        TriggerClientEvent("NotifyPush", policeSrc, {
                            code = 31,
                            title = "Sistema de Eletricidade",
                            x = Coords["x"],
                            y = Coords["y"],
                            z = Coords["z"],
                            time = "Recebido às " .. os.date("%H:%M"),
                            blipColor = 22
                        })
                        vRPC.PlaySound(policeSrc, "Beep_Green", "DLC_HEIST_HACKING_SNAKE_SOUNDS")
                    end)
                end
            end
        end
    end

    -- Verificar e remover 5x C4 do jogador
    if not vRP.ConsultItem(Passport, "c4", 5) then
        TriggerClientEvent("Notify", source, "amarelo", "Você precisa de <b>5x C4</b> para causar o apagão.", 5000, "Atenção")
        return
    end

    if not vRP.TakeItem(Passport, "c4", 5, true) then
        TriggerClientEvent("Notify", source, "amarelo", "Você precisa de <b>5x C4</b> para causar o apagão.", 5000, "Atenção")
        return
    end

    if vMEMORY.Memory(source) then
        Active[Passport] = os.time() + 60 -- 1 minuto para concluir
        Electricity["Blackout"] = os.time() + blackoutCooldown -- 8h de cooldown
        TriggerClientEvent("Progress", source, 60000)
        Player(source)["state"]["Buttons"] = true
        TriggerClientEvent("inventory:Close", source)
        vRPC.AnimActive(source)
        vRPC.playAnim(source, false, { "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer" }, true)

        repeat
            if os.time() >= Active[Passport] then
                Active[Passport] = nil
                vRPC.stopAnim(source, false)
                TriggerEvent("Wanted", source, Passport, 300)
                TriggerClientEvent("player:Residuals", source, "Resíduo de Metal.")
                vRP.UpgradeStress(Passport, math.random(7, 11))
                Player(source)["state"]["Buttons"] = false

                -- Alerta de explosão
                local Players = vRPC.ClosestPeds(source, 10)
                for _, v in pairs(Players) do
                    async(function()
                        TriggerClientEvent("Notify", v, "azul", "As <b>Caixas de Eletricidade</b> próximas a você irão explodir em <b>10 Segundos</b>, mantenha distância.", 10000)
                    end)
                end

                SetTimeout(10000, function()
                    for _, v in pairs(Explosions) do
                        TriggerClientEvent("vRP:AddExplosion", -1, v, 82, 1.0, true, false, true)
                    end

                    GlobalState["Blackout"] = true
                    TriggerClientEvent("Notify", -1, "azul", "Uma forte explosão em nossa central causou um apagão em toda a cidade. Estamos trabalhando para restabelecer os serviços. O sistema de Police está indisponível e todos os procurados foram liberados.", "Central de Eletricidade", 30000)

                    -- Efeitos: faísca, som, choque
                    TriggerClientEvent("Electricity:ShockEffect", -1)
                    TriggerClientEvent("Electricity:PosteFaísca", -1)
                    TriggerClientEvent("Electricity:PlayAmbient", -1)

                    -- Blackout dura 30 minutos
                    SetTimeout(1800000, function()
                        GlobalState["Blackout"] = false
                        TriggerClientEvent("Notify", -1, "verde", "O sistema foi restabelecido, a energia voltou à cidade e os serviços foram normalizados.", "Central de Eletricidade", 30000)
                    end)
                end)
            end
            Wait(100)
        until not Active[Passport]
    else
        Electricity["Blackout"] = os.time() + 60 -- Falha na memória (anticheat?)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:ELECTRICITYRESTORE (RESTAURAR ENERGIA)
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("inventory:ElectricityRestore")
AddEventHandler("inventory:ElectricityRestore", function()
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return end

    local Coords = vRP.GetEntityCoords(source)
    local distance = GetDistance(Coords.x, Coords.y, Coords.z, restoreCoords.x, restoreCoords.y, restoreCoords.z)

    if distance > 10.0 then
        TriggerClientEvent("Notify", source, "amarelo", "Você precisa estar perto da <b>Central de Energia</b> para restabelecer a luz.", 5000, "Atenção")
        return
    end

    if not GlobalState["Blackout"] then
        TriggerClientEvent("Notify", source, "azul", "A energia já está funcionando normalmente.", 5000, "Central de Eletricidade")
        return
    end

    -- Verificar itens para apagão
if not vRP.ConsultItem(Passport, "c4", 5) or not vRP.ConsultItem(Passport, "pliers", 1) then
    TriggerClientEvent("Notify", source, "amarelo", "Você precisa de <b>5x C4</b> e <b>1x Pliers</b> para causar o apagão.", 5000, "Atenção")
    return
end

if not vRP.TakeItem(Passport, "c4", 5, true) or not vRP.TakeItem(Passport, "pliers", 1, true) then
    TriggerClientEvent("Notify", source, "amarelo", "Erro ao processar seus itens. Tente novamente.", 5000, "Erro")
    return
end


    -- Início da animação e trava de ações
    TriggerClientEvent("inventory:Close", source)
    Player(source)["state"]["Buttons"] = true
    vRPC.AnimActive(source)
    vRPC.playAnim(source, false, { "amb@prop_human_movie_bulb@idle_a", "idle_a" }, true)
    TriggerClientEvent("Progress", source, 15000)

    -- Esperar 15 segundos
    Wait(15000)

    -- Parar animação e liberar jogador
    vRPC.stopAnim(source, false)
    Player(source)["state"]["Buttons"] = false

    -- Notificação de sucesso
    TriggerClientEvent("Notify", source, "verde", "Você conseguiu restabelecer a energia da cidade!", 5000, "Sucesso")
    TriggerClientEvent("Notify", -1, "verde", "A energia foi restaurada em toda a cidade e os serviços foram normalizados.", "Central de Eletricidade", 30000)
    GlobalState["Blackout"] = false

    -- Efeito visual e sonoro
    TriggerClientEvent("Electricity:RestoreLights", -1)
end)




-------------------------------------------------------------------------
