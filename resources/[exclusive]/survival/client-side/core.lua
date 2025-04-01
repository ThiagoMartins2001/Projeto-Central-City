-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRPS = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("survival", Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local DeathTimer = 300
local Cooldown = GetGameTimer()
local GlockGold = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local TimeDistance = 999
		if not LocalPlayer.state.inArena and LocalPlayer["state"]["Active"] then
			local Ped = PlayerPedId()
			if LocalPlayer["state"]["Death"] then
				TimeDistance = 1

				DisableControlAction(0, 18, true)
				DisableControlAction(0, 22, true)
				DisableControlAction(0, 24, true)
				DisableControlAction(0, 25, true)
				DisableControlAction(0, 68, true)
				DisableControlAction(0, 70, true)
				DisableControlAction(0, 91, true)
				DisableControlAction(0, 69, true)
				DisableControlAction(0, 75, true)
				DisableControlAction(0, 140, true)
				DisableControlAction(0, 142, true)
				DisableControlAction(0, 257, true)
				DisablePlayerFiring(Ped, true)

				if GetGameTimer() >= Cooldown then
					Cooldown = GetGameTimer() + 1000
					if DeathTimer > 0 then
						DeathTimer = DeathTimer - 1
						SendNUIMessage({ name = "Update", payload = DeathTimer })
					end
				end

				if IsPedInAnyVehicle(Ped) then
					local Vehicle = GetVehiclePedIsUsing(Ped)
					if GetPedInVehicleSeat(Vehicle, -1) == Ped then
						SetVehicleEngineOn(Vehicle, false, true, true)
					end
				end
			else
				if not LocalPlayer["state"]["Death"] and GetEntityHealth(Ped) <= 100 then
					LocalPlayer["state"]["Death"] = true
					LocalPlayer["state"]:set("Invincible", true, false)
					NetworkSetFriendlyFireOption(false)
					SetEntityInvincible(Ped, false)

					if GetEntityHealth(Ped) > 100 then
						SetEntityHealth(Ped, 100)
					end

					FreezeEntityPosition(Ped, false)

					if GlockGold then
						DeathTimer = 150
					else
						DeathTimer = 300
					end

					TriggerEvent("hud:RemoveHood")
					TriggerEvent("hud:ScubaRemove")
					TriggerEvent("radio:RadioClean")
					TriggerServerEvent("inventory:Cancel")
					TriggerServerEvent("paramedic:bloodDeath")
					exports["pma-voice"]:Mute(true)

					SendNUIMessage({ name = "Open", payload = true })
					TriggerEvent("inventory:preventWeapon")
					TriggerEvent("hud:Active", false)
					TriggerEvent("inventory:Close")
				end
			end
		end

		Wait(TimeDistance)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKDEATH
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.CheckDeath()
	return LocalPlayer["state"]["Death"]
end

-----------------------------------------------------------------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------------------------------------------------------------------
exports("CheckDeath", function()
	return LocalPlayer["state"]["Death"]
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEATHTIMER
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.DeathTimer()
	return DeathTimer
end

-----------------------------------------------------------------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------------------------------------------------------------------
exports("DeathTimer", function()
	return DeathTimer
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RESPAWN
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Respawn()
	exports["survival"]:Respawn()
end

-----------------------------------------------------------------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------------------------------------------------------------------
exports("Respawn", function()
	if LocalPlayer["state"]["Death"] then
		LocalPlayer["state"]["Death"] = false
		DeathTimer = 10
		SetFacialIdleAnimOverride(Ped, "mood_sleeping_1", 0)
	end

	local Coords = GetEntityCoords(PlayerPedId())
	NetworkResurrectLocalPlayer(Coords, 0.0)

	ClearPedTasks(PlayerPedId())
	NetworkSetFriendlyFireOption(true)
	ClearPedBloodDamage(PlayerPedId())
	SetEntityHealth(PlayerPedId(), 200)
	SetEntityInvincible(PlayerPedId(), false)
	ClearFacialIdleAnimOverride(PlayerPedId())
	LocalPlayer["state"]:set("Invincible", false, false)

	TriggerEvent("paramedic:Reset")
	TriggerEvent("inventory:CleanWeapons")
	LocalPlayer["state"]:set("Handcuff", false, true)
	exports["pma-voice"]:Mute(false)

	DoScreenFadeOut(0)
	TriggerEvent("hud:Active", true)
	SetEntityHeading(PlayerPedId(), 283.47)
	SendNUIMessage({ name = "Open", payload = false })
	SetEntityCoords(PlayerPedId(), 294.20,-611.98,43.37)

	SetTimeout(1000, function()
		DoScreenFadeIn(1000)
	end)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REVIVE
-----------------------------------------------------------------------------------------------------------------------------------------
exports("Revive", function(Health)
	local Ped = PlayerPedId()
	local Coords = GetEntityCoords(Ped)
	NetworkResurrectLocalPlayer(Coords, 0.0)
	SetFacialIdleAnimOverride(Ped, "mood_sleeping_1", 0)
	SetEntityHealth(Ped, Health)
	SetEntityInvincible(Ped, false)
	LocalPlayer["state"]:set("Invincible", false, false)
	if LocalPlayer["state"]["Death"] then
		LocalPlayer["state"]["Death"] = false
		DeathTimer = 300

		ClearPedTasks(Ped)
		ClearFacialIdleAnimOverride(Ped)
		NetworkSetFriendlyFireOption(true)

		TriggerEvent("hud:Active", true)
		SendNUIMessage({ name = "Open", payload = false })

		exports["pma-voice"]:Mute(false)
		TriggerEvent("paramedic:Reset")
		ClearPedTasks(Ped)
		ClearPedSecondaryTask(Ped)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REVIVE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Revive(Health)
	exports["survival"]:Revive(Health)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SURVIVAL:DeathLogin
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("survival:DeathLogin")
AddEventHandler("survival:DeathLogin", function()
	DeathTimer = 240
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SURVIVAL:DeathLogin
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("survival:GlockGold")
AddEventHandler("survival:GlockGold", function()
	GlockGold = true
end)
