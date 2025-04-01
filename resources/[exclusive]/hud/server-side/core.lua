-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPC = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("hud",Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
GlobalState["Work"] = 0
GlobalState["Hours"] = 12
GlobalState["Minutes"] = 0
GlobalState["Weather"] = "EXTRASUNNY"
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSYNC
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		GlobalState["Work"] = GlobalState["Work"] + 1
		GlobalState["Minutes"] = GlobalState["Minutes"] + 1

		if GlobalState["Minutes"] >= 60 then
			GlobalState["Hours"] = GlobalState["Hours"] + 1
			GlobalState["Minutes"] = 0

			if GlobalState["Hours"] >= 24 then
				GlobalState["Hours"] = 0
			end
		end

		Wait(10000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TIMESET
-----------------------------------------------------------------------------------------------------------------------------------------
-- Tradução de climas para facilitar o uso
local climaTraduzido = {
    ["ensolarado"] = "EXTRASUNNY",
    ["limpo"] = "CLEAR",
    ["nublado"] = "CLOUDS",
    ["poluido"] = "SMOG",
    ["neblina"] = "FOGGY",
    ["encoberto"] = "OVERCAST",
    ["chuva"] = "RAIN",
    ["tempestade"] = "THUNDER",
    ["limpando"] = "CLEARING",
    ["neve"] = "SNOW",
    ["nevasca"] = "BLIZZARD",
    ["neveleve"] = "SNOWLIGHT",
    ["natal"] = "XMAS"
}

-- Comando para mudar hora, clima e blackout
RegisterCommand("clima", function(source, Message)
    local Passport = vRP.Passport(source)
    if Passport then
        if vRP.HasGroup(Passport, "Admin") then
            -- Caso apenas o clima seja fornecido
            if Message[1] and not tonumber(Message[1]) then
                local climaInput = Message[1]:lower()
                local clima = climaTraduzido[climaInput] or climaInput:upper()
                GlobalState["Weather"] = clima

                -- Mensagem de sucesso para alteração do clima
                TriggerClientEvent("chat:addMessage", source, {
                    args = { "Sistema", "Clima alterado para: " .. climaInput }
                })

            -- Caso hora, minuto e opcionalmente clima sejam fornecidos
            elseif Message[1] and Message[2] then
                GlobalState["Hours"] = tonumber(Message[1])
                GlobalState["Minutes"] = tonumber(Message[2])

                -- Alteração de clima, se fornecido
                if Message[3] then
                    local climaInput = Message[3]:lower()
                    local clima = climaTraduzido[climaInput] or climaInput:upper()
                    GlobalState["Weather"] = clima
                end

                -- Mensagem de sucesso para alteração de horário
                TriggerClientEvent("chat:addMessage", source, {
                    args = { "Sistema", "Horário alterado para: " .. Message[1] .. ":" .. Message[2] }
                })

            -- Caso nada seja passado ou o formato esteja incorreto
            else
                TriggerClientEvent("chat:addMessage", source, {
                    args = { "Sistema", "Uso: /clima [hora minuto clima] ou /clima [clima]" }
                })
            end

            -- Definindo blackout (opcional)
            if Message[4] then
                GlobalState["Blackout"] = tonumber(Message[4])
            end
        else
            TriggerClientEvent("chat:addMessage", source, {
                args = { "Sistema", "Você não tem permissão para usar este comando." }
            })
        end
    end
end)

