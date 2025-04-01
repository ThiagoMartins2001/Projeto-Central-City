-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Baixada = {}
Tunnel.bindInterface("routes",Baixada)
vCLIENT = Tunnel.getInterface("routes")
-----------------------------------------------------------------------------------------------------------------------------------------
-- WORKS
-----------------------------------------------------------------------------------------------------------------------------------------
local routes = {
	----------------------------------------------------------------------
	---- ROTA DE FARMS
	----------------------------------------------------------------------
	["Vanilla"] = {
		["coords"] = {125.88,-1295.11,29.32},
		["upgradeStress"] = 2,
		["routeCollect"] = true,
		["usingVehicle"] = false,
		["collectText"] = "COLETAR",
		["perm"] = "Vanilla",
		["collectButtonDistance"] = 1,
		["collectShowDistance"] = 15,
		["collectDuration"] = 3000,
		["collectAnim"] = { false,"amb@prop_human_parking_meter@female@idle_a","idle_a_female",true },
		["collectConsume"] = {
			["min"] = 5,
			["max"] = 15
		},
		["collectCoords"] = {
			{ -2565.73,2307.22,33.21 },
            { -1130.08,2700.32,18.8 },
            { 61.27,2793.18,57.88 },
            { 260.29,2583.2,44.82 },
            { 1041.25,2652.35,39.55 },
            { 1980.44,3049.76,50.43 },
            { 2030.26,3184.44,45.14 },
            { 2271.01,3756.89,38.42 },
            { 2440.61,4068.04,38.06 },
            { 2567.03,4651.98,34.07 },
            { 2016.98,4987.82,42.09 },
            { 1647.24,4839.86,42.02 },
            { 1741.39,6419.53,35.05 },
            { 174.65,6642.57,31.58 },
            { 9.51,6506.25,31.53 },
            { -679.64,5800.59,17.32 },
            { -1490.33,4981.44,63.36 },
            { -2173.8,4282.25,49.12 },
            { -2304.61,3427.23,31.05 }
		},
		["deliveryItem"] = "paper"
	},
	["Bahamas"] = {
		["coords"] = {-1384.88,-591.84,30.32},
		["upgradeStress"] = 2,
		["routeCollect"] = true,
		["usingVehicle"] = false,
		["collectText"] = "COLETAR",
		["perm"] = "Bahamas",
		["collectButtonDistance"] = 1,
		["collectShowDistance"] = 15,
		["collectDuration"] = 3000,
		["collectAnim"] = { false,"amb@prop_human_parking_meter@female@idle_a","idle_a_female",true },
		["collectConsume"] = {
			["min"] = 5,
			["max"] = 15
		},
		["collectCoords"] = {
			{ -2565.73,2307.22,33.21 },
            { -1130.08,2700.32,18.8 },
            { 61.27,2793.18,57.88 },
            { 260.29,2583.2,44.82 },
            { 1041.25,2652.35,39.55 },
            { 1980.44,3049.76,50.43 },
            { 2030.26,3184.44,45.14 },
            { 2271.01,3756.89,38.42 },
            { 2440.61,4068.04,38.06 },
            { 2567.03,4651.98,34.07 },
            { 2016.98,4987.82,42.09 },
            { 1647.24,4839.86,42.02 },
            { 1741.39,6419.53,35.05 },
            { 174.65,6642.57,31.58 },
            { 9.51,6506.25,31.53 },
            { -679.64,5800.59,17.32 },
            { -1490.33,4981.44,63.36 },
            { -2173.8,4282.25,49.12 },
            { -2304.61,3427.23,31.05 }
		},
		["deliveryItem"] = "paper"
	},
	["Bennys"] = {
		["coords"] = {-197.37,-1320.54,31.09},
		["upgradeStress"] = 2,
		["routeCollect"] = true,
		["usingVehicle"] = false,
		["collectText"] = "COLETAR",
		["perm"] = "Bennys",
		["collectButtonDistance"] = 1,
		["collectShowDistance"] = 15,
		["collectDuration"] = 3000,
		["collectAnim"] = { false,"amb@prop_human_parking_meter@female@idle_a","idle_a_female",true },
		["collectConsume"] = {
			["min"] = 3,
			["max"] = 5
		},
		["collectCoords"] = {
			{ 700.80,2884.67,50.25 },
			{ 648.34,2928.32,42.01 },
			{ 543.32,2882.64,43.01 },
			{ 647.15,3010.95,43.29 },
			{ 601.03,3024.50,41.98 }
           
		},
		["deliveryItem"] = "oilgallon"
	},
	["DKing"] = {
		["coords"] = {70.71,6514.56,31.26},
		["upgradeStress"] = 2,
		["routeCollect"] = true,
		["usingVehicle"] = false,
		["collectText"] = "COLETAR",
		["perm"] = "DKing",
		["collectButtonDistance"] = 1,
		["collectShowDistance"] = 15,
		["collectDuration"] = 3000,
		["collectAnim"] = { false,"amb@prop_human_parking_meter@female@idle_a","idle_a_female",true },
		["collectConsume"] = {
			["min"] = 3,
			["max"] = 5
		},
		["collectCoords"] = {
			{ 700.80,2884.67,50.25 },
			{ 648.34,2928.32,42.01 },
			{ 543.32,2882.64,43.01 },
			{ 647.15,3010.95,43.29 },
			{ 601.03,3024.50,41.98 }
           
		},
		["deliveryItem"] = "oilgallon"
	},
	["Playboy"] = {
		["coords"] = {-1520.13,134.72,48.64},
		["upgradeStress"] = 2,
		["routeCollect"] = true,
		["usingVehicle"] = false,
		["collectText"] = "COLETAR",
		["perm"] = "Playboy",
		["collectButtonDistance"] = 1,
		["collectShowDistance"] = 15,
		["collectDuration"] = 3000,
		["collectAnim"] = { false,"amb@prop_human_parking_meter@female@idle_a","idle_a_female",true },
		["collectConsume"] = {
			["min"] = 3,
			["max"] = 5
		},
		["collectCoords"] = {
			{ 700.80,2884.67,50.25 },
			{ 648.34,2928.32,42.01 },
			{ 543.32,2882.64,43.01 },
			{ 647.15,3010.95,43.29 },
			{ 601.03,3024.50,41.98 }
           
		},
		["deliveryItem"] = "oilgallon"
	},
	["Callisto"] = {
		["coords"] = {391.27,-9.56,86.68},
		["upgradeStress"] = 2,
		["routeCollect"] = true,
		["usingVehicle"] = false,
		["collectText"] = "COLETAR",
		["perm"] = "Callisto",
		["collectButtonDistance"] = 1,
		["collectShowDistance"] = 15,
		["collectDuration"] = 3000,
		["collectAnim"] = { false,"amb@prop_human_parking_meter@female@idle_a","idle_a_female",true },
		["collectConsume"] = {
			["min"] = 3,
			["max"] = 5
		},
		["collectCoords"] = {
			{ 700.80,2884.67,50.25 },
			{ 648.34,2928.32,42.01 },
			{ 543.32,2882.64,43.01 },
			{ 647.15,3010.95,43.29 },
			{ 601.03,3024.50,41.98 }
           
		},
		["deliveryItem"] = "oilgallon"
	},
	["Vagos"] = {
		["coords"] = {297.87,-2034.71,19.84},
		["upgradeStress"] = 2,
		["routeCollect"] = true,
		["usingVehicle"] = false,
		["collectText"] = "COLETAR",
		["perm"] = "Vagos",
		["collectButtonDistance"] = 1,
		["collectShowDistance"] = 15,
		["collectDuration"] = 3000,
		["collectAnim"] = { false,"amb@prop_human_parking_meter@female@idle_a","idle_a_female",true },
		["collectConsume"] = {
			["min"] = 3,
			["max"] = 5
		},
		["collectCoords"] = {
			{ 700.80,2884.67,50.25 },
			{ 648.34,2928.32,42.01 },
			{ 543.32,2882.64,43.01 },
			{ 647.15,3010.95,43.29 },
			{ 601.03,3024.50,41.98 }
           
		},
		["deliveryItem"] = "oilgallon"
	},
	["Ballas"] = {
		["coords"] = {83.92,-1961.00,20.75},
		["upgradeStress"] = 2,
		["routeCollect"] = true,
		["usingVehicle"] = false,
		["collectText"] = "COLETAR",
		["perm"] = "Ballas",
		["collectButtonDistance"] = 1,
		["collectShowDistance"] = 15,
		["collectDuration"] = 3000,
		["collectAnim"] = { false,"amb@prop_human_parking_meter@female@idle_a","idle_a_female",true },
		["collectConsume"] = {
			["min"] = 3,
			["max"] = 5
		},
		["collectCoords"] = {
			{ 700.80,2884.67,50.25 },
			{ 648.34,2928.32,42.01 },
			{ 543.32,2882.64,43.01 },
			{ 647.15,3010.95,43.29 },
			{ 601.03,3024.50,41.98 }
           
		},
		["deliveryItem"] = "oilgallon"
	},
	["Grove"] = {
		["coords"] = {-140.24,-1587.42,34.24},
		["upgradeStress"] = 2,
		["routeCollect"] = true,
		["usingVehicle"] = false,
		["collectText"] = "COLETAR",
		["perm"] = "Grove",
		["collectButtonDistance"] = 1,
		["collectShowDistance"] = 15,
		["collectDuration"] = 3000,
		["collectAnim"] = { false,"amb@prop_human_parking_meter@female@idle_a","idle_a_female",true },
		["collectConsume"] = {
			["min"] = 3,
			["max"] = 5
		},
		["collectCoords"] = {
			{ 700.80,2884.67,50.25 },
			{ 648.34,2928.32,42.01 },
			{ 543.32,2882.64,43.01 },
			{ 647.15,3010.95,43.29 },
			{ 601.03,3024.50,41.98 }
           
		},
		["deliveryItem"] = "oilgallon"
	},
	["Fabricadebico"] = {
		["coords"] = {2859.90,2685.63,98.85},
		["upgradeStress"] = 2,
		["routeCollect"] = true,
		["usingVehicle"] = false,
		["collectText"] = "COLETAR",
		["perm"] = "Fabricadebico",
		["collectButtonDistance"] = 1,
		["collectShowDistance"] = 15,
		["collectDuration"] = 3000,
		["collectAnim"] = { false,"anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer",true },
		["collectConsume"] = {
			["min"] = 1,
			["max"] = 5
		},
		["collectCoords"] = {
			{ 2233.86,5578.23,54.10 },
			{ 2230.04,5578.47,53.97 },
			{ 2225.36,5578.71,53.89 },
			{ 2223.82,5578.95,53.90 },
			{ 2218.93,5579.19,53.91 },
			{ 2215.87,5575.66,53.69 },
			{ 2218.28,5575.56,53.70 },
			{ 2221.01,5575.33,53.72 },
			{ 2227.39,5574.96,53.78 },
			{ 2230.74,5574.70,53.89 },
			{ 2232.58,5576.75,54.02 },
			{ 2230.16,5577.00,53.93 },
			{ 2227.70,5577.16,53.84 },
			{ 2225.37,5577.31,53.83 },
			{ 2222.96,5577.57,53.84 },
			{ 2220.62,5577.77,53.83 },
			{ 2218.57,5577.73,53.84 },
			{ 2216.28,5577.98,53.82 },
		},
		["deliveryItem"] = "weedleaf"
	},
	["RepublicaTcheca"] = {
		["coords"] = {2319.36,2471.84,59.94},
		["upgradeStress"] = 2,
		["routeCollect"] = true,
		["usingVehicle"] = false,
		["collectText"] = "COLETAR",
		["perm"] = "RepublicaTcheca",
		["collectButtonDistance"] = 1,
		["collectShowDistance"] = 15,
		["collectDuration"] = 3000,
		["collectAnim"] = { false,"anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer",true },
		["collectConsume"] = {
			["min"] = 1,
			["max"] = 5
		},
		["collectCoords"] = {
			{1877.09,4849.85,45.18},
			{1878.25,4848.80,45.28},
			{1880.28,4846.71,45.34},
			{1881.27,4845.43,45.31},
			{1890.15,4836.83,45.95},
			{1891.49,4835.61,46.09},
			{1893.45,4833.70,46.11},
			{1894.54,4832.61,46.07},
			{1895.64,4831.56,46.03},
			
		},
		["deliveryItem"] = "cokeleaf"
	},
	["TropadaBelgica"] = {
		["coords"] = {2142.35,3920.73,36.38},
		["upgradeStress"] = 2,
		["routeCollect"] = true,
		["usingVehicle"] = false,
		["collectText"] = "COLETAR",
		["perm"] = "TropadaBelgica",
		["collectButtonDistance"] = 1,
		["collectShowDistance"] = 15,
		["collectDuration"] = 3000,
		["collectAnim"] = { false,"amb@prop_human_parking_meter@female@idle_a","idle_a_female",true },
		["collectConsume"] = {
			["min"] = 5,
			["max"] = 15
		},
		["collectCoords"] = {
			{ -2565.73,2307.22,33.21 },
            { -1130.08,2700.32,18.8 },
            { 61.27,2793.18,57.88 },
            { 260.29,2583.2,44.82 },
            { 1041.25,2652.35,39.55 },
            { 1980.44,3049.76,50.43 },
            { 2030.26,3184.44,45.14 },
            { 2271.01,3756.89,38.42 },
            { 2440.61,4068.04,38.06 },
            { 2567.03,4651.98,34.07 },
            { 2016.98,4987.82,42.09 },
            { 1647.24,4839.86,42.02 },
            { 1741.39,6419.53,35.05 },
            { 174.65,6642.57,31.58 },
            { 9.51,6506.25,31.53 },
            { -679.64,5800.59,17.32 },
            { -1490.33,4981.44,63.36 },
            { -2173.8,4282.25,49.12 },
            { -2304.61,3427.23,31.05 }
		},
		["deliveryItem"] = "Po"

	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local collectAmount = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- COLLECTCONSUME
-----------------------------------------------------------------------------------------------------------------------------------------
function Baixada.collectConsume(serviceName)
	local source = source
	local Passport = vRP.Passport(source)
	local License = vRP.Identities(source)
	local Account = vRP.Account(License)
	if Passport then
		local deliveryItem = routes[serviceName]["deliveryItem"]
		collectAmount[Passport] = math.random(routes[serviceName]["collectConsume"]["min"],routes[serviceName]["collectConsume"]["max"])

		if (vRP.InventoryWeight(Passport) + (itemWeight(deliveryItem) * parseInt(collectAmount[Passport]))) <= vRP.GetWeight(Passport) then	
			vRP.GenerateItem(Passport,deliveryItem,collectAmount[Passport],true)

			if deliveryItem == "dollars" then
				if vRP.LicensePremium(License) then
					vRP.GenerateItem(Passport,deliveryItem,collectAmount[Passport] * 0.10,true)
				end
			end

			if routes[serviceName]["upgradeStress"] > 0 then
				vRP.UpgradeStress(Passport,routes[serviceName]["upgradeStress"])
			end

			collectAmount[Passport] = nil

			return true
		else
			TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.",5000)
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKPERMISSION
-----------------------------------------------------------------------------------------------------------------------------------------
function Baixada.checkPermission(serviceName)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if routes[serviceName]["perm"] == nil then
			return true
		end

		if vRP.HasGroup(Passport,routes[serviceName]["perm"]) then
			return true
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERCONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Connect",function(Passport,source)
	vCLIENT.updateRoutes(source,routes)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ENSURE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("ensureroutes", function(source, args, rawCommand)
    local Passport = vRP.Passport(source)
    if Passport then
        TriggerClientEvent("Notify", source, "amarelo", "Script Recarregado", 3000)
        if vRP.HasGroup(Passport, "Admin", 1) then
            vCLIENT.updateRoutes(-1, routes)
            vCLIENT.updateRoutes(source, routes)
        end
    end
end)
