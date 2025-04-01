-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Street = {}
Tunnel.bindInterface("radio",Street)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RESERVED
-----------------------------------------------------------------------------------------------------------------------------------------
local Reserved = {
	[911] = "Police",
	[912] = "Police",
	[913] = "Police",
	[914] = "Police",
	[915] = "Police",
	[916] = "Police",
	[917] = "Police",
	[918] = "Police",
	[919] = "Police",
	[920] = "Police",
	[112] = "Paramedic",
	[113] = "Paramedic",
	[114] = "Paramedic"
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- FREQUENCY
-----------------------------------------------------------------------------------------------------------------------------------------
function Street.Frequency(Number)
	local source = source
	local Number = parseInt(Number)
	local Passport = vRP.Passport(source)
	if Passport then
		if Reserved[Number] then
			if vRP.HasService(Passport,Reserved[Number]) then
				return true
			else
				TriggerClientEvent("Notify",source,"amarelo","Rádio exclusiva para <b>"..Reserved[Number].."</b>.","Atenção",5000)
			end
		else
			return true
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKRADIO
-----------------------------------------------------------------------------------------------------------------------------------------
function Street.CheckRadio()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Consult = vRP.InventoryItemAmount(Passport,"radio")
		if Consult[1] <= 0 then
			return true
		end
	end

	return false
end