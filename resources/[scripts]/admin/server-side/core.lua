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
Tunnel.bindInterface("admin",Creative)
vCLIENT = Tunnel.getInterface("admin")
vANIM = Tunnel.getInterface("animacoes")
vKEYBOARD = Tunnel.getInterface("keyboard")
vSKINSHOP = Tunnel.getInterface("skinshop")
tvRP = Tunnel.getInterface("VRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("pon",function(source,args,rawCommand)
    local user_id = vRP.Passport(source)
    if vRP.HasGroup(user_id, "Admin",1) then
        local users = vRP.Players()
        local players = ""
        local quantidade = 0
        for k,v in pairs(users) do
            if k ~= #users then
                players = players..", "
            end
            players = players..k
            quantidade = quantidade + 1
        end
        TriggerClientEvent("Notify",source,"amarelo","TOTAL ONLINE : <b>"..quantidade.."</b><br>ID's ONLINE : <b>"..players.."</b>",5000)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CALL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("call",function(source,Message)
	local Passport = vRP.Passport(source)
	local coords = vCLIENT.GetPostions(source)
	if not Message[1] or (Message[1] == "admin" or Message[1] == "staff" or Message[1] == "adm" or Message[1] == "god") then
		local Keyboard = vKEYBOARD.Primary(source,"adm:")
		if Keyboard then 
			local Answered = false
			local Identity = vRP.Identity(Passport)
			local Services,Admin = vRP.NumPermission("Admin",1)
			for Passports,Sources in pairs(Services) do
				async(function()
					vRPC.PlaySound(Sources,"Out_Of_Area","DLC_Lowrider_Relay_Race_Sounds")
					TriggerClientEvent("Notify",Sources,"azul",Keyboard[1],8000,"[STAFF] Enviado pelo Passaporte: "..Passport)
					if vRP.Request(Sources,"Chamado Staff","Aceitar o chamado de <b>"..Identity["name"].." "..Identity["name2"].."</b>?") then
						if not Answered then
							Answered = true
							TriggerClientEvent("NotifyPush",Sources,{ phone = Identity["phone"], name = Identity["name"].." "..Identity["name2"] .. "  " .. Identity["phone"], title = Keyboard[1], x = coords["x"], y = coords["y"], z = coords["z"], criminal = "STAFF", time = "Recebido às "..os.date("%H:%M"), blipColor = 16 })
							TriggerClientEvent("Notify",source,"azul","Chamado atendido por <b>"..vRP.Identity(Passports)["name"].." "..vRP.Identity(Passports)["name2"].."</b>, aguarde no local.",8000)
							vRPC.PlaySound(source,"Event_Message_Purple","GTAO_FM_Events_Soundset")
						else
							TriggerClientEvent("Notify",Sources,"azul","Chamado ja foi atendido por outra pessoa.",8000)
							vRPC.PlaySound(Sources,"CHECKPOINT_MISSED","HUD_MINI_GAME_SOUNDSET")
						end
					end
				end)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDVEHS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("addveh",function(source,Message)
	local Passport = vRP.Passport(source)
    if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1) then
        if Message[1] and Message[2] then
			local OtherPlayer = vRP.Source(parseInt(Message[2]))
            local OtherIdentity = vRP.Identity(parseInt(Message[2]))
            if vRP.Request(source,"Deseja adicionar o carro <b>"..VehicleName(Message[1]).."</b> para o Passaporte: <b>"..parseInt(Message[2]).." "..OtherIdentity.name.." "..OtherIdentity.name2.."</b> ?","Sim ou Não") then
				if VehicleMode(Message[1]) == "Rental" then
					vRP.Query("vehicles/rentalVehicles",{ Passport = parseInt(Message[2]), vehicle = Message[1], plate = vRP.GeneratePlate(), work = "false" })
				else
					vRP.Query("vehicles/addVehicles",{ Passport = parseInt(Message[2]), vehicle = Message[1], plate = vRP.GeneratePlate(), work = "false" })
				end
				TriggerClientEvent("Notify",source,"verde", "Você adicionou o veículo <b>"..VehicleName(Message[1]).."</b> para o Passaporte: <b>"..parseInt(Message[2]).."</b>.", 5000)
                TriggerClientEvent("Notify",OtherPlayer,"verde", "O veículo <b>"..VehicleName(Message[1]).."</b> foi adicionado na sua garagem.", 5000)
				TriggerEvent("Discord","AddVeh","**Passaporte:** "..Passport.."\n**Veículo:** "..VehicleName(Message[1]).."\n**Para:** "..Message[2],3553599)
			end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REMVEHS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("remveh",function(source,Message)
	local Passport = vRP.Passport(source)
    if vRP.HasGroup(Passport,"Admin",1) then
        if Message[1] and Message[2] then
            local OtherPlayer = vRP.Source(parseInt(Message[2]))
            local OtherIdentity = vRP.Identity(parseInt(Message[2]))
            if vRP.Request(source,"Deseja retirar o veículo <b>"..VehicleName(Message[1]).."</b> do Passaporte: <b>"..parseInt(Message[2]).." "..OtherIdentity.name.." "..OtherIdentity.name2.."</b> ?","Sim","Não") then
                vRP.Query("vehicles/removeVehicles",{ Passport = parseInt(Message[2]), vehicle = Message[1] })
                TriggerClientEvent("Notify",source,"verde", "Você removeu o veículo <b>"..VehicleName(Message[1]).."</b> do Passaporte: <b>"..parseInt(Message[2]).."</b>.", 5000)
                TriggerClientEvent("Notify",OtherPlayer,"vermelho", "O veículo <b>"..VehicleName(Message[1]).."</b> foi removido da sua garagem.", 5000)
				TriggerEvent("Discord","RemVeh","**Passaporte:** "..Passport.."\n**Veículo:** "..VehicleName(Message[1]).."\n**Para:** "..Message[2],3553599)
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UGROUPS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("ugroups",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport and parseInt(Message[1]) > 0 and vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1) then
		local Messages = ""
		local Groups = vRP.Groups()
		local OtherPassport = Message[1]
		for Permission,_ in pairs(Groups) do
			local Data = vRP.DataGroups(Permission)
			if Data[OtherPassport] then
				Messages = Messages.."<b>Permissão:</b> "..Permission.."<br><b>Nível:</b> "..Data[OtherPassport].."<br>"
			end
		end
		if Messages ~= "" then
			TriggerClientEvent("Notify",source,"verde",Messages,10000,"Grupos Pertencentes")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("vips",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport and vRP.HasGroup(Passport,"Admin",1) then
		local Messages = ""
		local Groups = vRP.Groups()
		for Permission in pairs(Groups["Premium"]["Parent"]) do
			local Data = vRP.DataGroups(Permission)
			for OtherPassport in pairs(Data) do
				Messages = Messages..Permission.." #"..OtherPassport.."<br>"
			end
		end
		if Messages ~= "" then
			TriggerClientEvent("Notify",source,"verde",Messages,10000,"Grupos Pertencentes")
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- USOURCE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("usource",function(source,Message)
	local Passport = vRP.Passport(source)
	local OtherSource = parseInt(Message[1])
	if Passport and OtherSource and OtherSource > 0 and vRP.Passport(OtherSource) and vRP.HasGroup(Passport,"Admin") then
		TriggerClientEvent("Notify",source,"azul","<b>Passaporte:</b> "..vRP.Passport(OtherSource),5000,"Informações")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("experience",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1) and parseInt(Message[2]) > 0 then
			vRP.PutExperience(Passport,Message[1],parseInt(Message[2]))
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLEARINV
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("clearinv",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1) and parseInt(Message[1]) > 0 then
			TriggerClientEvent("Notify",source,"verde","Limpeza concluída.",5000)
			vRP.ClearInventory(Message[1])
			TriggerEvent("Discord","ClearInv","**Passaporte:** "..Passport.."\n**Para:** "..Message[1],3553599)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLEARCHEST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("clearchest",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1) and Message[1] then
			local Consult = vRP.Query("chests/GetChests",{ name = Message[1] })
			if Consult[1] then
				TriggerClientEvent("Notify",source,"verde","Limpeza concluída.",5000)
				vRP.SetSrvData("Chest:"..Message[1],{},true)
				TriggerEvent("Discord","ClearChest","**Passaporte:** "..Passport.."\n**Chest:** "..Message[2],3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DIAMOND
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("gemstone",function(source,Message)
	local Passport = vRP.Passport(source)
	local Amount = parseInt(Message[2])
	if Passport and Amount > 0 then
		local OtherPassport = parseInt(Message[1])
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff") then
			vRP.UpgradeGemstone(OtherPassport,Amount)
			TriggerClientEvent("Notify",source,"Sucesso","Diamantes entregues.","verde",5000)
			TriggerEvent("Discord","GemStone","**Passaporte:** "..Passport.."\n**Para:** "..OtherPassport.."\n**Diamantes:** "..Amount,3092790)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BLIPS
-----------------------------------------------------------------------------------------------------------------------------------------
local Blips = {}
RegisterCommand("blips",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff")    then
			local Text = ""
			if not Blips[Passport] then
				Blips[Passport] = true
				Text = "Ativado"
			else
				Blips[Passport] = nil
				Text = "Desativado"
			end
			vRPC.BlipAdmin(source)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GOD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("god",function(source,Message)
	local Passport = vRP.Passport(source)
	local List = vRP.Players()
	local OtherPlayer = parseInt(Message[1])
	local text = parseInt(Message[1])
	if Passport then
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff") then
			if Message[1] then
				if Message[1] == "all" then
					local Text = ""
					for OtherPlayer,OtherSource in pairs(List) do
						async(function()
							vRP.UpgradeThirst(OtherPlayer,100)
							vRP.UpgradeHunger(OtherPlayer,100)
							vRP.DowngradeStress(OtherPlayer,100)
							vRP.Revive(OtherSource,200)
							TriggerClientEvent("paramedic:Reset",OtherSource)
							if Text == "" then
								Text = OtherPlayer
							else
								Text = Text..", "..OtherPlayer
							end
						end)
					end
				else
					local ClosestPed = vRP.Source(OtherPlayer)
					if ClosestPed then
						vRP.UpgradeThirst(OtherPlayer,100)
						vRP.UpgradeHunger(OtherPlayer,100)
						vRP.DowngradeStress(OtherPlayer,100)
						vRP.Revive(ClosestPed,200)
						TriggerClientEvent("hud:Active",OtherPlayer,true)
						TriggerClientEvent("paramedic:Reset",ClosestPed)
					end
				end
			else
				vRP.Revive(source,200)
				vRP.UpgradeThirst(Passport,100)
				vRP.UpgradeHunger(Passport,100)
				vRP.DowngradeStress(Passport,100)
				TriggerClientEvent("hud:Active",Passport,true)
				TriggerClientEvent("paramedic:Reset",source)
				
				vRPC.removeObjects(source)
			end
			
			if List then
				TriggerEvent("Discord","Revive","**Passaporte:** "..Passport,3553599)
			elseif OtherPlayer then
				TriggerEvent("Discord","Revive","**Passaporte:** "..Passport.."\n**Para:** "..OtherPlayer,3553599)
			else
				TriggerEvent("Discord","Revive","**Passaporte:** "..Passport,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GODA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("goda",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff")  then
			local Range = parseInt(Message[1])
			if Range then
				local Text = ""
				local Players = vRPC.ClosestPeds(source,Range)
				for _,v in pairs(Players) do
					async(function()
						local OtherPlayer = vRP.Passport(v)
						vRP.UpgradeThirst(OtherPlayer,100)
						vRP.UpgradeHunger(OtherPlayer,100)
						vRP.DowngradeStress(OtherPlayer,100)
						vRP.Revive(v,200)
						TriggerClientEvent("hud:Active",OtherPlayer,true)
						TriggerClientEvent("paramedic:Reset",v)
						if Text == "" then
							Text = OtherPlayer
						else
							Text = Text..", "..OtherPlayer
						end
					end)
				end
				TriggerEvent("Discord","ReviveAll","**Passaporte:** "..Passport.."\n**Para:** "..Text,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MONEY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('money',function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin") or vRP.HasGroup(Passport, "Staff")   then
			if Message[1] then
				local Amount = parseInt(Message[1])
				vRP.GenerateItem(Passport,"dollars",Amount,true)
				TriggerEvent("Discord","Dollars","**Passaporte:** "..Passport.."\n**Item:** "..Amount.."x "..itemName("dollars"),3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("item",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff")   then
			if Message[1] and Message[2] and itemBody(Message[1]) ~= nil then
				vRP.GenerateItem(Passport,Message[1],Message[2],true)
				TriggerClientEvent("inventory:Update",source,"Backpack")
				TriggerEvent("Discord","GiveItem","**Passaporte:** "..Passport.."\n**Item:** "..Message[2].."x "..itemName(Message[1]),3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DELETE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("delete",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport and Message[1] then
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4) or vRP.HasGroup(Passport,"Paramedic",2) then
			local OtherPassport = parseInt(Message[1])
			if OtherPassport > 0 then
				vRP.Query("characters/removeCharacter",{ id = OtherPassport })
				TriggerClientEvent("Notify",source,"verde","Personagem <b>"..OtherPassport.."</b> deletado.",5000)
				TriggerEvent("Discord","RemoveCharacter","**Passaporte:** "..Passport.."\n**Para:** "..OtherPassport,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NC
-----------------------------------------------------------------------------------------------------------------------------------------
local Noclip = {}
RegisterCommand("nc",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1) then
			local Text = ""
			if not Noclip[Passport] then
				Noclip[Passport] = true
				Text = "Ativado"
			else
				Noclip[Passport] = nil
				Text = "Desativado"
			end
			TriggerEvent("Discord","Noclip","**Passaporte:** "..Passport.."\n**Situação:** "..Text,3553599)
			vRPC.noClip(source)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KICK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("kick",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1) and parseInt(Message[1]) > 0 then
			local OtherSource = vRP.Source(Message[1])
			if OtherSource then
				TriggerClientEvent("Notify",source,"amarelo","Passaporte <b>"..Message[1].."</b> expulso.",5000)
				TriggerEvent("Discord","Kick","**Passaporte:** "..Passport.."\n**Para:** "..OtherPassport,3553599)
				vRP.Kick(OtherSource,"Expulso da cidade.")
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BAN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("ban",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff") and parseInt(Message[1]) > 0 then
			local Days = parseInt(Message[2]) > 0 or 360
			local OtherPassport = parseInt(Message[1])
			local Identity = vRP.Identity(OtherPassport)
			if Identity then
				vRP.Query("banneds/InsertBanned",{ license = Identity["license"], time = Days })
				TriggerClientEvent("Notify",source,"amarelo","Passaporte <b>"..OtherPassport.."</b> banido por <b>"..Days.."</b> dias.",5000)
				TriggerEvent("Discord","Banned","**Passaporte:** "..Passport.."\n**Para:** "..OtherPassport.."\n**Tempo:** "..Days.." dias",3553599)
				local OtherSource = vRP.Source(OtherPassport)
				if OtherSource then
					vRP.Kick(OtherSource,"Banido.")
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UNBAN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("unban",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1) and parseInt(Message[1]) > 0 then
			local OtherPassport = parseInt(Message[1])
			local Identity = vRP.Identity(OtherPassport)
			if Identity then
				vRP.Query("banneds/RemoveBanned",{ license = Identity["license"] })
				TriggerClientEvent("Notify",source,"verde","Passaporte <b>"..OtherPassport.."</b> desbanido.",5000)
				TriggerEvent("Discord","UnBanned","**Passaporte:** "..Passport.."\n**Para:** "..OtherPassport,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("wl",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1) and parseInt(Message[1]) > 0 then
			TriggerClientEvent("Notify",source,"verde","TOKEN: <b>"..Message[1].."</b> Liberado <b>",5000)
			vRP.Query("accounts/updateWhitelist",{ id = parseInt(Message[1]), whitelist = 1 })
			TriggerEvent("Discord","WhiteList","**Passaporte:** "..Passport.."\n**Para:** "..Message[1],3553599)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UNAL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("unwl",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1) then
			vRP.Query("accounts/updateWhitelist",{ id = parseInt(Message[1]), whitelist = 0 })
			TriggerEvent("Discord","UnWhiteList","**Passaporte:** "..Passport.."\n**Para:** "..Message[1],3553599)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPCDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tpcds",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1)   then
			local Keyboard = vKEYBOARD.Primary(source,"Coordenadas:")
			if Keyboard then
				local Split = splitString(Keyboard[1],",")
				vRP.Teleport(source,tonumber(Split[1] or 0),tonumber(Split[2] or 0),tonumber(Split[3] or 0))
				TriggerEvent("Discord","Tpcds","**Passaporte:** "..Passport.."\n**Cds:** "..Split[1] or 0,Split[2] or 0,Split[3] or 0,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("cds",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin", 1 or 2 or 3 or 4)   then
			local Ped = GetPlayerPed(source)
			local Coords = GetEntityCoords(Ped)
			local heading = GetEntityHeading(Ped)
			vKEYBOARD.Copy(source,"Coordenadas:",mathLength(Coords["x"])..","..mathLength(Coords["y"])..","..mathLength(Coords["z"])..","..mathLength(heading))
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("cds2",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin", 1 or 2 or 3 or 4)   then
			local Ped = GetPlayerPed(source)
			local Coords = GetEntityCoords(Ped)
			local heading = GetEntityHeading(Ped)
			vKEYBOARD.Copy(source,"Coordenadas:","x="..mathLength(Coords["x"])..",y="..mathLength(Coords["y"])..",z="..mathLength(Coords["z"])..",h="..mathLength(heading))
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GROUP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("group",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if parseInt(Message[1]) > 0 and Message[2] and parseInt(Message[3]) then
			 if Passport == 1 or Passport == 2 or vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1) then 
				TriggerClientEvent("Notify",source,"verde","Adicionado <b>"..Message[2].."</b> ao passaporte <b>"..Message[1].."</b>.",5000)
				TriggerEvent("Discord","Group","**Passaporte:** "..Passport.."\n**Para:** "..Message[1].."\n**Permissão:** "..Message[2].."\n**Nível:** "..Message[3],3553599)
				vRP.SetPermission(Message[1],Message[2],Message[3])
			end 
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UNGROUP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("ungroup",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1) and parseInt(Message[1]) > 0 and Message[2] then
			if (Message[2] == "Admin" or Message[2] == "Premium") and not vRP.HasGroup(Passport,"Admin",1) then
				return
			end
			local Groups = vRP.Groups()
			if Groups[Message[2]] then
				vRP.RemovePermission(Message[1],Message[2])
				TriggerClientEvent("Notify",source,"verde","Removido <b>"..Message[2].."</b> do passaporte <b>"..Message[1].."</b>.",5000)
				local OtherSource = vRP.Source(Message[1])
				if OtherSource then
					TriggerClientEvent("player:Relationship",OtherSource,Message[2],true)
				end
				TriggerEvent("Discord","UnGroup","**Passaporte:** "..Passport.."\n**Para:** "..Message[1].."\n**Grupo:** "..Message[2],3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPTOME
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tptome",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1) and parseInt(Message[1]) > 0 then
			local ClosestPed = vRP.Source(Message[1])
			if ClosestPed then
				local Ped = GetPlayerPed(source)
				local Coords = GetEntityCoords(Ped)
				vRP.Teleport(ClosestPed,Coords["x"],Coords["y"],Coords["z"])
				TriggerEvent("Discord","Tptome","**Passaporte:** "..Passport.."\n**Para:** "..Message[1],3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPTO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tpto",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if  vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1) and parseInt(Message[1]) > 0 then
			local ClosestPed = vRP.Source(Message[1])
			if ClosestPed then
				local Ped = GetPlayerPed(ClosestPed)
				local Coords = GetEntityCoords(Ped)
				vRP.Teleport(source,Coords["x"],Coords["y"],Coords["z"])
				TriggerEvent("Discord","Tpto","**Passaporte:** "..Passport.."\n**Para:** "..Message[1],3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPWAY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tpway",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1) then
			vCLIENT.teleportWay(source)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LIMBO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("limbo",function(source)
	local Passport = vRP.Passport(source)
	if Passport and vRP.GetHealth(source) <= 100 then
		vCLIENT.teleportLimbo(source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HASH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("hash",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4 or 5)    then
			local vehicle = vRPC.VehicleHash(source)
			if vehicle then
				vKEYBOARD.Copy(source,"Hash:",vehicle)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TUNING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("tuning",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4)   then
			local Vehicle,Network,Plate = vRPC.VehicleList(source,10)
			if Vehicle then
				TriggerClientEvent("admin:vehicleTuning",source,Network,Plate)
				TriggerEvent("Discord","Tuning","**Passaporte:** "..Passport.."\n**Placa:** "..Plate,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FIX
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("fix",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4)   then
			local Vehicle,Network,Plate,vehName = vRPC.VehicleList(source,10)
			if Vehicle then
				local Players = vRPC.Players(source)
				for _,v in pairs(Players) do
					async(function()
						TriggerClientEvent("inventory:RepairAdmin",v,Network,Plate)
					end)
				end
				if VehicleExist(vehName) then
					TriggerEvent("Discord","Repair","**Passaporte:** "..Passport.."\n**Veículo:** "..VehicleName(vehName).."\n**Placa:** "..Plate,3553599)
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LIMPAREA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("limparea",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4)   then
			local Ped = GetPlayerPed(source)
			local Coords = GetEntityCoords(Ped)
			TriggerClientEvent("syncarea",source,Coords["x"],Coords["y"],Coords["z"],100)
			TriggerEvent("Discord","ClearArea","**Passaporte:** "..Passport,3553599)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- IDs
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("ids",function(source)
	local source = source
	local String = ""
	local Amount = 0
	local List = vRP.Players()
	for k,v in pairs(List) do
		if k ~= #List then
			String = String..", "
		end
		String = String..k
		Amount = Amount + 1
	end
	TriggerClientEvent("Notify",source,"verde","<b>"..String.. "</b>",8000,"<b>"..Amount.." PASSAPORTE's ONLINE</b>")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ID
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("id",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin") or vRP.HasGroup(Passport, "Staff") then
			local OtherPassport = Message[1] or vRP.ClosestPeds(5)
			local Identity = vRP.Identity(OtherPassport)
			if Identity then
				TriggerClientEvent("Notify",source,"azul","<b>Passaporte:</b> "..OtherPassport.."<br><b>Nome:</b> "..Identity["name"].." "..Identity["name2"].."<br><b>Telefone:</b> "..Identity["phone"].."<br><b>Carteira:</b> $"..parseFormat(vRP.ItemAmount(OtherPassport,"dollars")).."<br><b>Banco:</b> $"..parseFormat(Identity["bank"]).."<br><b>Cartão:</b> $"..parseFormat(Identity["cardlimit"]).."<br><b>Paypal:</b> $"..parseFormat(Identity["paypal"]),5000)
				TriggerEvent("Discord","Admin","**id**\n\n**Passaporte:** "..Passport.."\n**Para:** "..OtherPassport,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("check",function(source,Message)
	local Passport = vRP.Passport(source)
	local Consult = vRP.Query("smartphone/"..Message[1].."Check",{ Username = Message[2] })
	if Passport and Message[2] then
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4)   then
			if Message[1] == "insta" or Message[1] == "twitter" then
			else
				return
			end
			
			if not Consult[1] then
				return
			end
			
			TriggerClientEvent("Notify",source,"verde","<b>Username</b>: "..Message[2].."<br><b>Passaporte<b>: "..Consult[1]["user_id"],5000)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:COORDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("admin:Coords")
AddEventHandler("admin:Coords",function(Coords)
	vRP.Archive("coordenadas.txt",mathLength(Coords["x"])..","..mathLength(Coords["y"])..","..mathLength(Coords["z"]))
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CDS
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.buttonTxt()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4)   then
			local Ped = GetPlayerPed(source)
			local Coords = GetEntityCoords(Ped)
			local heading = GetEntityHeading(Ped)
			
			vRP.Archive(Passport..".txt",mathLength(Coords["x"])..","..mathLength(Coords["y"])..","..mathLength(Coords["z"])..","..mathLength(heading))
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("funcionarios",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1) then
			local id,Police = vRP.NumPermission("Police")
			local id,Mecanico = vRP.NumPermission("Mechanic")
			local id,Paramedico = vRP.NumPermission("Paramedic")
			TriggerClientEvent("Notify",source,"verde","<b>Indice de Trabalhadores</b> ",10000)
			TriggerClientEvent("Notify",source,"verde","<b>Número de Policeis "..Police.." </b>",10000)
			TriggerClientEvent("Notify",source,"verde","<b>Número de Mecanicos "..Mecanico.." </b> ",10000)
			TriggerClientEvent("Notify",source,"verde","<b>Número de Paramedicos "..Paramedico.." </b> ",10000)				
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANNOUNCE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("anuncio", function(source, args, rawCommand)
    local Passport = vRP.Passport(source)
    local Message = table.concat(args, " ") -- Combina os argumentos passados no comando
    
    if Passport and Message ~= "" then
        -- Substituir \n por <br> para permitir quebras de linha
        Message = Message:gsub("\\n", "<br>")

        local title, color, icon = "", "", ""

        if vRP.HasGroup(Passport, "Admin") then
            title, color, icon = "Prefeitura", "verde", "📢"
		elseif vRP.HasGroup(Passport, "Staff") then
				title, color, icon = "Prefeitura", "verde", "📢"
        elseif vRP.HasGroup(Passport, "Police") then
            title, color, icon = "Polícia", "azul", "🚔"
        elseif vRP.HasGroup(Passport, "Paramedic") then
            title, color, icon = "Hospital", "verde", "🚑"
        elseif vRP.HasGroup(Passport, "KoiSushi") then
            title, color, icon = "KoiSushi", "verde", "🍣"
        elseif vRP.HasGroup(Passport, "Mechanic") then
            title, color, icon = "Mecânica", "laranja", "🔧"
        else
            TriggerClientEvent("Notify", source, "vermelho", "❌ Você não tem permissão para fazer anúncios.", 5000)
            return
        end

        -- Exibir notificação para todos os jogadores com suporte a Enter
        TriggerClientEvent("Notify", -1, color, icon .. " <b>" .. title .. ":</b><br>" .. Message, 60000)

        -- Enviar para o Discord (opcional)
        TriggerEvent("Discord", "Announce", "**Passaporte:** " .. Passport .. "\n**Texto:**\n" .. Message, 3553599)
    else
        TriggerClientEvent("Notify", source, "vermelho", "⚠️ Mensagem inválida. Use /anuncio [mensagem].", 5000)
    end
end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- CONSOLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("console", function(source, Message, History)
    -- Certifique-se de que o comando foi chamado pelo console do servidor
    if source == 0 then
        -- Verificar se a mensagem foi corretamente passada
        if History and #History > 8 then
            -- Envia a notificação para todos os jogadores
            local content = History:sub(9) -- Remove "console " do início
            TriggerClientEvent("Notify", -1, "verde", "<b>Prefeitura:</b> " .. content, 60000)
            print("Notificação enviada: " .. content) -- Debug no console
        else
            print("Erro: Mensagem muito curta ou inexistente.") -- Debug no console
        end
    else
        print("Comando disponível apenas no console do servidor.") -- Debug no console
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- KICKALL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("kickall",function(source)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1) then
			return
		end
		TriggerEvent("Discord","KickAll","**Passaporte:** "..Passport,3553599)
	end
	vRP.KickALL()
	TriggerEvent("SaveServer",false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("save",function(source)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4) then
			return
		end
		TriggerEvent("Discord","SaveData","**Passaporte:** "..Passport,3553599)
	end
	TriggerEvent("SaveServer",false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMALL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("itemall",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4)   then
			local Text = ""
			local List = vRP.Players()
			for OtherPlayer,_ in pairs(List) do
				async(function()
					if Text == "" then
						Text = OtherPlayer
					else
						Text = Text..", "..OtherPlayer
					end
					if Message[1] and Message[2] then
						vRP.GenerateItem(OtherPlayer,Message[1],Message[2],true)
						TriggerClientEvent("Notify",source,"verde","Envio de "..Message[2].."x "..Message[2].."concluído.",10000)
					end
				end)
			end
			TriggerEvent("Discord","GiveItemAll","**Passaporte:** "..Passport.."\n**Para:** "..Text.."\n**Item:** "..Message[2].."x "..itemName(Message[1]),3553599)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RACECOORDS
-----------------------------------------------------------------------------------------------------------------------------------------
local Checkpoint = 0
function Creative.raceCoords(vehCoords,leftCoords,rightCoords)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		Checkpoint = Checkpoint + 1
		
		vRP.Archive("races.txt","["..Checkpoint.."] = {")
		
		vRP.Archive("races.txt","{ "..mathLength(vehCoords["x"])..","..mathLength(vehCoords["y"])..","..mathLength(vehCoords["z"]).." },")
		vRP.Archive("races.txt","{ "..mathLength(leftCoords["x"])..","..mathLength(leftCoords["y"])..","..mathLength(leftCoords["z"]).." },")
		vRP.Archive("races.txt","{ "..mathLength(rightCoords["x"])..","..mathLength(rightCoords["y"])..","..mathLength(rightCoords["z"]).." }")
		
		vRP.Archive("races.txt","},")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPECTATE
-----------------------------------------------------------------------------------------------------------------------------------------
local Spectate = {}

RegisterCommand("spectate", function(source, args)
    local Passport = vRP.Passport(source)
    if Passport then
        -- Verifica se o jogador pertence ao grupo de administradores
        if vRP.HasGroup(Passport, "Admin") then
            if Spectate[Passport] then
                -- Parar de spectar
                local Ped = GetPlayerPed(Spectate[Passport])
                if DoesEntityExist(Ped) then
                    SetEntityDistanceCullingRadius(Ped, 0.0)
                end
                
                TriggerClientEvent("admin:resetSpectate", source)
                Spectate[Passport] = nil
            else
                -- Iniciar spectate
                if #args < 1 then
                    TriggerClientEvent("chat:addMessage", source, {
                        color = {255, 0, 0},
                        multiline = true,
                        args = {"Sistema", "Uso: /spectate [ID do jogador]"}
                    })
                    return
                end

                local targetId = tonumber(args[1])
                local targetSource = vRP.Source(targetId)

                if targetSource then
                    local Ped = GetPlayerPed(targetSource)
                    if DoesEntityExist(Ped) then
                        SetEntityDistanceCullingRadius(Ped, 999999999.0)
                        Wait(1000)
                        TriggerClientEvent("admin:initSpectate", source, targetSource)
                        Spectate[Passport] = targetSource
                        TriggerEvent("Discord", "Spectate", "**Passaporte:** " .. Passport .. "\n**Para:** " .. targetId, 3553599)
                    else
                        TriggerClientEvent("chat:addMessage", source, {
                            color = {255, 0, 0},
                            multiline = true,
                            args = {"Sistema", "Jogador não encontrado."}
                        })
                    end
                else
                    TriggerClientEvent("chat:addMessage", source, {
                        color = {255, 0, 0},
                        multiline = true,
                        args = {"Sistema", "ID inválido."}
                    })
                end
            end
        else
            TriggerClientEvent("chat:addMessage", source, {
                color = {255, 0, 0},
                multiline = true,
                args = {"Sistema", "Você não tem permissão para usar este comando."}
            })
        end
    else
        TriggerClientEvent("chat:addMessage", source, {
            color = {255, 0, 0},
            multiline = true,
            args = {"Sistema", "Erro ao identificar seu passaporte."}
        })
    end
end, false)

-----------------------------------------------------------------------------------------------------------------------------------------
-- RESET
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("reset",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		local OtherPassport = parseInt(Message[1])
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4) and OtherPassport > 0 then
			local Creator = vRP.UserData(Passport,"Creator")
			if Creator == 1 then
				vRP.Query("playerdata/SetData",{ Passport = OtherPassport, dkey = "Creator", dvalue = 0 })
				TriggerClientEvent("Notify",source,"verde","Reset concluído.",5000)
				TriggerEvent("Discord","ResetCharacter","**Passaporte:** "..Passport.."\n**Para:** "..OtherPassport,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUCKET
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("bucket",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4) and Message[1] then
			local Route = parseInt(Message[1])
			if Message[2] then
				local OtherPassport = parseInt(Message[2])
				local OtherSource = vRP.Source(OtherPassport)
				if OtherSource then
					if Route > 0 then
						TriggerEvent("vRP:BucketServer",OtherSource,"Enter",Route)
					else
						TriggerEvent("vRP:BucketServer",OtherSource,"Exit")
					end
					TriggerEvent("Discord","Bucket","**Passaporte:** "..Passport.."\n**Dimensão:** "..Route.."\n**Para:** "..OtherPassport,3553599)
				end
			else
				if Route > 0 then
					TriggerEvent("vRP:BucketServer",source,"Enter",Route)
				else
					TriggerEvent("vRP:BucketServer",source,"Exit")
				end
				TriggerEvent("Discord","Bucket","**Passaporte:** "..Passport.."\n**Dimensão:** "..Route,3553599)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("dm",function(source,Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Admin",1) or vRP.HasGroup(Passport, "Staff",1) and Message[1] then
			local OtherSource = vRP.Source(Message[1])
			if OtherSource then
				local Keyboard = vKEYBOARD.Primary(source,"Mensagem:")
				if Keyboard then
					local name1 = vRP.Identity(Passport).name.. vRP.Identity(Passport).name2
					local name = vRP.Identity(Message[1]).name.. vRP.Identity(Message[1]).name2
					vRPC.PlaySound(source, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET")
					vRPC.PlaySound(OtherSource, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET")
					TriggerClientEvent("Notify", OtherSource, "verde","</b>"..name1.." Te enviou: "..Keyboard[1].."</b>",10000)
					TriggerClientEvent("Notify", source, "verde","Mensagem Enviada para "..name,10000)
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVICES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("services", function(source, Message)
    local Passport = vRP.Passport(source)
    if Passport and (vRP.HasGroup(Passport, "Admin", 1) or vRP.HasGroup(Passport, "Admin", 2) or vRP.HasGroup(Passport, "Admin", 3) or vRP.HasGroup(Passport, "Admin", 4) or vRP.HasGroup(Passport, "Dono", 1)) then
        local Text = ""
        local Groups = vRP.Groups()

        if Message[1] then
            if Groups[Message[1]] then
                local Data = vRP.DataGroups(Message[1])
                if Data then
                    for Passport, Level in pairs(Data) do
                        if Text == "" then
                            Text = "<b>" .. Passport .. ":</b> " .. Level
                        else
                            Text = Text .. "<br><b>" .. Passport .. ":</b> " .. Level
                        end
                    end
                else
                    Text = "Nenhum dado encontrado para o grupo especificado."
                end
            else
                Text = "Grupo não encontrado."
            end
        else
            for Permission, _ in pairs(Groups) do
                local _, Total = vRP.NumPermission(Permission)
                if Text == "" then
                    Text = "<b>" .. Permission .. ":</b> " .. Total
                else
                    Text = Text .. "<br><b>" .. Permission .. ":</b> " .. Total
                end
            end
        end

        if Text ~= "" then
            TriggerClientEvent("Notify", source, "azul", Text, 20000)
        else
            TriggerClientEvent("Notify", source, "vermelho", "Nenhuma informação disponível.", 20000)
        end
    else
        TriggerClientEvent("Notify", source, "vermelho", "Permissão insuficiente.", 5000)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CHANNEL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("channel",function(source,Message)
	if Message[1] then
		if source ~= 0 then
			local Passport = vRP.Passport(source)
			if not vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4 or 5)    then
				return
			end
		end
		
		local Text = ""
		local Channel = exports["pma-voice"]:getPlayersInRadioChannel(tonumber(Message[1]))
		
		for Sources,_ in pairs(Channel) do
			if Text == "" then
				Text = vRP.Passport(Sources)
			else
				Text = Text..", "..vRP.Passport(Sources)
			end
		end
		
		if source ~= 0 then
			TriggerClientEvent("Notify",source,"azul","Canal <b>"..Message[1].."</b>: "..Text..".",15000)
		else
			print("^2Canal "..Message[1]..":^7 "..Text)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GENERATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("generate",function(source,Message)
	if source ~= 0 then
		local Passport = vRP.Passport(source)
		if not vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4 or 5)    then
			return
		end
	end
	
	local List = {}
	if Message[1] == "item" then
		List = itemList()
	elseif Message[1] == "car" then
		List = VehicleGlobal()
	elseif Message[1] == "anim" then
		if source == 0 then
			local Players = vRP.Players()
			if #Players <= 0 then
				return
			end
			
			for _,OtherSource in pairs(Players) do
				source = OtherSource
				break
			end
		end
		
		List = vANIM.AnimList(source)
	end
	
	if List then
		local Text = "**"..Message[1].."**"
		
		for Index,v in pairsKeys(List) do
			if Message[1] == "car" then
				if v["Mode"] == "rental" then
					Text = Text.."\n"..Index
				end
			else
				Text = Text.."\n"..Index
			end
		end
		
		Text = Text.."\n"
		
		vRP.Archive("generate.txt",Text)
	end
end)

-- freecam  colocar em qualquer server.lua
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("cam", function(source)
    local Passport = vRP.Passport(source)
    if Passport then
        TriggerClientEvent("freecam:Active", source)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CUSTOM
-----------------------------------------------------------------------------------------------------------------------------------------
local List = {
	[1] = "hat",
	[2] = "pants",
	[3] = "vest",
	[4] = "bracelet",
	[5] = "backpack",
	[6] = "decals",
	[7] = "mask",
	[8] = "shoes",
	[9] = "tshirt",
	[10] = "torso",
	[11] = "accessory",
	[12] = "watch",
	[13] = "arms",
	[14] = "glass",
	[15] = "ear"
}

RegisterCommand("custom",function(source)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4 or 5)    then
			local Custom = vSKINSHOP.Customization(source)
			if Custom then
				local Text = ""
				local Count = 1
				
				repeat
					if Text == "" then
						Text = '["'..List[Count]..'"] = { item = '..Custom[List[Count]]["item"]..', texture = '..Custom[List[Count]]["texture"]..' }'
					else
						Text = Text..',\n["'..List[Count]..'"] = { item = '..Custom[List[Count]]["item"]..', texture = '..Custom[List[Count]]["texture"]..' }'
					end
					
					Count = Count + 1
				until Count == #List + 1
				
				Text = Text.."\n"
				
				-- vRP.Archive("custom.txt",Text)
				vKEYBOARD.Copy("custom.txt",Text)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEBUG
-----------------------------------------------------------------------------------------------------------------------------------------
-- RegisterCommand("debug",function(source,args,rawCommand)
-- 	local Passport = vRP.Passport(source)
-- 	if Passport then
-- 		if vRP.HasGroup(Passport,"Admin",1 or 2 or 3 or 4 or 5)    then
-- 			TriggerClientEvent("admin:DebugToggle",source)
-- 		end
-- 	end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:DEBUGINFORMATIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("admin:DebugInformations")
AddEventHandler("admin:DebugInformations",function(Entity)
	local source = source
	vKEYBOARD.Copy(source,"Informations:",Entity[2]..","..mathLength(Entity[4]["x"])..","..mathLength(Entity[4]["y"])..","..mathLength(Entity[4]["z"])..","..mathLength(Entity[5]))
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:LOGS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("admin:Logs")
AddEventHandler("admin:Logs",function(Info)
	local source = source
	vKEYBOARD.keyCopy(source,"Log:",Info)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TXADMIN:EVENTS:SERVERSHUTTINGDOWN
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("txAdmin:events:serverShuttingDown",function(eventData)
	TriggerEvent("SaveServer",false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DISCONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Disconnect",function(Passport)
	if Spectate[Passport] then
		Spectate[Passport] = nil
	end
	
	if Blips[Passport] then
		Blips[Passport] = nil
	end
	
	if Noclip[Passport] then
		Noclip[Passport] = nil
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDBACK -
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("addback",function(source,args,rawCommand)
    local Passport = vRP.Passport(source)
    if Passport and args[1] then
        if vRP.HasGroup(Passport,"Admin",1) then
            local nuser_id = parseInt(args[1])
            local amountWeight = parseInt(args[2])
            vRP.SetWeight(nuser_id,amountWeight)
            TriggerClientEvent("Notify",source,"verde","Mochila adicionado para <b>"..nuser_id.."</b> em "..amountWeight.."KG.",5000)
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REMBACK - 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("remback",function(source,args,rawCommand)
    local Passport = vRP.Passport(source)
    if Passport and args[1] then
        if vRP.HasGroup(Passport,"Admin",1) then
            local nuser_id = parseInt(args[1])
            local amountWeight = parseInt(args[2])
            vRP.RemoveWeight(nuser_id,amountWeight)
            TriggerClientEvent("Notify",source,"verde","Mochila removida de <b>"..nuser_id.."</b> em "..amountWeight.."KG.",5000)
        end
    end
end)



RegisterCommand("savePlayerPosition", function(source, args, rawCommand)
    local Passport = vRP.Passport(source) -- Captura o Passport (informações do jogador)
    if Passport then
        local license = nil

        -- Buscando o identificador 'license' entre os identificadores do jogador
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local identifier = GetPlayerIdentifier(source, i)
            if string.sub(identifier, 1, 7) == "license" then
                license = identifier -- Captura o valor de 'license'
                break
            end
        end

        -- Se a licença for encontrada, salva a posição
        if license then
            local coords = GetEntityCoords(GetPlayerPed(source)) -- Pegando as coordenadas do jogador

            -- Atualizando a posição no banco de dados
            exports.oxmysql:update('UPDATE characters SET position = ? WHERE license = ?', {
                json.encode(coords), -- Codificando as coordenadas como JSON
                license -- Utilizando a licença como identificador
            }, function(rowsChanged)
                if rowsChanged and rowsChanged > 0 then
                    TriggerClientEvent("Notify", source, "verde", "Posição salva com sucesso!", 5000)
                else
                    TriggerClientEvent("Notify", source, "vermelho", "Erro ao salvar a posição.", 5000)
                end
            end)
        else
            TriggerClientEvent("Notify", source, "vermelho", "Licença do jogador não encontrada.", 5000)
        end
    end
end)

-- Controle de Velocidade ex: /cr 100 = 100 KM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("cr",function(source,args)
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped,false)
    local speed = GetEntitySpeed(veh) * 3.6
    if GetPedInVehicleSeat(veh,-1) == ped and math.ceil(speed) >= 0 and GetEntityModel(veh) ~= -2076478498 and not IsEntityInAir(veh) then
        if args[1] == nil then
            SetEntityMaxSpeed(veh,GetVehicleHandlingFloat(veh,"CHandlingData","fInitialDriveMaxFlatVel"))
            TriggerEvent("Notify","sucesso","Cruiser desligado com sucesso.")
        else
            SetEntityMaxSpeed(veh,(parseInt(args[1])/3.6))
            TriggerEvent("Notify","sucesso","Velocidade máxima travada em <b>"..args[1].." KM</b>.")
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SKINSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("skinshop",function(source)
    local Passport = vRP.Passport(source)
    if Passport then
        if vRP.HasGroup(Passport,"Admin",1) or vRP.HasGroup(Passport,"Staff",1) then
            TriggerClientEvent("skinshop:Open",source)
        end
    end
end)

RegisterCommand("mudarped", function(source, args)
    if #args < 1 then
        TriggerClientEvent("chat:addMessage", source, { args = { "[Sistema]", "Uso correto: /mudarped [nome_do_ped]" } })
        return
    end

    local pedName = args[1]
    TriggerClientEvent("trocar:ped", source, pedName)
end, false)

RegisterCommand("voltar_skin", function(source)
    TriggerClientEvent("resetar:skin", source)
end, false)

RegisterCommand("cameras", function()
    if vRP.HasPermission({user_id, "Police"}) then
        TriggerEvent("abrirMenuCameras")
    else
        TriggerEvent("Notify", "negado", "Você não tem permissão.")
    end
end)



