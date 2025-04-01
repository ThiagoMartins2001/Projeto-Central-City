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
Tunnel.bindInterface("doors",Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GLOBALSTATE
-----------------------------------------------------------------------------------------------------------------------------------------
GlobalState["Doors"] = {
	["1"] = { Coords = vec3(1844.99,2604.81,44.63), Hash = 741314661, Disabled = false, Lock = true, Distance = 7, Perm = "Emergency" },
	["2"] = { Coords = vec3(1818.54,2604.40,44.61), Hash = 741314661, Disabled = false, Lock = true, Distance = 7, Perm = "Emergency" },

	["21"] = { Coords = vec3(-352.02,-258.61,36.06), Hash = -543497392, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police", Other = "22" },
	["22"] = { Coords = vec3(-353.34,-260.38,36.06), Hash = -543497392, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police", Other = "21" },
	["23"] = { Coords = vec3(-344.54,-248.32,36.06), Hash = -543497392, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police", Other = "24" },
	["24"] = { Coords = vec3(-345.86,-249.89,36.06), Hash = -543497392, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police", Other = "23" },
	["25"] = { Coords = vec3(-333.04,-267.37,36.06), Hash = 320433149, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police", Other = "26" },
	["26"] = { Coords = vec3(-331.79,-265.66,36.06), Hash = 320433149, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police", Other = "25" },
	["27"] = { Coords = vec3(-315.19,-282.23,35.59), Hash = -543497392, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police", Other = "28" },
	["28"] = { Coords = vec3(-316.25,-283.88,35.59), Hash = -543497392, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police", Other = "27" },
	["29"] = { Coords = vec3(-316.4,-283.96,39.87), Hash = -543497392, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police", Other = "30" },
	["30"] = { Coords = vec3(-314.99,-282.15,39.87), Hash = -543497392, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police", Other = "29" },
	["31"] = { Coords = vec3(-327.41,-253.27,34.39), Hash = 560252123, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police", Other = "32" },
	["32"] = { Coords = vec3(-328.57,-254.87,34.86), Hash = -1796068320, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police", Other = "31" },
	["33"] = { Coords = vec3(-310.66,-277.47,31.71), Hash = 560252123, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police", Other = "34" },
	["34"] = { Coords = vec3(-311.84,-279.07,31.71), Hash = -1796068320, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police", Other = "33" },
	["35"] = { Coords = vec3(-315.13,-276.07,32.05), Hash = 631614199, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police" },
	["36"] = { Coords = vec3(-339.61,-270.81,32.07), Hash = 631614199, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police" },
	["37"] = { Coords = vec3(-333.24,-274.27,32.07), Hash = 631614199, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police" },
	["38"] = { Coords = vec3(-329.53,-276.8,32.07), Hash = 631614199, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police" },
	["39"] = { Coords = vec3(-326.0,-279.46,32.07), Hash = 631614199, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police" },
	["40"] = { Coords = vec3(-322.41,-282.02,32.07), Hash = 631614199, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police" },
	["41"] = { Coords = vec3(-338.78,-266.22,39.87), Hash = -1320876379, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police" },
	["42"] = { Coords = vec3(-335.02,-268.82,39.87), Hash = -1320876379, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police" },
	["42"] = { Coords = vec3(-335.02,-268.82,39.87), Hash = -1320876379, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police" },
	["43"] = { Coords = vec3(-331.52,-271.39,39.87), Hash = -1320876379, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police" },
	["44"] = { Coords = vec3(-328.83,-272.39,39.87), Hash = -1320876379, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police" },
	["45"] = { Coords = vec3(-325.66,-268.86,39.87), Hash = -1320876379, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police" },
	["46"] = { Coords = vec3(-319.04,-275.57,39.87), Hash = -1320876379, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police" },
	["47"] = { Coords = vec3(-322.1,-276.97,39.87), Hash = -1320876379, Disabled = false, Lock = true, Distance = 1.75, Perm = "Police" },


	["51"] = { Coords = vec3(-1182.48,-885.69,13.88), Hash = 1143532813, Disabled = false, Lock = true, Distance = 1.75, Perm = "BurgerShot", Other = "38" },
	["52"] = { Coords = vec3(-1181.06,-887.67,13.88), Hash = -1890974902, Disabled = false, Lock = true, Distance = 1.75, Perm = "BurgerShot", Other = "37" },
	["53"] = { Coords = vec3(-1188.46,-896.21,13.88), Hash = 2010236044, Disabled = false, Lock = true, Distance = 1.75, Perm = "BurgerShot" },
	["54"] = { Coords = vec3(-1197.71,-904.24,13.88), Hash = 1465287574, Disabled = false, Lock = true, Distance = 1.75, Perm = "BurgerShot" },
	["55"] = { Coords = vec3(-1197.71,-904.24,13.88), Hash = 1465287574, Disabled = false, Lock = true, Distance = 1.75, Perm = "BurgerShot" },

	["56"] = { Coords = vec3(99.74,-1295.56,29.32), Hash = 401003935, Disabled = false, Lock = true, Distance = 1.75, Perm = "Vanilla" },
	["57"] = { Coords = vec3(95.58,-1285.00,29.28), Hash = 401003935, Disabled = false, Lock = true, Distance = 1.75, Perm = "Vanilla" },
	["58"] = { Coords = vec3(117.63,-1304.98,29.32), Hash = 488457389, Disabled = false, Lock = true, Distance = 1.75, Perm = "Vanilla" },
	["59"] = { Coords = vec3(101.53,-1305.33,21.11), Hash = 401003935, Disabled = false, Lock = true, Distance = 1.75, Perm = "Vanilla" },
	["60"] = { Coords = vec3(121.01,-1294.08,21.11), Hash = 401003935, Disabled = false, Lock = true, Distance = 1.75, Perm = "Vanilla" },
	["61"] = { Coords = vec3(109.19,-1272.50,21.11), Hash = 401003935, Disabled = false, Lock = true, Distance = 1.75, Perm = "Vanilla" },
	["62"] = { Coords = vec3(88.16,-1284.50,21.11), Hash = 401003935, Disabled = false, Lock = true, Distance = 1.75, Perm = "Vanilla" },
	["63"] = { Coords = vec3(128.58,-1298.18,29.29), Hash = 401003935, Disabled = false, Lock = true, Distance = 1.75, Perm = "Vanilla" },
	
	["64"] = { Coords = vec3(-1394.03,-636.21,28.70), Hash = -822900180, Disabled = false, Lock = true, Distance = 1.75, Perm = "Bahamas" },
	["65"] = { Coords = vec3(-1392.07,-639.83,28.68), Hash = -2003105485, Disabled = false, Lock = true, Distance = 1.75, Perm = "Bahamas" },
	["66"] = { Coords = vec3(-1392.52,-625.13,30.32), Hash = 401003935, Disabled = false, Lock = true, Distance = 1.75, Perm = "Bahamas" },
	["67"] = { Coords = vec3(-1371.37,-607.76,30.72), Hash = 401003935, Disabled = false, Lock = true, Distance = 1.75, Perm = "Bahamas" },
	["68"] = { Coords = vec3(-1369.44,-616.48,30.32), Hash = -1747430008, Disabled = false, Lock = true, Distance = 0.5, Perm = "Bahamas", Other = "69" },
	["69"] = { Coords = vec3(-1370.16,-616.87,30.32), Hash = -1747430008, Disabled = false, Lock = true, Distance = 0.5, Perm = "Bahamas", Other = "68" },
	["70"] = { Coords = vec3(-1388.74,-587.49,30.22), Hash = -1119680854, Disabled = false, Lock = true, Distance = 1.75, Perm = "Bahamas", Other = "71" },
	["71"] = { Coords = vec3(-1387.74,-586.94,30.32), Hash = -1119680854, Disabled = false, Lock = true, Distance = 1.75, Perm = "Bahamas", Other = "70" },
	
	["72"] = { Coords = vec3(553.07,-200.32,58.16), Hash = 1525532175, Disabled = false, Lock = true, Distance = 1.75, Perm = "AutoExotic"},
	["73"] = { Coords = vec3(558.11,-194.87,58.15), Hash = 1525532175, Disabled = false, Lock = true, Distance = 1.75, Perm = "AutoExotic"},
	["74"] = { Coords = vec3(548.86,-202.18,54.51), Hash = -836126368, Disabled = false, Lock = true, Distance = 1.75, Perm = "AutoExotic"},
	["75"] = { Coords = vec3(541.33,-189.32,54.51), Hash = -836126368, Disabled = false, Lock = true, Distance = 1.75, Perm = "AutoExotic"},
	["76"] = { Coords = vec3(541.14,-179.26,54.51), Hash = -836126368, Disabled = false, Lock = true, Distance = 1.75, Perm = "AutoExotic"},
	["77"] = { Coords = vec3(548.61,-165.67,54.51), Hash = -836126368, Disabled = false, Lock = true, Distance = 1.75, Perm = "AutoExotic"},
	["78"] = { Coords = vec3(541.02,-196.93,54.51), Hash = -1924863600, Disabled = false, Lock = true, Distance = 1.75, Perm = "AutoExotic"},

	["80"] = { Coords = vec3(66.76,6526.49,31.25), Hash = 154209674, Disabled = false, Lock = true, Distance = 1.75, Perm = "DKing" },

	["81"] = { Coords = vec3(299.56,-584.75,43.28), Hash = 1138474139, Disabled = false, Lock = true, Distance = 1.75, Perm = "Paramedic", Other = "82" },
	["82"] = { Coords = vec3(299.56,-584.75,43.28), Hash = 1674378365, Disabled = false, Lock = true, Distance = 1.75, Perm = "Paramedic", Other = "81" },
	["83"] = { Coords = vec3(308.75,-573.51,43.27), Hash = -164945599, Disabled = false, Lock = true, Distance = 1.75, Perm = "Paramedic", Other = "84" },
	["84"] = { Coords = vec3(309.71,-573.89,43.27), Hash = -164945599, Disabled = false, Lock = true, Distance = 1.75, Perm = "Paramedic", Other = "83" },
	["85"] = { Coords = vec3(305.09,-593.87,43.27), Hash = -1999925837, Disabled = false, Lock = true, Distance = 1.75, Perm = "Paramedic"},
	["86"] = { Coords = vec3(309.98,-592.60,43.27), Hash = -1999925837, Disabled = false, Lock = true, Distance = 1.75, Perm = "Paramedic"},
	["87"] = { Coords = vec3(318.51,-595.74,43.27), Hash = -1999925837, Disabled = false, Lock = true, Distance = 1.75, Perm = "Paramedic"},
	["88"] = { Coords = vec3(322.54,-597.12,43.27), Hash = -1999925837, Disabled = false, Lock = true, Distance = 1.75, Perm = "Paramedic"},
	["89"] = { Coords = vec3(321.95,-589.42,38.32), Hash = -1999925837, Disabled = false, Lock = true, Distance = 1.75, Perm = "Paramedic"},
	["90"] = { Coords = vec3(319.05,-595.82,48.22), Hash = -1999925837, Disabled = false, Lock = true, Distance = 1.75, Perm = "Paramedic"},
	["91"] = { Coords = vec3(319.05,-595.82,48.22), Hash = -1999925837, Disabled = false, Lock = true, Distance = 1.75, Perm = "Paramedic"},
	["92"] = { Coords = vec3(322.83,-589.54,48.21), Hash = -1999925837, Disabled = false, Lock = true, Distance = 1.75, Perm = "Paramedic"},
	["93"] = { Coords = vec3(311.28,-588.67,50.68), Hash = -1999925837, Disabled = false, Lock = true, Distance = 1.75, Perm = "Paramedic"},
	["99"] = { Coords = vec3(349.43,-578.65,38.33), Hash =  2056450362, Disabled = false, Lock = true, Distance = 1.75, Perm = "Paramedic"},

	["94"] = { Coords = vec3(114.06,6623.20,31.79), Hash = -822900181, Disabled = false, Lock = true, Distance = 1.75, Perm = "CentralCustoms"},
	["95"] = { Coords = vec3(108.60,6617.82,31.79), Hash = -822900181, Disabled = false, Lock = true, Distance = 1.75, Perm = "CentralCustoms"},
	["96"] = { Coords = vec3(106.31,6620.14,31.83), Hash = 1544229216, Disabled = false, Lock = true, Distance = 1.75, Perm = "CentralCustoms"},
	["97"] = { Coords = vec3(119.06,6627.27,32.01), Hash = -287662406, Disabled = false, Lock = true, Distance = 1.75, Perm = "CentralCustoms"},
	["98"] = { Coords = vec3(118.53,6639.74,32.02), Hash = -1259801187, Disabled = false, Lock = true, Distance = 1.75, Perm = "CentralCustoms"},

	["99"] = { Coords = vec3(2022.46,3367.51,46.79), Hash = -1982806283, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao01"},
	["100"] = { Coords = vec3(2030.53,3375.79,46.80), Hash = 2009233619, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao01"},
	["101"] = { Coords = vec3(2036.70,3374.89,46.80), Hash = 2009233619, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao01"},
	["102"] = { Coords = vec3(2027.07,3356.07,46.80), Hash = 2009233619, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao01"},
	["103"] = { Coords = vec3(2033.39,3354.94,46.80), Hash = 2009233619, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao01"},
	["104"] = { Coords = vec3(2006.31,3382.55,46.73), Hash = -2112609943, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao01"},
	["105"] = { Coords = vec3(2014.80,3392.60,46.40), Hash = 637866732, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao01"},
	["106"] = { Coords = vec3(2049.59,3362.31,45.36), Hash = 742146965, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao01"},
	["107"] = { Coords = vec3(3421.48,4895.16,36.00), Hash = 1581555540, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao02", Other = "108"},
	["108"] = { Coords = vec3(3417.16,4899.40,36.00), Hash = 1581555540, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao02", Other = "107"},
	["109"] = { Coords = vec3(3433.69,4891.74,36.00), Hash = 2052512905, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao02"},
	["110"] = { Coords = vec3(3439.17,4897.35,36.00), Hash = 2052512905, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao02"},
	["111"] = { Coords = vec3(3419.05,4917.36,36.00), Hash = 2052512905, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao02"},
	["112"] = { Coords = vec3(3413.58,4911.98,36.00), Hash = 2052512905, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao02"},
	["113"] = { Coords = vec3(3437.19,4914.42,36.00), Hash = -259544499, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao02", Other = "114"},
	["114"] = { Coords = vec3(3436.25,4915.39,36.00), Hash = -259544499, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao02", Other = "113"},
	--["115"] = { Coords = vec3(3457.09,4935.44,35.80), Hash = 1297724391, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao02", Other = "116"},
	--["116"] = { Coords = vec3(3456.50,4935.95,35.80), Hash = 1297724391, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao02", Other = "115"},
	
	--Continuar editando depois (Deixa comigo Attila!)
	["117"] = { Coords = vec3(-97.93,6647.01,40.93), Hash = -90456267, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao03"},
	["118"] = { Coords = vec3(-95.38,6600.17,30.63), Hash = -768779561, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao03",Other = "121" },
	["119"] = { Coords = vec3(-95.38,6600.17,30.63), Hash = -1738619932, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao03",Other = "120" },
    ["120"] = { Coords = vec3(-93.91,6601.21,30.63), Hash = -768779561, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao03",Other = "119" },
	["121"] = { Coords = vec3(-93.91,6601.21,30.63), Hash = -1738619932, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao03",Other = "118" },
	["122"] = { Coords = vec3(-506.20,4942.61,147.52), Hash = -1636670283, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao04"},
	["123"] = { Coords = vec3(-539.70,5005.41,159.92), Hash = -264728216, Disabled = false, Lock = true, Distance = 1.75, Perm = "Mansao04"},
	-----------------------

	["124"] = { Coords = vec3(335.53,181.54,103.00), Hash = 37530187, Disabled = false, Lock = true, Distance = 1.75, Perm = "Cinema",Other = "125" },
	["125"] = { Coords = vec3(336.17,181.33,103.00), Hash = 37530187, Disabled = false, Lock = true, Distance = 1.75, Perm = "Cinema",Other = "124" },
	["126"] = { Coords = vec3(340.75,179.60,103.00), Hash = 37530187, Disabled = false, Lock = true, Distance = 1.75, Perm = "Cinema",Other = "127" },
	["127"] = { Coords = vec3(340.13,179.90,103.00), Hash = 37530187, Disabled = false, Lock = true, Distance = 1.75, Perm = "Cinema",Other = "126" },
	["128"] = { Coords = vec3(361.01,195.54,103.00), Hash = -1747430008, Disabled = false, Lock = true, Distance = 1.75, Perm = "Cinema",Other = "129" },
	["129"] = { Coords = vec3(360.35,195.80,103.00), Hash = -1747430008, Disabled = false, Lock = true, Distance = 1.75, Perm = "Cinema",Other = "128" },
	["130"] = { Coords = vec3(339.84,214.64,102.90), Hash = -1747430008, Disabled = false, Lock = true, Distance = 1.75, Perm = "Cinema",Other = "131" },
	["131"] = { Coords = vec3(339.12,214.91,102.90), Hash = -1747430008, Disabled = false, Lock = true, Distance = 1.75, Perm = "Cinema",Other = "130" },
	["132"] = { Coords = vec3(340.43,206.65,103.00), Hash = 1226684428, Disabled = false, Lock = true, Distance = 1.75, Perm = "Cinema"},
	["133"] = { Coords = vec3(343.39,200.69,98.65), Hash = 1226684428, Disabled = false, Lock = true, Distance = 1.75, Perm = "Cinema"},
	["134"] = { Coords = vec3(350.61,198.70,98.65), Hash = 1226684428, Disabled = false, Lock = true, Distance = 1.75, Perm = "Cinema"},
	["135"] = { Coords = vec3(356.00,197.32,103.00), Hash = 1226684428, Disabled = false, Lock = true, Distance = 1.75, Perm = "Cinema"},

	["136"] = { Coords = vec3(-280.43,6054.25,33.06), Hash = 1525532175, Disabled = false, Lock = true, Distance = 1.75, Perm = "Prf"},
	["137"] = { Coords = vec3(-287.17,6048.64,33.08), Hash = -1320876379, Disabled = false, Lock = true, Distance = 1.75, Perm = "Prf"},
	["138"] = { Coords = vec3(-288.05,6046.61,33.08), Hash = 1525532175, Disabled = false, Lock = true, Distance = 1.75, Perm = "Prf",Other = "139" },
	["139"] = { Coords = vec3(-288.84,6045.87,33.08), Hash = 1525532175, Disabled = false, Lock = true, Distance = 1.75, Perm = "Prf",Other = "138" },


	["999"] = { Coords = vec3(-287.15,6048.74,33.07), Hash = -1508355822, Disabled = true, Lock = true, Distance = 1.75, Perm = "Admin" }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- PERMISSION
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Permission(Number)
	local source = source
	local Passport = vRP.Passport(source)
	local Doors = GlobalState["Doors"]
	if Passport and Doors[Number] and Doors[Number]["Perm"] then
		if (SplitTwo(Doors[Number]["Perm"]) and vRP.HasGroup(Passport,SplitOne(Doors[Number]["Perm"]),parseInt(SplitTwo(Doors[Number]["Perm"]))) and vRP.HasService(Passport,SplitOne(Doors[Number]["Perm"]))) or (vRP.HasGroup(Passport,Doors[Number]["Perm"]) or vRP.HasService(Passport,Doors[Number]["Perm"])) then
			Doors[Number]["Lock"] = not Doors[Number]["Lock"]
			if Doors[Number]["Other"] then
				local Second = Doors[Number]["Other"]
				Doors[Second]["Lock"] = not Doors[Second]["Lock"]
			end
			GlobalState:set("Doors",Doors,true)
			vRPC.playAnim(source,true,Doors[Number]["Other"] and {"veh@mower@base","start_engine"} or {"anim@heists@keycard@","exit"},false)
			if Doors[Number]["Lock"] then
				TriggerClientEvent("sounds:Private",source,"houses_door_lock",0.5)
			else
				TriggerClientEvent("sounds:Private",source,"houses_door_unlock",0.5)
			end
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PROXIMITY
-----------------------------------------------------------------------------------------------------------------------------------------
exports("Proximity",function(Coords)
	for Index,Value in pairs(GlobalState["Doors"]) do
		if not Value["Disabled"] and Value["Lock"] then
			if #(Coords - Value["Coords"]) <= Value["Distance"] then
				return Index
			end
		end
	end
	return false
end)