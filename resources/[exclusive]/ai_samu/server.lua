local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
emP = {}
Tunnel.bindInterface("ai_samu",emP)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
function emP.checkServices()
	local source = source
	local user_id = vRP.Passport(source)
	if user_id then
		local paramedico = vRP.GetUserType("Paramedic") or {} -- Garante que não seja nil
		if type(paramedico) == "table" and #paramedico == 0 then
			return true
		end
	end
	return false -- Retorna false caso algo dê errado
end


function emP.checkPayment()
	local source = source
	local user_id = vRP.Passport(source)
	if user_id then
		if vRP.PaymentFull(user_id, 500) then
			return true
		end
	end
end
