-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cRP = {}
Tunnel.bindInterface("atm",cRP)
vSERVER = Tunnel.getInterface("atm")
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
local Open = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- BANK:OPENSYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Atm",function(Selected)
	if not Open then
		local bank = vSERVER.Bank()
		if bank then
			Open = true
			if Selected[1] then
				TaskTurnPedToFaceEntity(PlayerPedId(), Selected[1], 1.0);
				Wait(1000)
			end
			vRP.playAnim(false,{"amb@prop_human_atm@male@idle_a","idle_a"},false)
			TriggerEvent("Progress", 1000)
			Wait(1200)
			SetNuiFocus(true,true)
			SendNUIMessage({ action = "open", bank = bank })
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Close",function(Data,Callback)
	Open = false
	SetNuiFocus(false,false)
	SendNUIMessage({ Action = "Hide" })
	vRP.stopAnim()
	Callback(true)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEPOSIT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Deposit",function(Value,Callback)
	Callback(vSERVER.Deposit(Value))
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- WITHDRAW
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Withdraw",function(Value,Callback)
	Callback(vSERVER.Withdraw(Value))
end)