-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
Stockades = {}
local Cooldown = os.time()
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:STOCKADE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("inventory:Stockade")
AddEventHandler("inventory:Stockade",function(Vehicle)
	local source = source
	local Plate = Vehicle[1]
	local Passport = vRP.Passport(source)


	local Total = 0
    local Groups = vRP.Groups()
    for key,Value in pairs(Groups) do
        if Value["Type"] == "Police" then
            local Service,Amount = vRP.NumPermission(key)
            Total = Total + Amount
        end
    end

	if not Active[Passport] and Total >= 0--[[ 10 ]] and not vRP.PassportPlate(Plate) then
		if not Stockades[Plate] then
			Stockades[Plate] = 10
			Cooldown = os.time() + 3600

			local Coords = vRP.GetEntityCoords(source)
			local Groups = vRP.Groups()
			for key,Value in pairs(Groups) do
				if Value["Type"] == "Police" then
					local Service,Amount = vRP.NumPermission(key)
					for Passports,Sources in pairs(Service) do
						async(function()
							TriggerClientEvent("sounds:Private",Sources,"crime",0.5)
							TriggerClientEvent("NotifyPush",Sources,{ code = 31, title = "Roubo a Carro Forte", x = Coords["x"], y = Coords["y"], z = Coords["z"], color = 44, red = true })
						end)
					end
				end
			end
		end

		if Stockades[Plate] <= 0 then
			TriggerClientEvent("Notify",source,"amarelo","Compartimento vazio.",5000,"Aviso")

			return false
		end

		if not vCLIENT.CheckWeapon(source,"WEAPON_CROWBAR") then
			TriggerClientEvent("Notify",source,"amarelo","<b>Pé de Cabra</b> não encontrado.",5000,"Aviso")

			return false
		end

		Active[Passport] = os.time() + 20
		Stockades[Plate] = Stockades[Plate] - 1
		Player(source)["state"]["Buttons"] = true
		TriggerClientEvent("Progress",source,"Roubando",20000)
		vRPC.playAnim(source,false,{"oddjobs@shop_robbery@rob_till","loop"},true)

		repeat
			if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
				vRPC.removeObjects(source)
				Active[Passport] = nil
				Player(source)["state"]["Buttons"] = false
				vRP.GenerateItem(Passport,"dollars2",math.random(6500,8000),true)
			end

			Wait(100)
		until not Active[Passport]
	end
end)