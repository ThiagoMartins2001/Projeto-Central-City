-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp", "lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
local idgens = Tools.newIDGenerator()
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
src = {} -- Definição da variável src
Tunnel.bindInterface("zr_robnpcs", src)
vCLIENT = Tunnel.getInterface("zr_robnpcs")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIÁVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local pedlist = {}
local blips = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- PEDLIST
-----------------------------------------------------------------------------------------------------------------------------------------
function src.checkPedlist(npc)
    if pedlist[npc] then
        return true
    else
        return false
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PRESSEDPEDLIST
-----------------------------------------------------------------------------------------------------------------------------------------
function src.pressedPedlist(npc)
    pedlist[npc] = true
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ItemList
-----------------------------------------------------------------------------------------------------------------------------------------
local ItemList = {
    [1] = { ['index'] = "relogioroubado", ['qtd'] = 1, ['name'] = "Relógio" },
    [2] = { ['index'] = "pulseiraroubada", ['qtd'] = 1, ['name'] = "Pulseira" },
    [3] = { ['index'] = "anelroubado", ['qtd'] = 1, ['name'] = "Anel" },
    [4] = { ['index'] = "colarroubado", ['qtd'] = 1, ['name'] = "Colar" },
    [5] = { ['index'] = "brincoroubado", ['qtd'] = 1, ['name'] = "Brincos" },
    [6] = { ['index'] = "carteiraroubada", ['qtd'] = 1, ['name'] = "Carteira" },
    [7] = { ['index'] = "tabletroubado", ['qtd'] = 1, ['name'] = "Tablet" },
    [8] = { ['index'] = "sapatosroubado", ['qtd'] = 1, ['name'] = "Sapatos" }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- VERIFICAÇÃO DE HORÁRIO
-----------------------------------------------------------------------------------------------------------------------------------------
function src.isAllowedTime()
    local hour = GetClockHours() -- Obtém a hora atual no servidor (0-23)
    print("Hora atual do jogo:", hour) -- Apenas para depuração

    -- Defina os horários permitidos (exemplo: das 19h às 5h)
    if hour >= 19 or hour <= 5 then
        return true
    else
        return false
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- VERIFICAÇÃO DE HORÁRIO (USANDO CLIENTE)
-----------------------------------------------------------------------------------------------------------------------------------------
function src.isAllowedTime(source)
    local hour = vCLIENT.getGameHour(source) -- Solicita o horário ao cliente
    print("Hora atual recebida do cliente:", hour) -- Apenas para depuração

    -- Defina os horários permitidos (exemplo: das 19h às 5h)
    if hour >= 19 or hour <= 5 then
        return true
    else
        return false
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKPAYMENT COM VERIFICAÇÃO DE HORÁRIO
-----------------------------------------------------------------------------------------------------------------------------------------
function src.checkPayment()
    local source = source
    local user_id = vRP.Passport(source)
    local x, y, z = vRPclient.getPosition(source)

    if not src.isAllowedTime(source) then
        TriggerClientEvent("Notify", source, "aviso", "Você só pode assaltar NPCs entre 19h e 5h!", 8000)
        return
    end

    if user_id then
        local Police = vRP.getUsersByPermission("Police") or {}
        print("Policias ativos:", #Police)

        local randlist = math.random(100)

        if randlist >= 40 and randlist <= 89 then
            local randitem = math.random(#itemlist)
            local itemIndex = itemlist[randitem].index
            local itemQtd = itemlist[randitem].qtd
            local itemName = itemlist[randitem].name

            print("Tentando dar item:", itemIndex, itemQtd)

            local success = vRP.giveInventoryItem(user_id, itemIndex, itemQtd)
            print("Item entregue:", success)

            if success then
                TriggerClientEvent("Notify", source, "sucesso", "Você recebeu "..itemQtd.."x <b>"..itemName.."</b>.", 8000)
            else
                TriggerClientEvent("Notify", source, "erro", "Erro ao adicionar o item ao inventário.", 8000)
            end

        elseif randlist >= 10 then
            vRPclient.setStandBY(source, parseInt(80))
            TriggerClientEvent("Notify", source, "aviso", "A polícia foi acionada.", 8000)

            for k, v in pairs(Police) do
                local player = vRP.getUserSource(parseInt(v))
                if player then
                    local ids = idgens:gen()
                    vRPclient.playSound(player, "Oneshot_Final", "MP_MISSION_COUNTDOWN_SOUNDSET")
                    blips[ids] = vRPclient.addBlip(player, x, y, z, 1, 61, "Roubo em andamento", 0.5, true)
                    TriggerClientEvent('chatMessage', player, "911", {64, 64, 255}, "Recebemos uma denúncia de roubo, verifique o ocorrido.")
                    SetTimeout(30000, function()
                        vRPclient.removeBlip(player, blips[ids])
                        idgens:free(ids)
                    end)
                end
            end
        end

        local randmoney = math.random(10, 50)
        if #Police > 1 then
            randmoney = math.random(100, 200)
        end

        vRP.giveMoney(user_id, parseInt(randmoney))
        TriggerClientEvent("Notify", source, "sucesso", "Recebeu <b>"..parseInt(randmoney).." dólares</b>.", 8000)
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SOLICITAR HORÁRIO AO CLIENTE
-----------------------------------------------------------------------------------------------------------------------------------------
function src.isAllowedTime(source)
    local hour = nil

    -- Solicita o horário ao cliente
    local event = promise.new() -- Cria uma promessa para aguardar a resposta do cliente
    TriggerClientEvent("zr_robnpcs:getGameHour", source)

    -- Aguarda até que o cliente responda
    RegisterNetEvent("zr_robnpcs:returnGameHour")
    AddEventHandler("zr_robnpcs:returnGameHour", function(currentHour)
        if source == source then -- Verifica se a resposta é do cliente correto
            event:resolve(currentHour) -- Resolve a promessa com a hora recebida
        end
    end)

    hour = Citizen.Await(event) -- Espera a resposta do cliente

    -- Se a hora não for válida, retorna falso
    if not hour then
        print("Erro ao obter a hora do cliente")
        return false
    end

    print("Hora atual recebida do cliente:", hour) -- Apenas para depuração

    -- Verifica se está no horário permitido
    if hour >= 19 or hour <= 5 then
        return true
    else
        return false
    end
end


-----------------------------------------------------------------------------------------------------------------------------------------
-- PEDRESET
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1200000)
        pedlist = {}
    end
end)
