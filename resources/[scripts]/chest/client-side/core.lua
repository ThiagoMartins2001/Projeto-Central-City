-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("chest")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHESTS
-----------------------------------------------------------------------------------------------------------------------------------------
local Chests = {
	{ ["Name"] = "Policia", ["Coords"] = vec3(-318.41,-271.29,32.07), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Police", ["Logs"] = true, ["Mode"] = "2" }, --Police

	{ ["Name"] = "Prf", ["Coords"] = vec3(1516.76,789.26,78.43), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Prf", ["Logs"] = true, ["Mode"] = "2" }, --PRF 1
	{ ["Name"] = "Prf", ["Coords"] = vec3(2920.73,4179.05,52.50), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Prf", ["Logs"] = true, ["Mode"] = "2" }, --PRF 2
	{ ["Name"] = "Prf", ["Coords"] = vec3(-271.00,6056.32,33.05), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Prf", ["Logs"] = true, ["Mode"] = "2" }, --PRF 3
	{ ["Name"] = "Prf", ["Coords"] = vec3(-3022.03,386.69,16.64), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Prf", ["Logs"] = true, ["Mode"] = "2" }, --PRF 4

	{ ["Name"] = "Paramedic", ["Coords"] = vec3(307.80,-595.57,50.68), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Paramedic", ["Logs"] = true, ["Mode"] = "2" }, -- Geral
	{ ["Name"] = "Paramedic-2", ["Coords"] = vec3(341.94,-583.00,48.20), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Paramedic", ["Logs"] = true, ["Mode"] = "2" }, -- Pessoal
	
	{ ["Name"] = "MrAlphaca", ["Coords"] = vec3(-590.15,-1067.94,22.34), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "MrAlphaca", ["Logs"] = true, ["Mode"] = "2" },
	{ ["Name"] = "Avalanches", ["Coords"] = vec3(1585.78,6459.15,26.01), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Avalanches", ["Logs"] = true, ["Mode"] = "2" },

	{ ["Name"] = "KoiSushi", ["Coords"] = vec3(-1241.12,-268.32,37.77), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "KoiShui", ["Logs"] = true, ["Mode"] = "2" },

	{ ["Name"] = "DigitalDen", ["Coords"] = vec3(-1532.87,-396.64,35.63), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "DigitalDen", ["Logs"] = true, ["Mode"] = "2" },

	{ ["Name"] = "AutoExotic", ["Coords"] = vec3(560.19,-181.78,54.51), ["Weight"] = 10000, ["Slots"] = 2000, ["Permission"] = "AutoExotic", ["Logs"] = true, ["Mode"] = "2" }, --Oficina AutoExotic
	{ ["Name"] = "CentralCustoms", ["Coords"] = vec3(109.10,6631.71,31.79), ["Weight"] = 10000, ["Slots"] = 2000, ["Permission"] = "CentralCustoms", ["Logs"] = true, ["Mode"] = "2" }, --Oficina CentralCustoms

	{ ["Name"] = "Ballas", ["Coords"] = vec3(78.69,-1962.73,18.04), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Ballas", ["Logs"] = true, ["Mode"] = "2" }, --Gueto Ballas
	{ ["Name"] = "Vagos", ["Coords"] = vec3(345.00,-2021.85,22.39), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Vagos", ["Logs"] = true, ["Mode"] = "2" }, --Gueto Vagos
	{ ["Name"] = "Grove", ["Coords"] = vec3(-157.76,-1603.45,35.04), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Grove", ["Logs"] = true, ["Mode"] = "2" }, --Gueto Grove

	{ ["Name"] = "Mafia", ["Coords"] = vec3(1391.52,1158.85,114.33), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Mafia", ["Logs"] = true, ["Mode"] = "2" }, --Mansão Fazenda
	{ ["Name"] = "Bratva", ["Coords"] = vec3(-1886.42,2062.3,140.98), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Bratva", ["Logs"] = true, ["Mode"] = "2" }, --Hotel Vinhedo

	{ ["Name"] = "Playboy", ["Coords"] = vec3(-1521.11,121.44,48.65), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Playboy", ["Logs"] = true, ["Mode"] = "2" }, --Playboy
	{ ["Name"] = "Callisto", ["Coords"] = vec3(388.21,-10.10,86.68), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Callisto", ["Logs"] = true, ["Mode"] = "2" }, --Callisto

	{ ["Name"] = "Vanilla", ["Coords"] = vec3(89.63,-1291.16,29.79), ["Weight"] = 10000, ["Slots"] = 2000, ["Permission"] = "Vanilla", ["Logs"] = true, ["Mode"] = "2" }, --Vanilla
	{ ["Name"] = "Bahamas", ["Coords"] = vec3(-1369.30,-624.37,30.32), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Bahamas", ["Logs"] = true, ["Mode"] = "2" }, --Bahamas

	{ ["Name"] = "Bennys", ["Coords"] = vec3(-196.65,-1314.67,31.09), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Bennys", ["Logs"] = true, ["Mode"] = "2" }, --Bennys
	{ ["Name"] = "DKing", ["Coords"] = vec3(67.86,6517.36,36.06), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "DKing", ["Logs"] = true, ["Mode"] = "2" }, --DKing

	{ ["Name"] = "Cinema", ["Coords"] = vec3(343.74,193.13,98.65), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Cinema", ["Logs"] = true, ["Mode"] = "2" }, --Cinema
	{ ["Name"] = "Cinema-2", ["Coords"] = vec3(348.67,206.63,103.00), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Cinema", ["Logs"] = true, ["Mode"] = "2" }, --Cinema

	-- Favelas
	{ ["Name"] = "RepublicaTcheca", ["Coords"] = vec3(2305.19,2503.80,49.92), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "RepublicaTcheca", ["Logs"] = true, ["Mode"] = "2" }, --Franca
	{ ["Name"] = "Fabricadebico", ["Coords"] = vec3(2847.67,2686.03,102.11), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Fabricadebico", ["Logs"] = true, ["Mode"] = "2" }, --Pcc
	{ ["Name"] = "TropadaBelgica", ["Coords"] = vec3(2143.71,3918.44,36.38), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "TropadaBelgica", ["Logs"] = true, ["Mode"] = "2" }, --TCP

	--Mansoes
	{ ["Name"] = "Mansao01", ["Coords"] = vec3(-265.00,-726.88,125.47), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Mansao01", ["Logs"] = true, ["Mode"] = "2" }, --Mansao01 cobertura
	{ ["Name"] = "Mansao02", ["Coords"] = vec3(1252.76,-868.42,79.11), ["Weight"] = 2000, ["Slots"] = 2000, ["Permission"] = "Mansao02", ["Logs"] = true, ["Mode"] = "2" }, --Mansao02 barragem
    
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- LABELS
-----------------------------------------------------------------------------------------------------------------------------------------
local Labels = {
	["1"] = {
		{
			event = "chest:Open",
			label = "Abrir",
			tunnel = "shop",
			service = "Normal"
		}
	},
	["2"] = {
		{
			event = "chest:Open",
			label = "Abrir",
			tunnel = "shop",
			service = "Normal"
		}
	},
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADINIT
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	for Name,v in pairs(Chests) do
		exports["target"]:AddCircleZone("Chest:"..Name,v["Coords"],1.0,{
			name = "Chest:"..Name,
			useZ = true
		},{
			Distance = 0.75,
			shop = v["Name"],
			options = Labels[v["Mode"]]
		})
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST:OPEN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chest:Open")
AddEventHandler("chest:Open",function(Name,Mode)
	if GetEntityHealth(PlayerPedId()) > 100 then
		if vSERVER.Permissions(Name,Mode) then
			if Mode == "Tray" then
				vRP.playAnim(true,{ "pickup_object", "putdown_low" }, false)
			else
				if Mode ~= "Tray" and Mode ~= "Item" and Mode ~= "Glove" and Mode ~= "Fridge" and Mode ~= "Warehouse" then
					vRP.playAnim(false,{"amb@prop_human_bum_bin@base","base"},true)
					TriggerEvent("sounds:Private","chest",0.35)
				end
			end
			SetNuiFocus(true,true)
			SendNUIMessage({ Action = "Open", Mode = Mode })
		else
			vRP.playAnim(true,{ "pickup_object", "putdown_low" }, false)
			TriggerEvent("Notify","amarelo","Trancado.",3000)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST:OPENTRUNK
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("chest:openTrunk",function(Selected,te)
	if vSERVER.Permissions(Selected[1]..":"..Selected[2],"Trunk") and GetEntityHealth(PlayerPedId()) > 100 then

		Vehicle = Selected[3]

		TaskTurnPedToFaceEntity(PlayerPedId(), Selected[3], 1.0);
        --[[ while 20 < math.abs(math.floor(GetEntityHeading(PlayerPedId())) - math.floor(GetEntityHeading(Selected[3]))) do
            Citizen.Wait(0)
        end ]]

		FreezeEntityPosition(PlayerPedId(),true)
		SetEntityCollision(PlayerPedId(),false)
		

		vRP.playAnim(true,{ "pickup_object", "putdown_low" }, false)
		Wait(1000)
		TriggerServerEvent("player:TrunkDoor",VehToNet(Selected[3]),"open")
		Wait(1000)
		vRP.playAnim(false,{"amb@prop_human_bum_bin@base","base"},true)
		
		SetNuiFocus(true,true)
		SendNUIMessage({ Action = "Open" })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHESTCLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Close",function(Data,Callback)
	SendNUIMessage({ Action = "Close" })
	SetNuiFocus(false,false)
	if Vehicle then
		--[[ if GetVehicleClass(Vehicle) == 0 and GetVehicleClass(Vehicle) == 1 and GetVehicleClass(Vehicle) == 3 then
			vRP.playAnim(true, { "anim@heists@fleeca_bank@scope_out@return_case", "trevor_action" }, true)
			Wait(1000)
		end ]]
		vRP.playAnim(true, { "anim@heists@fleeca_bank@scope_out@return_case", "trevor_action" }, false)
		TriggerServerEvent("player:TrunkDoor",VehToNet(Vehicle),"close")
		Wait(1000)
		SetEntityCollision(PlayerPedId(),true)
		FreezeEntityPosition(PlayerPedId(),false)
		Vehicle = nil
	end
	vRP.removeObjects()
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TAKE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Take",function(Data,Callback)
	if MumbleIsConnected() then
		PlaySoundFrontend(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", 1)
		vSERVER.Take(Data["item"],Data["slot"],Data["amount"],Data["target"])
	end
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- STORE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Store",function(Data,Callback)
	if MumbleIsConnected() and not exports["hud"]:Wanted() then
		PlaySoundFrontend(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", 1)
		vSERVER.Store(Data["item"],Data["slot"],Data["amount"],Data["target"])
	end
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Update",function(Data,Callback)
	if MumbleIsConnected() then
		PlaySoundFrontend(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", 1)
		vSERVER.Update(Data["slot"],Data["target"],Data["amount"])
	end
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Chest",function(Data,Callback)
	local Inventory,Chest,InvPeso,InvMaxPeso,ChestPeso,ChestMaxPeso,Slots = vSERVER.Chest()
	if Inventory then
		Callback({ Inventory = Inventory, Chest = Chest, invPeso = InvPeso, invMaxpeso = InvMaxPeso, chestPeso = ChestPeso, chestMaxpeso = ChestMaxPeso, Slots = Slots })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST:UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chest:Update")
AddEventHandler("chest:Update",function(Action,invPeso,invMaxpeso,chestPeso,chestMaxpeso)
	SendNUIMessage({ Action = Action, invPeso = invPeso, invMaxpeso = invMaxpeso, chestPeso = chestPeso, chestMaxpeso = chestMaxpeso })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("inventory:Close")
AddEventHandler("inventory:Close",function()
	SetNuiFocus(false,false)
	SetCursorLocation(0.5,0.5)
	SendNUIMessage({ Action = "Close" })
	if Vehicle then
		--[[ if GetVehicleClass(Vehicle) == 0 and GetVehicleClass(Vehicle) == 1 and GetVehicleClass(Vehicle) == 3 then
			vRP.playAnim(true, { "anim@heists@fleeca_bank@scope_out@return_case", "trevor_action" }, true)
			Wait(1000)
		end ]]
		vRP.playAnim(true, { "anim@heists@fleeca_bank@scope_out@return_case", "trevor_action" }, true)
		TriggerServerEvent("player:TrunkDoor",VehToNet(Vehicle),"close")
		Wait(1000)
		SetEntityCollision(PlayerPedId(),true)
		FreezeEntityPosition(PlayerPedId(),false)
		Vehicle = nil
		vRP.removeObjects()
	end
end)