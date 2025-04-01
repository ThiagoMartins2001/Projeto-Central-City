-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("crafting",Creative)
vSERVER = Tunnel.getInterface("crafting")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CRAFTING
-----------------------------------------------------------------------------------------------------------------------------------------
local Crafting = {
	{ vec3(-355.75,-1555.85,25.17),"Lixeiro" },
	{ vec3(287.36,2843.6,44.7),"Lixeiro" },
	{ vec3(-413.68,6171.99,31.48),"Lixeiro" },
	{ vec3(2741.5,3464.06,55.69),"Mercado" },
	{ vec3(-29.57,-1655.14,29.49),"Mercado" },
	{ vec3(1084.82,-2002.8,31.37),"Foundry" },

	{ vec3(-1194.93,-897.56,13.88),"BurgerShot" },
	--{ vec3(-1196.1,-900.14,13.88),"BurgerShot2" },
	{ vec3(-1190.5,-898.53,13.88),"BurgerShot3" },
	--{ vec3(-1200.55,-896.63,13.88),"BurgerShot4" },

	{ vec3(1591.96,6456.23,26.01),"Avalanches" },
	{ vec3(1588.87,6457.95,26.87),"Avalanches2" },
	--{ vec3(1595.05,6455.10,26.86),"Avalanches3" },
	--[[ { vec3(-517.92,-702.47,33.18),"CluckinBell4" }, ]]

	{ vec3(358.44,201.50,103.00),"Cinema" },
	{ vec3(358.53,204.83,103.00),"Cinema2" },
	{ vec3(353.12,204.30,103.00),"Cinema3" },
	{ vec3(350.49,198.30,103.00),"Cinema4" },
	{ vec3(353.60,196.99,103.00),"Cinema5" },

	{ vec3(-590.84,-1063.04,23.30),"MrAlphaca1"},
	{ vec3(-586.61,-1061.86,23.25),"MrAlphaca2"},

	{ vec3(-1237.99,-268.09,37.77),"KoiSushi"},
	{ vec3(-1239.41,-268.86,37.77),"KoiSushi2"},
	{ vec3(-1238.10,-266.95,37.77),"KoiSushi3"},
	{ vec3(-1239.26,-267.53,37.77),"KoiSushi4"},
    



    { vec3(-1535.41,-401.97,35.63),"DigitalDen"},
	

	{ vec3(559.18,-171.81,55.30),"Mechanic" }, --Oficina AutoExotic
	{ vec3(114.38,6629.95,32.72),"Mechanic"}, --Oficina CentralCustoms
	

	{ vec3(-1871.2,2061.9,136.97),"Bratva" }, --Mansão vinhedo | armas
	{ vec3(1406.52,1138.00,110.57),"Mafia"}, --Mansão fazenda | armas
	{ vec3(-1518.82,125.19,49.82),"Playboy"}, --Mansão Playboy | Munição
	{ vec3(412.64,3.40,86.11),"Callisto"}, --Hotel Callisto | Munição
	{ vec3(84.26,-1964.18,18.04),"Ballas"}, --Ballas | Contrabando
	{ vec3(331.21,-2013.00,22.93),"Vagos"}, --Vagos | Contrabando
	{ vec3(-135.40,-1609.17,35.87),"Grove"}, -- Grove | Contrabando
	{ vec3(1272.32,-1711.21,55.56),"Money"}, --Lavagem Pública
	{ vec3(94.48,-1289.82,30.27),"Money2"}, --Vanilla
	{ vec3(-1368.04,-625.94,31.50),"Money3"}, --Bahamas
	{ vec3(-228.53,-1327.85,32.09),"Bennys"}, --Bennys
	{ vec3(85.84,6518.34,32.39), "DKing"}, --DKing
	{ vec3(1127.73,-2034.84,32.06),"Ilegal2"}, --Crafting de peças de arma 
	{ vec3(2845.79,2688.80,103.21),"Fabricadebico"}, -- Fabricadebico | Drogas
	{ vec3(2308.79,2488.97,61.32),"RepublicaTcheca"}, --Favela RepublicaTcheca | Drogas
	{ vec3(2134.88,3954.95,36.31),"TropadaBelgica"}, --Favela TTropadaBelgica | Drogas

	{ vec3(949.76,-1550.81,30.75),"Lester"}, --Craft ilegal livre (Mesas de droga)
	{ vec3(600.56,-3252.6,6.07), "Ilegal4"}, --Craft ilegal livre (Itens de contrabando)
	{ vec3(-1164.54,-2022.29,13.16), "Ilegal3"}, --Craft ilegal livre (Munição)
	{ vec3(-458.19,-2266.19,8.52), "Ilegal2"}, --Crafting ilegal livre (Armas)
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSTART
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	for Number,v in pairs(Crafting) do
		exports["target"]:AddCircleZone("Crafts:"..Number,vec3(v[1][1],v[1][2],v[1][3]),0.35,{
			name = "Crafts:"..Number,
		},{
			shop = v[2],
			Distance = 4.75,
			options = {
				{
					event = "crafting:Open",
					label = "Abrir Craft",
					tunnel = "shop"
				}
			}
		})
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("inventory:Close")
AddEventHandler("inventory:Close",function()
	SetNuiFocus(false,false)
	SetCursorLocation(0.5,0.5)
	SendNUIMessage({ Action = "Close" })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("close",function(Data,Callback)
	SendNUIMessage({ Action = "Close" })
	SetNuiFocus(false,false)
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUEST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Request",function(Data,Callback)
	local Crafting,Inventory,invPeso,invMaxpeso,craftSlots = vSERVER.Request(Data["name"])
	if Crafting then
		Callback({ Crafting = Crafting, Inventory = Inventory, invPeso = invPeso, invMaxpeso = invMaxpeso, craftSlots = craftSlots })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUESTBUY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Trade",function(Data,Callback)
	PlaySoundFrontend(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", 1)
	if not vSERVER.Trade(Data["name"],Data["item"],Data["amount"],Data["slot"],Data["target"]) then
		SetNuiFocus(false,false)
		SetCursorLocation(0.5,0.5)
		SendNUIMessage({ Action = "Close" })
	end
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Update",function(Data,Callback)
	PlaySoundFrontend(-1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", 1)
	vSERVER.Update(Data["slot"],Data["target"],Data["amount"])
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("crafting:Update")
AddEventHandler("crafting:Update",function(Action)
	SendNUIMessage({ Action = Action })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CRAFT:OPEN
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("crafting:Open",function(Name)
	if not exports["hud"]:Wanted() and vSERVER.Permission(Name) then
		SetNuiFocus(true,true)
		SendNUIMessage({ Action = "Open", name = Name, type = List[Name]["Mode"] })
	end
end)