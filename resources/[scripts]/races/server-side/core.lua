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
Tunnel.bindInterface("races",Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Payments = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- FINISH
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Finish(Number,Points)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local vehName = vRPC.VehicleName(source)
		local Consult = vRP.Query("races/Result",{ Race = Number, Passport = Passport })
		if Consult[1] then
			if parseInt(Points) < parseInt(Consult[1]["Points"]) then
				vRP.Query("races/Records",{ Race = Number, Passport = Passport, Vehicle = VehicleName(vehName), Points = parseInt(Points) })
			end
		else
			local Identity = vRP.Identity(Passport)
			vRP.Query("races/Insert",{ Race = Number, Passport = Passport, Name = Identity["name"].." "..Identity["name2"], Vehicle = VehicleName(vehName), Points = parseInt(Points) })
		end

		if Payments[Passport] then
			local Rand = math.random(Races[Number]["Payment"][1],Races[Number]["Payment"][1])
			vRP.GenerateItem(Passport,"dollars2",Rand,true)
			local Ranking = vRP.Query("races/TopFive",{ Race = Number })
			if Ranking[1] then
				if parseInt(Ranking[1]["Points"]) > parseInt(Points) then
					vRP.GenerateItem(Passport,"racetrophy",1,true)
				end
			end
			TriggerEvent("blipsystem:Exit",source)
			Payments[Passport] = nil
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- START
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Start(Number)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and Races[Number] then
		local Total = 0
		local Groups = vRP.Groups()
		for key,Value in pairs(Groups) do
			if Value["Type"] == "Police" then
				local Service,Amount = vRP.NumPermission(key)
				Total = Total + Amount
			end
		end
		if Total >= 0--[[ 2 ]] then
			if vRP.ConsultItem(Passport,"credential",1) then

				if not Races[Number]["Cooldown"][Passport] then
					Races[Number]["Cooldown"][Passport] = os.time()
				end
	
	
				if os.time() >= Races[Number]["Cooldown"][Passport] then
					Payments[Passport] = false
		
					if vRP.TakeItem(Passport,"credential",1) then
						
						TriggerEvent("blipsystem:Enter",source,"Corredor")
						Races[Number]["Cooldown"][Passport] = os.time() + 3600
						Payments[Passport] = true

	
						local Groups = vRP.Groups()
						for key,Value in pairs(Groups) do
							if Value["Type"] == "Police" then
								local Service,Amount = vRP.NumPermission(key)
								for Passports,Sources in pairs(Service) do
									async(function()
										TriggerClientEvent("Notify",Sources,"amarelo","Detectamos um corredor clandestino nas ruas.",5000)
										vRPC.PlaySound(Sources,"Beep_Red","DLC_HEIST_HACKING_SNAKE_SOUNDS")
									end)
								end
							end
						end

						
		
		
					end
		
					return true
				else
					local Cooldown = Races[Number]["Cooldown"][Passport] - os.time()
					TriggerClientEvent("Notify",source,"azul","Aguarde <b>"..Cooldown.."</b> segundos.",5000)
				end

			else
				TriggerClientEvent("Notify",source,"amarelo","Precisa de <b>1x "..itemName("credential").."</b>.",5000)
			end
		else
			TriggerClientEvent("Notify",source,"amarelo","Contingente indisponível.",5000,"Atenção")
		end
	end
	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- RANKING
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Ranking(Number)
	local Consult = vRP.Query("races/Ranking",{ Race = Number })
	return Consult
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CANCEL
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Cancel()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if Payments[Passport] then
			Payments[Passport] = nil
			TriggerEvent("blipsystem:Exit",source)
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Disconnect",function(Passport,source)
	if Payments[Passport] then
		Payments[Passport] = nil
		TriggerEvent("blipsystem:Exit",source)
	end
end)