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
Tunnel.bindInterface("player",Creative)
vCLIENT = Tunnel.getInterface("player")
vTASKBAR = Tunnel.getInterface("taskbar")
vSKINSHOP = Tunnel.getInterface("skinshop")
vKEYBOARD = Tunnel.getInterface("keyboard")
vKEYBOARD = Tunnel.getInterface("keyboard")
vPolice = Tunnel.getInterface("Police")
-----------------------------------------------------------------------------------------------------------------------------------------
-- SKIN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("skin",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport and Message[1] and Message[2] then
		if vRP.HasGroup(Passport,"Admin", 1 or 2 or 3 or 4 or 5)  then
			local ClosestPed = vRP.Source(Message[1])
			if ClosestPed then
				vRPC.Skin(ClosestPed,Message[2])
				vRP.SkinCharacter(parseInt(Message[1]),Message[2])
				TriggerEvent("Discord","Admin","**skin**\n\n**Passaporte:** "..Passport.."\n**Para:** "..Message[1].."\n**Skin:** "..Message[2],3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("kill",function(source,Message,History)
	local source = source
	local Passport = vRP.Passport(source)
	if vRP.HasGroup(Passport,"Admin",1 or 2 or 3) then
		if Passport and Message[1] then
			
			vRP.Revive(Message[1],0)
		else
			vRP.Revive(Passport,0)
		end
	end
end)
------------------------------------------------------------------------------------------------------------------------
--------[ COMANDO /FPS ON & OFF ]---------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
RegisterCommand("fps",function(source,Message,History)
	local Passport = vRP.Passport(source)
	if Passport then
		if Message[1] == "on" or Message[1] == "ON" then 
			SetTimecycleModifier("cinema")
			TriggerEvent("Notify","sucesso","Boost de fps  LIGADO! ", 5000)
		elseif Message[1] == "off" or Message[1] == "OFF" then
			SetTimecycleModifier("default")
			TriggerEvent("Notify","sucesso","Boost de fps  LIGADO! ", 5000)
			TriggerEvent("Notify","sucesso","Boost de fps  DESLIGADO! ", 5000)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DUITEXTURES
-----------------------------------------------------------------------------------------------------------------------------------------
local DuiTextures = {
	["MRPD"] = {
		["Distance"] = 1.50,
		["Dimension"] = 1.25,
		["Label"] = "Quadro Branco",
		["Coords"] = vec3(439.47,-985.85,35.99),
		["Link"] = "https://creative-rp.com/Quadro.png",
		["Dict"] = "prop_planning_b1",
		["Texture"] = "prop_base_white_01b",
		["Width"] = 550,
		["Weight"] = 450
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:TEXTURE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Texture")
AddEventHandler("player:Texture",function(Name)
	local source = source
	local Keyboard = vKEYBOARD.Primary(source,"Link:")
	if Keyboard then
		DuiTextures[Name]["Link"] = Keyboard[1]
		TriggerClientEvent("player:DuiUpdate",-1,Name,DuiTextures[Name])
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:STRESS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Stress")
AddEventHandler("player:Stress",function(Number)
	local source = source
	local Number = parseInt(Number)
	local Passport = vRP.Passport(source)
	if Passport then
		vRP.DowngradeStress(Passport,Number)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ME
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("me",function(source,Message,History)
	local Passport = vRP.Passport(source)
	if Passport and Message[1] then
		local message = string.sub(History:sub(4),1,100)

		local Players = vRPC.Players(source)
		for _,v in pairs(Players) do
			async(function()
				TriggerClientEvent("showme:pressMe",v,source,message,10)
			end)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- E
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("e",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport and vRP.GetHealth(source) > 100 then
		if Message[2] == "friend" then
			local ClosestPed = vRPC.ClosestPed(source,2)
			if ClosestPed then
				if vRP.GetHealth(ClosestPed) > 100 and not Player(ClosestPed)["state"]["Handcuff"] then
					local Identity = vRP.Identity(Passport)
					if vRP.Request(ClosestPed,"Pergunta","Pedido de <b>"..Identity["name"].."</b> da animação <b>"..Message[1].."</b>?","Sim, iniciar animação","Não, sai fora") then
						TriggerClientEvent("emotes",ClosestPed,Message[1])
						TriggerClientEvent("emotes",source,Message[1])
					end
				end
			end
		else
			TriggerClientEvent("emotes",source,Message[1])
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- E2
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("e2",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport and vRP.GetHealth(source) > 100 then
		local ClosestPed = vRPC.ClosestPed(source,2)
		if ClosestPed then
			if vRP.HasService(Passport,"Paramedic") then
				TriggerClientEvent("emotes",ClosestPed,Message[1])
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- E3
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("e3",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport and vRP.GetHealth(source) > 100 then
		if vRP.HasGroup(Passport,"Admin",2) then
			local Players = vRPC.ClosestPeds(source,50)
			for _,v in pairs(Players) do
				async(function()
					TriggerClientEvent("emotes",v,Message[1])
				end)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:DOORS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Doors")
AddEventHandler("player:Doors",function(Number)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Vehicle,Network = vRPC.VehicleList(source,5)
		if Vehicle then
			local Players = vRPC.Players(source)
			for _,v in pairs(Players) do
				async(function()
					TriggerClientEvent("player:syncDoors",v,Network,Number)
				end)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:TRUNK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:TrunkDoor")
AddEventHandler("player:TrunkDoor",function(Network,Mode)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Players = vRPC.Players(source)
		for _,v in pairs(Players) do
			async(function()
				TriggerClientEvent("player:syncTrunkDoor",v,Network,Mode)
			end)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 911
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("911",function(source,Message,History)
	local Passport = vRP.Passport(source)
	if Passport and Message[1] and vRP.GetHealth(source) > 100 then
		if vRP.HasService(Passport,"Police") then
			local Identity = vRP.Identity(Passport)
			local Service = vRP.NumPermission("Police")
			for Passports,Sources in pairs(Service) do
				async(function()
					TriggerClientEvent("chat:ClientMessage",Sources,Identity["name"],History:sub(4))
				end)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 112
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("112",function(source,Message,History)
	local Passport = vRP.Passport(source)
	if Passport and Message[1] and vRP.GetHealth(source) > 100 then
		if vRP.HasService(Passport,"Paramedic") then
			local Identity = vRP.Identity(Passport)
			local Service = vRP.NumPermission("Paramedic")
			for Passports,Sources in pairs(Service) do
				async(function()
					TriggerClientEvent("Datatable",Sources,Identity["name"].." "..Identity["name2"],History:sub(4))
				end)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOTSFIRED
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.shotsFired(Vehicle)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if Vehicle then
			Vehicle = "Disparos de um veículo"
		else
			Vehicle = "Disparos com arma de fogo"
		end
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4 or 5 ) then
			return
		end	
		local Ped = GetPlayerPed(source)
		local Coords = GetEntityCoords(Ped)
		local a,Service = vRP.NumPermission("Police")
		for Passports,Sources in pairs(a) do
			if vRP.HasService(Passports or Sources,"Police") then
				async(function()
					TriggerClientEvent("NotifyPush",Sources,{ code = 10, title = Vehicle, x = Coords["x"], y = Coords["y"], z = Coords["z"], blipColor = 6 })
				end)
			end
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:CARRYPLAYER
-----------------------------------------------------------------------------------------------------------------------------------------
local playerCarry = {}
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
vRPC = Tunnel.getInterface("vRP", "vRP")

RegisterCommand("pegarjogador", function(source)
    local user_id = vRP.Passport(source)
    if user_id then
        if vRP.HasPermission(user_id, "Paramedic") then
            if not vRPclient.isInVehicle(source) then
                if playerCarry[user_id] then
                    TriggerClientEvent("player:playerCarry", playerCarry[user_id], source)
                    TriggerClientEvent("player:Commands", playerCarry[user_id], false)
                    playerCarry[user_id] = nil
                else
                    local closestPlayer = vRPC.ClosestPed(source, 2)
                    if closestPlayer then
                        playerCarry[user_id] = closestPlayer
                        TriggerClientEvent("player:playerCarry", closestPlayer, source)
                        TriggerClientEvent("player:Commands", closestPlayer, true)
                    else
                        TriggerClientEvent("Notify", source, "aviso", "Nenhum jogador próximo.")
                    end
                end
            else
                TriggerClientEvent("Notify", source, "negado", "Você não pode carregar jogadores dentro do veículo.")
            end
        else
            TriggerClientEvent("Notify", source, "negado", "Você não é um paramédico de serviço.")
        end
    end
end, false)



-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:WINSFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:winsFunctions")
AddEventHandler("player:winsFunctions",function(Mode)
	local source = source
	local vehicle,Network = vRPC.VehicleList(source,10)
	if vehicle then
		TriggerClientEvent("player:syncWins",source,Network,Mode)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:CVFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:cvFunctions")
AddEventHandler("player:cvFunctions",function(Mode)
	local Distance = 1
	local source = source

	if Mode == "rv" then
		Distance = 10
	end

	local ClosestPed = vRPC.ClosestPed(source,Distance)
	if ClosestPed then
		local Passport = vRP.Passport(source)
		local Consult = vRP.InventoryItemAmount(Passport,"rope")
		if vRP.HasService(Passport,"Emergency") or Consult[1] >= 1 then
			local Vehicle,Network = vRPC.VehicleList(source,5)
			if Vehicle then
				local Networked = NetworkGetEntityFromNetworkId(Network)
				local Door = GetVehicleDoorLockStatus(Networked)

				if parseInt(Door) <= 1 then
					if Mode == "rv" then
						vCLIENT.removeVehicle(ClosestPed)
					elseif Mode == "cv" then
						vCLIENT.putVehicle(ClosestPed,Network)
					end
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PRESET
-----------------------------------------------------------------------------------------------------------------------------------------
local preset = {
	["1"] = { -- Recruta
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 129, texture = 1 }, -- Calças  
            ["vest"] = { item = 68, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 59, texture = 20 }, -- Sapatos  
            ["tshirt"] = { item = 224, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 556, texture = 3 }, -- Jaqueta 
            ["accessory"] = { item = -1, texture = 0 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 0, texture = 0 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 17, texture = 0 },
			["vest"] = { item = 76, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 25, texture = 0 },
			["tshirt"] = { item = 22, texture = 0 },
			["torso"] = { item = 23, texture = 0 },
			["accessory"] = { item = 14, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 14, texture = 0 },
			["glass"] = { item = 0, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["2"] = { -- oficial
	["mp_m_freemode_01"] = {
		["hat"] = { item = -1, texture = 0 }, -- Chapéu  
		["pants"] = { item = 205, texture = 0 }, -- Calças  
		["vest"] = { item = 69, texture = 0 }, -- Colete  
		["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
		["backpack"] = { item = 0, texture = 0 }, -- Mochila  
		["decals"] = { item = -1, texture = 0 }, -- Decalques  
		["mask"] = { item = -1, texture = 0 }, -- Máscara  
		["shoes"] = { item = 25, texture = 0 }, -- Sapatos  
		["tshirt"] = { item = 225, texture = 0 }, -- Camiseta  
		["torso"] = { item = 556, texture = 2 }, -- Jaqueta 
		["accessory"] = { item = 125, texture = 0 }, -- Acessório  
		["watch"] = { item = -1, texture = 0 }, -- Relógio  
		["arms"] = { item = 151, texture = 0 }, -- Braços  
		["glass"] = { item = 0, texture = 0 }, -- Óculos  
		["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
	},
		["mp_f_freemode_01"] = { 
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 136, texture = 0 },
			["vest"] = { item = 15, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 25, texture = 0 },
			["tshirt"] = { item = 159, texture = 0 },
			["torso"] = { item = 598, texture = 0 },
			["accessory"] = { item = 145, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 14, texture = 0 },
			["glass"] = { item = 0, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["3"] = { -- oficial 2
		["mp_m_freemode_01"] = {
			["hat"] = { item = 203, texture = 0 },
			["pants"] = { item = 130, texture = 0 },
			["vest"] = { item = 79, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = -1, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 96, texture = 0 },
			["tshirt"] = { item = 216, texture = 0 },
			["torso"] = { item = 529, texture = 0 },
			["accessory"] = { item = 170, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 11, texture = 0 },
			["glass"] = { item = 0, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 17, texture = 0 },
			["vest"] = { item = 15, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 25, texture = 0 },
			["tshirt"] = { item = 22, texture = 0 },
			["torso"] = { item = 21, texture = 0 },
			["accessory"] = { item = 14, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 14, texture = 0 },
			["glass"] = { item = 0, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["4"] = { -- GTM
		["mp_m_freemode_01"] = {
			["hat"] = { item = 205, texture = 0 },
			["pants"] = { item = 87, texture = 0 },
			["vest"] = { item = 79, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = -1, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 96, texture = 0 },
			["tshirt"] = { item = 216, texture = 0 },
			["torso"] = { item = 534, texture = 0 },
			["accessory"] = { item = 170, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 11, texture = 0 },
			["glass"] = { item = 0, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = 32, texture = 2 },
			["pants"] = { item = 19, texture = 0 },
			["vest"] = { item = 13, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = -1, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 25, texture = 0 },
			["tshirt"] = { item = 25, texture = 0 },
			["torso"] = { item = 26, texture = 7 },
			["accessory"] = { item = 14, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 7, texture = 0 },
			["glass"] = { item = 0, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["5"] = { -- GAR
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 19, texture = 0 },
			["vest"] = { item = 13, texture = 1 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 25, texture = 0 },
			["tshirt"] = { item = 17, texture = 0 },
			["torso"] = { item = 32, texture = 	3 },
			["accessory"] = { item = 20, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 0, texture = 0 },
			["glass"] = { item = 0, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 16, texture = 0 },
			["vest"] = { item = 14, texture = 1 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 25, texture = 0 },
			["tshirt"] = { item = 25, texture = 0 },
			["torso"] = { item = 16, texture = 5 },
			["accessory"] = { item = 14, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 14, texture = 0 },
			["glass"] = { item = 0, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["6"] = { -- DIP

		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 87, texture = 3 },
			["vest"] = { item = 12, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 96, texture = 0 },
			["tshirt"] = { item = -1, texture = 0 },
			["torso"] = { item = 534, texture = 1 },
			["accessory"] = { item = 197, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 199, texture = 0 },
			["glass"] = { item = 0, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 0, texture = 0 },
			["vest"] = { item = 12, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 1, texture = 0 },
			["tshirt"] = { item = 16, texture = 0 },
			["torso"] = { item = 27, texture = 0 },
			["accessory"] = { item = 11, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 14, texture = 0 },
			["glass"] = { item = 0, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["7"] = { -- Delegado
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 87, texture = 3 },
			["vest"] = { item = 75, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 35, texture = 0 },
			["tshirt"] = { item = 25, texture = 1 },
			["torso"] = { item = 534, texture = 1 },
			["accessory"] = { item = 197, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 0, texture = 0 },
			["glass"] = { item = 0, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 141, texture = 3 },
			["vest"] = { item = 12, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 25, texture = 0 },
			["tshirt"] = { item = 16, texture = 0 },
			["torso"] = { item = 27, texture = 0 },
			["accessory"] = { item = 10, texture = 1 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 14, texture = 0 },
			["glass"] = { item = 0, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["8"] = { -- CORE
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 9 },
			["pants"] = { item = 87, texture = 0 },
			["vest"] = { item = 74, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = -1, texture = 0 },
			["shoes"] = { item = 25, texture = 0 },
			["tshirt"] = { item = -1, texture = 0 },
			["torso"] = { item = 532, texture = 1 },
			["accessory"] = { item = 200, texture = 1 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 20, texture = 0 },
			["glass"] = { item = -1, texture = 2 },
			["ear"] = { item = -1, texture = 0 }
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = 75, texture = 9 },
			["pants"] = { item = 16, texture = 0 },
			["vest"] = { item = 21, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 35, texture = 0 },
			["shoes"] = { item = 25, texture = 0 },
			["tshirt"] = { item = 16, texture = 0 },
			["torso"] = { item = 16, texture = 0 },
			["accessory"] = { item = 10, texture = 1 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 14, texture = 0 },
			["glass"] = { item = 24, texture = 2 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["9"] = { -- CORE 2
		["mp_m_freemode_01"] = {
			["hat"] = { item = 29, texture = 2 },
			["pants"] = { item = 19, texture = 0 },
			["vest"] = { item = 11, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 122, texture = 0 },
			["shoes"] = { item = 25, texture = 0 },
			["tshirt"] = { item = 25, texture = 0 },
			["torso"] = { item = 34, texture = 0 },
			["accessory"] = { item = 19, texture = 1 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 201, texture = 0 },
			["glass"] = { item = 50, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = 29, texture = 2 },
			["pants"] = { item = 16, texture = 0 },
			["vest"] = { item = 21, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 122, texture = 0 },
			["shoes"] = { item = 25, texture = 0 },
			["tshirt"] = { item = 16, texture = 0 },
			["torso"] = { item = 26, texture = 0 },
			["accessory"] = { item = 10, texture = 1 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 53, texture = 0 },
			["glass"] = { item = 50, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["10"] = { -- GAEP
		["mp_m_freemode_01"] = {
			["hat"] = { item = 47, texture = 0 },
			["pants"] = { item = 87, texture = 0 },
			["vest"] = { item = 79, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 51, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 218, texture = 0 },
			["shoes"] = { item = 96, texture = 0 },
			["tshirt"] = { item = 216, texture = 0 },
			["torso"] = { item = 532, texture = 1 },
			["accessory"] = { item = 19, texture = 1 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 179, texture = 0 },
			["glass"] = { item = 77, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 16, texture = 0 },
			["vest"] = { item = 14, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 25, texture = 0 },
			["tshirt"] = { item = 19, texture = 0 },
			["torso"] = { item = 16, texture = 4 },
			["accessory"] = { item = 10, texture = 1 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 57, texture = 0 },
			["glass"] = { item = 0, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["11"] = { -- Comando
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 19, texture = 0 },
			["vest"] = { item = 0, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 25, texture = 0 },
			["tshirt"] = { item = 195, texture = 1 },
			["torso"] = { item = 23, texture = 5 },
			["accessory"] = { item = 20, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 203, texture = 0 },
			["glass"] = { item = 0, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 16, texture = 0 },
			["vest"] = { item = 9, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 25, texture = 0 },
			["tshirt"] = { item = 16, texture = 0 },
			["torso"] = { item = 23, texture = 3 },
			["accessory"] = { item = 10, texture = 1 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 57, texture = 0 },
			["glass"] = { item = 0, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		}
	},

	-- PARAMEDIC
	["12"] = {
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 236, texture = 0 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 9, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 15, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 631, texture = 0 }, -- Jaqueta 
            ["accessory"] = { item = 246, texture = 1 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 215, texture = 1 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 274, texture = 1 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 103, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 15, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 778, texture = 0 }, -- Jaqueta 
            ["accessory"] = { item = 214, texture = 1 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 109, texture = 1 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		}
	},
	["13"] = {
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 236, texture = 0 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 9, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 15, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 627, texture = 0 }, -- Jaqueta 
            ["accessory"] = { item = 246, texture = 2 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 90, texture = 1 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 274, texture = 10 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 103, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 15, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 774, texture = 0 }, -- Jaqueta 
            ["accessory"] = { item = 214, texture = 2 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 101, texture = 2 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		}
	},
	["14"] = {
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 128, texture = 19 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 99, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 15, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 592, texture = 3 }, -- Jaqueta 
            ["accessory"] = { item = 246, texture = 3 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 215, texture = 1 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 134, texture = 19 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 103, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 15, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 651, texture = 1 }, -- Jaqueta 
            ["accessory"] = { item = 214, texture = 3 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 109, texture = 1 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		}
	},
	["15"] = {
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 234, texture = 0 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 24, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 153, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 100, texture = 0 }, -- Jaqueta 
            ["accessory"] = { item = 126, texture = 0 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 215, texture = 1 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 272, texture = 0 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 24, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 189, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 88, texture = 0 }, -- Jaqueta 
            ["accessory"] = { item = 215, texture = 1 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 109, texture = 1 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		
	},
	["16"] = {
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 235, texture = 0 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 103, texture = 4 }, -- Sapatos  
            ["tshirt"] = { item = 60, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 626, texture = 0 }, -- Jaqueta 
            ["accessory"] = { item = 190, texture = 8 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 90, texture = 1 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 273, texture = 0 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 24, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 38, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 773, texture = 0 }, -- Jaqueta 
            ["accessory"] = { item = 215, texture = 0 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 101, texture = 1 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		
	},
	-- Prf
	["17"] = {
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 237, texture = 0 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 81, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 237, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 640, texture = 16 }, -- Jaqueta 
            ["accessory"] = { item = 0, texture = 1 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 0, texture = 0 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 23, texture = 10 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 103, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 78, texture = 6 }, -- Camiseta  
            ["torso"] = { item = 681, texture = 0 }, -- Jaqueta 
            ["accessory"] = { item = 203, texture = 0 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 102, texture = 0 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		}
	},
	["18"] = {
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 237, texture = 3 }, -- Calças  
            ["vest"] = { item = 77, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 81, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 237, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 640, texture = 16 }, -- Jaqueta 
            ["accessory"] = { item = 0, texture = 1 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 0, texture = 0 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 160, texture = 3 },
			["vest"] = { item = 0, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 81, texture = 2 },
			["tshirt"] = { item = 203, texture = 0 },
			["torso"] = { item = 395, texture = 2 },
			["accessory"] = { item = 37, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 9, texture = 0 },
			["glass"] = { item = 46, texture = 3 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["19"] = {
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 237, texture = 3 }, -- Calças  
            ["vest"] = { item = 77, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 81, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 237, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 640, texture = 22 }, -- Jaqueta 
            ["accessory"] = { item = 0, texture = 1 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 0, texture = 0 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 160, texture = 3 },
			["vest"] = { item = 0, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 81, texture = 2 },
			["tshirt"] = { item = 203, texture = 0 },
			["torso"] = { item = 395, texture = 2 },
			["accessory"] = { item = 37, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 9, texture = 0 },
			["glass"] = { item = 46, texture = 3 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["20"] = {
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 238, texture = 1 }, -- Calças  
            ["vest"] = { item = 77, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 81, texture = 2 }, -- Sapatos  
            ["tshirt"] = { item = 237, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 640, texture = 22 }, -- Jaqueta 
            ["accessory"] = { item = 0, texture = 1 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 0, texture = 0 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 160, texture = 3 },
			["vest"] = { item = 0, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 121, texture = 0 },
			["shoes"] = { item = 81, texture = 2 },
			["tshirt"] = { item = 203, texture = 0 },
			["torso"] = { item = 395, texture = 2 },
			["accessory"] = { item = 37, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 9, texture = 0 },
			["glass"] = { item = 46, texture = 3 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["21"] = {
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 239, texture = 2 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 81, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 237, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 640, texture = 23 }, -- Jaqueta 
            ["accessory"] = { item = 0, texture = 1 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 0, texture = 0 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 160, texture = 3 },
			["vest"] = { item = 0, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 0, texture = 0 },
			["shoes"] = { item = 81, texture = 2 },
			["tshirt"] = { item = 203, texture = 0 },
			["torso"] = { item = 395, texture = 2 },
			["accessory"] = { item = 37, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 9, texture = 0 },
			["glass"] = { item = 46, texture = 3 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["22"] = {
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 23, texture = 8 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 106, texture = 3 }, -- Sapatos  
            ["tshirt"] = { item = 15, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 636, texture = 0 }, -- Jaqueta 
            ["accessory"] = { item = 0, texture = 1 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 19, texture = 0 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 50, texture = 0 },
			["vest"] = { item = 0, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 0, texture = 0 },
			["shoes"] = { item = 37, texture = 0 },
			["tshirt"] = { item = 10, texture = 0 },
			["torso"] = { item = 783, texture = 0 },
			["accessory"] = { item = 37, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 31, texture = 0 },
			["glass"] = { item = -1, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["23"] = {
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 48, texture = 2 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 21, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 15, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 107, texture = 2 }, -- Jaqueta 
            ["accessory"] = { item = 0, texture = 1 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 19, texture = 0 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 50, texture = 1 },
			["vest"] = { item = 0, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 0, texture = 0 },
			["shoes"] = { item = 212, texture = 4 },
			["tshirt"] = { item = 10, texture = 0 },
			["torso"] = { item = 783, texture = 0 },
			["accessory"] = { item = 0, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 31, texture = 0 },
			["glass"] = { item = -1, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["24"] = {
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 102, texture = 2 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 25, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 233, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 95, texture = 1 }, -- Jaqueta 
            ["accessory"] = { item = 0, texture = 1 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 26, texture = 0 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 109, texture = 1 },
			["vest"] = { item = 0, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 0, texture = 0 },
			["shoes"] = { item = 84, texture = 0 },
			["tshirt"] = { item = 396, texture = 0 },
			["torso"] = { item = 27, texture = 1 },
			["accessory"] = { item = 0, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 33, texture = 0 },
			["glass"] = { item = -1, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
	["25"] = {
		["mp_m_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 }, -- Chapéu  
            ["pants"] = { item = 102, texture = 0 }, -- Calças  
            ["vest"] = { item = -1, texture = 0 }, -- Colete  
            ["bracelet"] = { item = -1, texture = 0 }, -- Pulseira  
            ["backpack"] = { item = 0, texture = 0 }, -- Mochila  
            ["decals"] = { item = -1, texture = 0 }, -- Decalques  
            ["mask"] = { item = -1, texture = 0 }, -- Máscara  
            ["shoes"] = { item = 25, texture = 0 }, -- Sapatos  
            ["tshirt"] = { item = 15, texture = 0 }, -- Camiseta  
            ["torso"] = { item = 348, texture = 2 }, -- Jaqueta 
            ["accessory"] = { item = 0, texture = 1 }, -- Acessório  
            ["watch"] = { item = -1, texture = 0 }, -- Relógio  
            ["arms"] = { item = 26, texture = 0 }, -- Braços  
            ["glass"] = { item = 0, texture = 0 }, -- Óculos  
            ["ear"] = { item = -1, texture = 0 } -- Brinco / Acessório de ouvido
		},
		["mp_f_freemode_01"] = {
			["hat"] = { item = -1, texture = 0 },
			["pants"] = { item = 109, texture = 1 },
			["vest"] = { item = 0, texture = 0 },
			["bracelet"] = { item = -1, texture = 0 },
			["backpack"] = { item = 0, texture = 0 },
			["decals"] = { item = 0, texture = 0 },
			["mask"] = { item = 0, texture = 0 },
			["shoes"] = { item = 84, texture = 0 },
			["tshirt"] = { item = 15, texture = 0 },
			["torso"] = { item = 73, texture = 0 },
			["accessory"] = { item = 0, texture = 0 },
			["watch"] = { item = -1, texture = 0 },
			["arms"] = { item = 44, texture = 0 },
			["glass"] = { item = -1, texture = 0 },
			["ear"] = { item = -1, texture = 0 }
		}
	},
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:PRESET
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Preset")
AddEventHandler("player:Preset", function(Number)
    local source = source
    local Passport = vRP.Passport(source)
    if Passport then
        if vRP.HasService(Passport,"Emergency") or vRP.HasService(Passport,"FastFood") or vRP.HasService(Passport,"Mechanic") then
            local Model = vRP.ModelPlayer(source)
            if Model == "mp_m_freemode_01" or Model == "mp_f_freemode_01" then
                TriggerClientEvent("skinshop:Apply", source, preset[Number][Model])
            end
        end
    end
end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:CHECKTRUNK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:checkTrunk")
AddEventHandler("player:checkTrunk",function()
	local source = source
	local ClosestPed = vRPC.ClosestPed(source,2)
	if ClosestPed then
		TriggerClientEvent("player:checkTrunk",ClosestPed)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:CHECKTRASH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:checkTrash")
AddEventHandler("player:checkTrash",function()
	local source = source
	local ClosestPed = vRPC.ClosestPed(source,2)
	if ClosestPed then
		TriggerClientEvent("player:checkTrash",ClosestPed)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:CHECKSHOES
-----------------------------------------------------------------------------------------------------------------------------------------
local UniqueShoes = {}
RegisterServerEvent("player:checkShoes")
AddEventHandler("player:checkShoes",function(Entity)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if not UniqueShoes[Entity] then
			UniqueShoes[Entity] = os.time()
		end

		if os.time() >= UniqueShoes[Entity] then
			if vSKINSHOP.checkShoes(Entity) then
				vRP.GenerateItem(Passport,"WEAPON_SHOES",2,true)
				UniqueShoes[Entity] = os.time() + 300
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- OUTFIT - REMOVER
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-- REMOVIT
-----------------------------------------------------------------------------------------------------------------------------------------
local Removit = {
	["mp_m_freemode_01"] = {
		["hat"] = { item = -1, texture = 0 },
		["pants"] = { item = 14, texture = 0 },
		["vest"] = { item = 0, texture = 0 },
		["backpack"] = { item = 0, texture = 0 },
		["bracelet"] = { item = -1, texture = 0 },
		["decals"] = { item = 0, texture = 0 },
		["mask"] = { item = 0, texture = 0 },
		["shoes"] = { item = 5, texture = 0 },
		["tshirt"] = { item = 15, texture = 0 },
		["torso"] = { item = 15, texture = 0 },
		["accessory"] = { item = 0, texture = 0 },
		["watch"] = { item = -1, texture = 0 },
		["arms"] = { item = 15, texture = 0 },
		["glass"] = { item = 0, texture = 0 },
		["ear"] = { item = -1, texture = 0 }
	},
	["mp_f_freemode_01"] = {
		["hat"] = { item = -1, texture = 0 },
		["pants"] = { item = 14, texture = 0 },
		["vest"] = { item = 0, texture = 0 },
		["backpack"] = { item = 0, texture = 0 },
		["bracelet"] = { item = -1, texture = 0 },
		["decals"] = { item = 0, texture = 0 },
		["mask"] = { item = 0, texture = 0 },
		["shoes"] = { item = 5, texture = 0 },
		["tshirt"] = { item = 15, texture = 0 },
		["torso"] = { item = 15, texture = 0 },
		["accessory"] = { item = 0, texture = 0 },
		["watch"] = { item = -1, texture = 0 },
		["arms"] = { item = 15, texture = 0 },
		["glass"] = { item = 0, texture = 0 },
		["ear"] = { item = -1, texture = 0 }
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:OUTFIT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Outfit")
AddEventHandler("player:Outfit",function(Mode)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and not exports["hud"]:Reposed(Passport) and not exports["hud"]:Wanted(Passport) then
		if Mode == "aplicar" then
			local Result = vRP.GetSrvData("Outfit:"..Passport,true)
			if Result["pants"] then
				TriggerClientEvent("skinshop:Apply",source,Result)
				TriggerClientEvent("Notify",source,"verde","Roupas aplicadas.","Sucesso",5000)
			else
				TriggerClientEvent("Notify",source,"amarelo","Roupas não encontradas.","Aviso",5000)
			end
		elseif Mode == "salvar" then
			local Custom = vSKINSHOP.Customization(source)
			if Custom then
				vRP.SetSrvData("Outfit:"..Passport,Custom,true)
				TriggerClientEvent("Notify",source,"verde","Roupas salvas.","Sucesso",5000)
			end
		elseif Mode == "aplicarpre" then
			local Result = vRP.GetSrvData("Premiumfit:"..Passport,true)
			if Result["pants"] then
				TriggerClientEvent("skinshop:Apply",source,Result)
				TriggerClientEvent("Notify",source,"verde","Roupas aplicadas.","Sucesso",5000)
			else
				TriggerClientEvent("Notify",source,"amarelo","Roupas não encontradas.","Aviso",5000)
			end
		elseif Mode == "salvarpre" then
			local Custom = vSKINSHOP.Customization(source)
			if Custom then
				vRP.SetSrvData("Premiumfit:"..Passport,Custom,true)
				TriggerClientEvent("Notify",source,"verde","Roupas salvas.","Sucesso",5000)
			end
		elseif Mode == "remover" then
			local Model = vRP.ModelPlayer(source)
			if Removit[Model] then
				TriggerClientEvent("skinshop:Apply",source,Removit[Model])
			end
		else
			TriggerClientEvent("skinshop:set"..Mode,source)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYER:OUTFIT2
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Outfit2")
AddEventHandler("player:Outfit2",function(Mode)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and not exports["hud"]:Reposed(Passport) and not exports["hud"]:Wanted(Passport) then
		if Mode == "aplicar" then
			local Result = vRP.GetSrvData("Outfit2:"..Passport,true)
			if Result["pants"] then
				TriggerClientEvent("skinshop:Apply",source,Result)
				TriggerClientEvent("Notify",source,"verde","Roupas aplicadas.","Sucesso",5000)
			else
				TriggerClientEvent("Notify",source,"amarelo","Roupas não encontradas.","Aviso",5000)
			end
		elseif Mode == "salvar" then
			local Custom = vSKINSHOP.Customization(source)
			if Custom then
				vRP.SetSrvData("Outfit2:"..Passport,Custom,true)
				TriggerClientEvent("Notify",source,"verde","Roupas salvas.","Sucesso",5000)
			end
		elseif Mode == "aplicarpre" then
			local Result = vRP.GetSrvData("Premiumfit2:"..Passport,true)
			if Result["pants"] then
				TriggerClientEvent("skinshop:Apply",source,Result)
				TriggerClientEvent("Notify",source,"verde","Roupas aplicadas.","Sucesso",5000)
			else
				TriggerClientEvent("Notify",source,"amarelo","Roupas não encontradas.","Aviso",5000)
			end
		elseif Mode == "salvarpre" then
			local Custom = vSKINSHOP.Customization(source)
			if Custom then
				vRP.SetSrvData("Premiumfit2:"..Passport,Custom,true)
				TriggerClientEvent("Notify",source,"verde","Roupas salvas.","Sucesso",5000)
			end
		elseif Mode == "remover" then
			local Model = vRP.ModelPlayer(source)
			if Removit[Model] then
				TriggerClientEvent("skinshop:Apply",source,Removit[Model])
			end
		else
			TriggerClientEvent("skinshop:set"..Mode,source)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEATH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("player:Death")
AddEventHandler("player:Death",function(nsource)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and source ~= nsource then
		local OtherPassport = vRP.Passport(nsource)
		if OtherPassport then
			if GetPlayerRoutingBucket(source) < 900000 then
				TriggerEvent("Discord","Deaths","**Matou:** "..Passport.."\n**Morreu:** "..OtherPassport,3092790)
			else
				local Name = "Individuo Indigente"
				local Name2 = "Individuo Indigente"
				local Identity = vRP.Identity(Passport)
				local nIdentity = vRP.Identity(OtherPassport)

				if Identity and nIdentity then
					Name = Identity["name"].." "..Identity["name2"]
					Name2 = nIdentity["name"].." "..nIdentity["name2"]
					TriggerClientEvent("Notify",source,"amarelo","<b>"..Name.."</b> matou <b>"..Name2.."</b>",10000)
					TriggerClientEvent("Notify",nsource,"amarelo","<b>"..Name.."</b> matou <b>"..Name2.."</b>",10000)
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BIKEPACK
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Bikepack()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local amountWeight = 10
		local myWeight = vRP.GetWeight(Passport)

		if parseInt(myWeight) < 45 then
			amountWeight = 15
		elseif parseInt(myWeight) >= 45 and parseInt(myWeight) <= 79 then
			amountWeight = 10
		elseif parseInt(myWeight) >= 80 and parseInt(myWeight) <= 95 then
			amountWeight = 5
		elseif parseInt(myWeight) >= 100 and parseInt(myWeight) <= 148 then
			amountWeight = 2
		elseif parseInt(myWeight) >= 150 then
			amountWeight = 1
		end

		vRP.SetWeight(Passport,amountWeight)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Connect",function(Passport,source)
	TriggerClientEvent("player:DuiTable",source,DuiTextures)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Disconnect",function(Passport)
	if playerCarry[Passport] then
		TriggerClientEvent("player:Commands",playerCarry[Passport],false)
		playerCarry[Passport] = nil
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SYNCCLEAN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("tryclean")
AddEventHandler("tryclean",function(nveh)
	TriggerClientEvent("syncclean",-1,nveh)
end)