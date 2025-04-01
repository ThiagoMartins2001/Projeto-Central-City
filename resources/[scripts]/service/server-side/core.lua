-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- CONFIGURAÇÃO DOS WEBHOOKS POR SERVIÇO
-----------------------------------------------------------------------------------------------------------------------------------------
local webhooks = {
    ["Prf"] = "https://discord.com/api/webhooks/1350492021961265282/ArP49qW2GHZdStsDCySzCyhRIDW0hSMCh9xzAy1Krfd7UdRp3J-9Lzzp2POIKbMXwKGw",
    ["Judiciary"] = "WEBHOOK_CLUCKIN",
    ["Policia"] = "https://discord.com/api/webhooks/1349428962765443092/FgwkztfJHk-_w--DlTJEpXnFU9eZ6M00TjqhmOX4lXD329o0Cx-wvKSK8zzmtE_wPD3T",
    ["Paramedic"] = "https://discord.com/api/webhooks/1350322706310103131/ZrBIo94ZeMcvYJJwgIN6bYdAIXoPHcsKX6zwlEOBUXEb6Jl9s_3juBEJXOefGuQaeZ52",
    ["AutoExotic"] = "https://discord.com/api/webhooks/1349467721254830110/VwCvgsGmUMpudZDU8uZWlKwKBp6FG5yuGIw5yG3R20Xw_a41rJ6uGTq7M5MvMiLpgore",
    ["CentralCustoms"] = "WEBHOOK_EASTCUSTOMS",
    ["KoiSushi"] = "https://discord.com/api/webhooks/1350482349984321679/RMIiwYS1cycgbPNFlhbyQIaEqc4k0LPz_JGwUSYrR2-dzqf15vpkVtShj5RrjUDXm4Dd"
}

function SendWebhookMessage(webhook, message)
    if webhook and webhook ~= "" then
        print("[WEBHOOK] Enviando para:", webhook)  -- Debug no console
        print("[WEBHOOK] Mensagem:", message)  -- Debug no console

        PerformHttpRequest(webhook, function(err, text, headers)
            print("[WEBHOOK] Código de resposta:", err)  -- Mostra o código de resposta do Discord
            if err ~= 200 and err ~= 204 then
                print("[WEBHOOK] Erro ao enviar webhook! Código:", err, "Resposta:", text)
            else
                print("[WEBHOOK] Enviado com sucesso!")
            end
        end, "POST", json.encode({content = message}), {["Content-Type"] = "application/json"})
    else
        print("[WEBHOOK] Erro: Webhook inválido!")
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVICE:TOGGLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("service:Toggle")
AddEventHandler("service:Toggle", function(Service)
    local source = source
    local user_id = vRP.Passport(source)  -- Tentar obter o user_id com a função correta

    if user_id then
        vRP.ServiceToggle(source, user_id, Service, false)

        -- Pega a identidade do jogador
        local identity = vRP.Identity(user_id)  -- Função para pegar a identidade do jogador
        if identity then
            local name = identity.name .. " " .. identity.name2

            -- Verifica webhook do serviço
            local webhook = webhooks[Service]
            if webhook then
                local message = "**📢 Alteração de Serviço 📢**\n"
                message = message .. "**👤 Usuário:** " .. name .. " (ID: " .. user_id .. ")\n"
                message = message .. "**🏢 Serviço:** " .. Service .. "\n"
                message = message .. "**⏰ Horário:** <t:" .. os.time() .. ":f>"

                SendWebhookMessage(webhook, message)
            else
                print("[WEBHOOK] Nenhum webhook configurado para:", Service)
            end
        else
            print("[WEBHOOK] Erro ao pegar identidade do jogador!")
        end
    else
        print("[WEBHOOK] Erro ao pegar o user_id do jogador! source: " .. tostring(source))  -- Print para entender melhor o problema
    end
end)
