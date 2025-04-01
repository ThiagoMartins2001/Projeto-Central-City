
local zones = {
	{ ['x'] = -490.15, ['y'] = -695.1, ['z'] = 33.22, ['d'] = 50.0 },-- METRO
	{ ['x'] = 112.67, ['y'] = -143.65, ['z'] = 54.87, ['d'] = 50.0 }, -- CONCE
	{ ['x'] = 189.67, ['y'] = -943.17, ['z'] = 30.1, ['d'] = 75.0 }, -- PRAÇA
	{ ['x'] = 336.91, ['y'] = -1421.19, ['z'] = 32.52, ['d'] = 75.0 }, -- HOSPITAL

	{ ['x'] = 89.53, ['y'] = -1408.38, ['z'] = 29.43, ['d'] = 25.0 }, -- LOJA DE ROUPAS 01
	{ ['x'] = 430.0, ['y'] = -799.62, ['z'] = 29.5, ['d'] = 20.0 }, -- LOJA DE ROUPAS 04
	{ ['x'] = 125.55, ['y'] = -223.51, ['z'] = 54.56, ['d'] = 20.0 }, -- LOJA DE ROUPAS 10

	{ ['x'] = 542.77, ['y'] = 110.92, ['z'] = 96.58, ['d'] = 15.0 }, -- LANCHONETE 01
	{ ['x'] = -1193.23, ['y'] = -892.81, ['z'] = 13.99, ['d'] = 20.0 }, -- LANCHONETE 02
	{ ['x'] = 88.49, ['y'] = 286.83, ['z'] = 110.21, ['d'] = 25.0 }, -- LANCHONETE 03

	{ ['x'] = 88.49, ['y'] = 286.83, ['z'] = 110.21, ['d'] = 25.0 }, -- SALAO DE BELEZA 06
	
}

local notifIn = false
local notifOut = false
local closestZone = 1



--------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------
-- 
--------------------------------------------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end
	
	while true do
		local playerPed = GetPlayerPed(-1)
		local x, y, z = table.unpack(GetEntityCoords(playerPed, true))
		local minDistance = 100000
		for i = 1, #zones, 1 do
			dist = Vdist(zones[i].x, zones[i].y, zones[i].z, x, y, z)
			if dist < minDistance then
				minDistance = dist
				closestZone = i
			end
		end
		Citizen.Wait(15000)
	end
end)

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
---------   Setting of friendly fire on and off, disabling your weapons, and sending pNoty   -----------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end
	
	while true do
		
		local idle = 1000

		local player = GetPlayerPed(-1)
		local x,y,z = table.unpack(GetEntityCoords(player, true))
		local dist = Vdist(zones[closestZone].x, zones[closestZone].y, zones[closestZone].z, x, y, z)
	
		if dist <= zones[closestZone].d then  ------------------------------------------------------------------------------
			if not notifIn then																			  -- 
				idle = 5
				NetworkSetFriendlyFireOption(false)
				ClearPlayerWantedLevel(PlayerId())
				SetCurrentPedWeapon(player,GetHashKey("WEAPON_UNARMED"),true)
				-- TriggerEvent("Notify","sucesso","Você entrou em uma SafeZone.")
				notifIn = true
				--SetPedComponentVariation(player,1,0,0,2)
				notifOut = false
			end
		else
			if not notifOut then
				idle = 5
				NetworkSetFriendlyFireOption(true)
				-- TriggerEvent("Notify","aviso","Você saiu da SafeZone.")
				notifOut = true
				notifIn = false
			end
		end
		if notifIn then
			idle = 5
			DisableControlAction(2, 37, true) --  (Tab)
			DisablePlayerFiring(player,true) 
      		DisableControlAction(0, 106, true)
			DisableControlAction(0, 140, true) -- Disable INPUT_MELEE_ATTACK_LIGHT
			DisableControlAction(0, 263, true) -- Disable INPUT_MELEE_ATTACK1
			if IsDisabledControlJustPressed(2, 37) then --if Tab is pressed
				SetCurrentPedWeapon(player,GetHashKey("WEAPON_UNARMED"),true) 
				TriggerEvent("Notify","aviso","Você não pode usar armas em uma Safe Zone.")
			end
			if IsDisabledControlJustPressed(0, 106) then 
				SetCurrentPedWeapon(player,GetHashKey("WEAPON_UNARMED"),true) 
				-- TriggerEvent("Notify","aviso","Você não pode fazer isso em uma Safe Zone.")
			end
		end

		Citizen.Wait(idle)
	
	end
end)