-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:CARRY
----------0.27-------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("inventory:Carry")
AddEventHandler("inventory:Carry",function(OtherSource,Mode,Hancuff)
	local OtherServer = GetPlayerFromServerId(OtherSource)
	if Mode == "Attach" then
		while not LocalPlayer["state"]["Carry"] do
			Wait(0)
		end
		if LocalPlayer["state"]["Death"] then
			NetworkResurrectLocalPlayer(GetEntityCoords(GetPlayerPed(OtherServer)),0.0)
			SetFacialIdleAnimOverride(PlayerPedId(),"mood_sleeping_1",0)
			SetEntityHealth(PlayerPedId(),100)
			vRP.playAnim(false,{"nm","firemans_carry"},true)
			AttachEntityToEntity(PlayerPedId(), GetPlayerPed(OtherServer), 0, 0.27, 0.15, 0.63, 0.5, 0.5, 0.0, true,true,false,true,2,true)
		else
			if Hancuff then
				AttachEntityToEntity(PlayerPedId(), GetPlayerPed(OtherServer), 11816,0.0,0.5,0.0,0.0,0.0,0.0,true,true,false,true,2,true)
			else
				AttachEntityToEntity(PlayerPedId(), GetPlayerPed(OtherServer), 0, 0.27, 0.15, 0.63, 0.5, 0.5, 0.0, true,true,false,true,2,true)
			end
		end
	elseif Mode == "Detach" then
		ClearPedTasks(PlayerPedId())
		DetachEntity(PlayerPedId())
		if LocalPlayer["state"]["Death"] then
			Wait(100)
			SetEntityHealth(PlayerPedId(),0)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CARREGAR NO H
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        local idle = 1000
        if not IsPedInAnyVehicle(PlayerPedId()) then
            idle = 5
            if IsControlJustPressed(0,74) then
				if not LocalPlayer["state"]["Death"] then
					TriggerServerEvent("inventory:Carregar")
				end
            end
        end
        Citizen.Wait(idle)
    end
end)





