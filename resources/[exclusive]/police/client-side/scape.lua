-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Intern = vec3(1679.94,2513.07,44.56)
local Extern = vec3(1838.04,2584.55,46.01)
-----------------------------------------------------------------------------------------------------------------------------------------
-- POLYPRISON
-----------------------------------------------------------------------------------------------------------------------------------------
local PolyPrison = PolyZone:Create({
	vector2(1599.45,2431.56),
	vector2(1543.26,2466.83),
	vector2(1540.58,2465.89),
	vector2(1537.80,2466.93),
	vector2(1536.79,2469.65),
	vector2(1537.92,2472.23),
	vector2(1540.80,2473.48),
	vector2(1536.07,2581.75),
	vector2(1533.29,2581.75),
	vector2(1531.35,2583.62),
	vector2(1531.15,2586.77),
	vector2(1533.02,2588.79),
	vector2(1536.04,2588.89),
	vector2(1568.57,2676.85),
	vector2(1566.71,2678.22),
	vector2(1566.08,2681.34),
	vector2(1567.89,2683.63),
	vector2(1570.29,2684.16),
	vector2(1572.85,2682.63),
	vector2(1647.19,2755.03),
	vector2(1645.70,2757.99),
	vector2(1646.85,2760.73),
	vector2(1649.50,2761.82),
	vector2(1652.07,2760.78),
	vector2(1653.18,2758.50),
	vector2(1769.56,2762.85),
	vector2(1770.16,2765.12),
	vector2(1772.76,2766.68),
	vector2(1775.47,2765.86),
	vector2(1777.09,2763.44),
	vector2(1776.01,2760.06),
	vector2(1836.80,2711.40),
	vector2(1846.36,2702.30),
	vector2(1847.30,2702.94),
	vector2(1849.87,2703.27),
	vector2(1852.21,2701.25),
	vector2(1852.37,2698.60),
	vector2(1850.69,2696.25),
	vector2(1848.18,2695.90),
	vector2(1823.39,2624.75),
	vector2(1825.63,2624.59),
	vector2(1827.44,2622.50),
	vector2(1827.38,2619.79),
	vector2(1823.81,2616.74),
	vector2(1827.65,2612.55),
	vector2(1851.68,2612.47),
	vector2(1851.87,2567.91),
	vector2(1832.34,2567.99),
	vector2(1819.15,2568.87),
	vector2(1817.03,2532.44),
	vector2(1824.94,2479.18),
	vector2(1826.98,2478.19),
	vector2(1828.07,2475.56),
	vector2(1826.83,2472.86),
	vector2(1824.38,2471.87),
	vector2(1821.40,2472.90),
	vector2(1764.08,2413.05),
	vector2(1765.36,2410.49),
	vector2(1764.36,2407.72),
	vector2(1761.70,2406.47),
	vector2(1758.85,2407.50),
	vector2(1757.83,2410.91),
	vector2(1662.19,2396.35),
	vector2(1662.43,2392.94),
	vector2(1660.08,2390.91),
	vector2(1657.42,2391.12),
	vector2(1655.45,2393.29),
	vector2(1655.68,2396.55)
},{ name = "Prison" })
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADPRISON
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		if LocalPlayer["state"]["Prison"] then
			local Ped = PlayerPedId()
			local Coords = GetEntityCoords(Ped)
			if not PolyPrison:isPointInside(Coords) then
				SetEntityCoords(Ped,Intern)
				TriggerEvent("Notify","amarelo","O agente penitenciário encontrou você tentando escapar.",5000,"Sistema Penitenciário")
			end
			if GetEntityHealth(Ped) <= 100 then
				exports["survival"]:Revive(110)
			end
		end
		Wait(1000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PRESET
-----------------------------------------------------------------------------------------------------------------------------------------
local Preset = {
	["mp_m_freemode_01"] = {
		["hat"] = { item = -1, texture = 0 },
		["pants"] = { item = 27, texture = 2 },
		["vest"] = { item = 0, texture = 0 },
		["bracelet"] = { item = -1, texture = 0 },
		["backpack"] = { item = 0, texture = 0 },
		["decals"] = { item = 0, texture = 0 },
		["mask"] = { item = 0, texture = 0 },
		["shoes"] = { item = 103, texture = 0 },
		["tshirt"] = { item = 15, texture = 0 },
		["torso"] = { item = 237, texture = 0 },
		["accessory"] = { item = 0, texture = 0 },
		["watch"] = { item = -1, texture = 0 },
		["arms"] = { item = 175, texture = 0 },
		["glass"] = { item = 0, texture = 0 },
		["ear"] = { item = -1, texture = 0 }
	},
	["mp_f_freemode_01"] = {
		["hat"] = { item = -1, texture = 0 },
		["pants"] = { item = 152, texture = 0 },
		["vest"] = { item = 0, texture = 0 },
		["bracelet"] = { item = -1, texture = 0 },
		["backpack"] = { item = 0, texture = 0 },
		["decals"] = { item = 0, texture = 0 },
		["mask"] = { item = 0, texture = 0 },
		["shoes"] = { item = 25, texture = 0 },
		["tshirt"] = { item = 14, texture = 0 },
		["torso"] = { item = 418, texture = 0 },
		["accessory"] = { item = 0, texture = 0 },
		["watch"] = { item = -1, texture = 0 },
		["arms"] = { item = 86, texture = 0 },
		["glass"] = { item = 0, texture = 0 },
		["ear"] = { item = -1, texture = 0 }
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- Police:PRISIONER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Police:Prisioner")
AddEventHandler("Police:Prisioner",function(Status)
	LocalPlayer["state"]["Prison"] = Status
	if LocalPlayer["state"]["Prison"] then
		SetEntityCoords(PlayerPedId(),Intern)
		exports["skinshop"]:Apply(Preset[GetEntityArchetypeName(PlayerPedId())])
	else
		exports["skinshop"]:Apply(LocalPlayer["state"]["Skinshop"])
		SetEntityCoords(PlayerPedId(),Extern)
	end
end)