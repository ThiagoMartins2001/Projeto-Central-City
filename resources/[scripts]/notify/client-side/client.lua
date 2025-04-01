-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("notify")
-----------------------------------------------------------------------------------------------------------------------------------------
-- NOTIFY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Notify")
AddEventHandler("Notify",function(css,mensagem,timer)
	if css == "verde" then
		css = "sucess"
	end

	if css == "vermelho" then
		css = "alert"
	end

	if css == "hunger" then
		css = "hunger"
	end

	if css == "thirst" then
		css = "thirst"
	end

	if css == "azul" then
		css = "blue"
	end

	if css == "amarelo" then
		css = "important"
	end
	
	if css == "cinema" then
		css = "cinema"
	end

	if css == "emerald" then
		css = "emerald"
	end

	if css == "hasegawa" then
		css = "hasegawa"
	end

	if css == "pokecafe" then
		css = "pokecafe"
	end

	if css == "rexdiner" then
		css = "rexdiner"
	end

	if css == "tokyocafe" then
		css = "tokyocafe"
	end

	if css == "rockit" then
		css = "rockit"
	end

	if css == "bahamas" then
		css = "bahamas"
	end

	if css == "street" then
		css = "street"
	end

	if css == "dps" then
		css = "dps"
	end

	if css == "mecnorte" then
		css = "mecnorte"
	end

	if css == "mecsul" then
		css = "mecsul"
	end

	if css == "hpnorte" then
		css = "hpnorte"
	end

	if css == "hpsul" then
		css = "hpsul"
	end

	if css == "808" then
		css = "808"
	end

	if css == "tropical" then
		css = "tropical"
	end

	if not timer then
		timer = 10000
	end
	SendNUIMessage({ name = "Notify" ,type = css, message = mensagem, time = timer , notify = true })
end)