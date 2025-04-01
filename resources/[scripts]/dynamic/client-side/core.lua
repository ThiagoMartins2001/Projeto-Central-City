-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
tvRP = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("dynamic")
Flash = Tunnel.getInterface("dynamic")
vINVENTORY = Tunnel.getInterface("inventory")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Dynamic = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANIMAL
-----------------------------------------------------------------------------------------------------------------------------------------
local animalHash = nil
local spawnAnimal = false
local animalFollow = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDBUTTON
-----------------------------------------------------------------------------------------------------------------------------------------
exports("AddButton",function(title,description,trigger,par,id,server)
	SendNUIMessage({ addbutton = true, title = title, description = description, trigger = trigger, par = par, id = id, server = server })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SUBMENU
-----------------------------------------------------------------------------------------------------------------------------------------
exports("SubMenu",function(title,description,id)
	SendNUIMessage({ addmenu = true, title = title, description = description, menuid = id })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- OPENMENU
-----------------------------------------------------------------------------------------------------------------------------------------
exports("openMenu",function()
	SendNUIMessage({ show = true })
	SetNuiFocus(true,true)
	Dynamic = true
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLICKED
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("clicked",function(Data,Callback)
	if Data["trigger"] and Data["trigger"] ~= "" then
		if Data["server"] == "true" then
			TriggerServerEvent(Data["trigger"],Data["param"])
		else
			TriggerEvent(Data["trigger"],Data["param"])
		end
	end

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("close",function(Data,Callback)
	SetNuiFocus(false,false)
	Dynamic = false

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DYNAMIC:CLOSESYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("dynamic:closeSystem")
AddEventHandler("dynamic:closeSystem",function()
	if Dynamic then
		SendNUIMessage({ close = true })
		SetNuiFocus(false,false)
		Dynamic = false
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GLOBALFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("globalFunctions",function()
	
	if not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] and not LocalPlayer["state"]["Prison"] and not Dynamic and not IsPauseMenuActive() then
		local Ped = PlayerPedId()
		local Coords = GetEntityCoords(Ped)

		if GetEntityHealth(Ped) > 100 then
			if LocalPlayer ~= nil then

			exports["dynamic"]:AddButton("Chapéu","Colocar/Retirar o chapéu.","player:Outfit","Hat","clothes",true)
			exports["dynamic"]:AddButton("Máscara","Colocar/Retirar a máscara.","player:Outfit","Mask","clothes",true)
			exports["dynamic"]:AddButton("Óculos","Colocar/Retirar o óculos.","player:Outfit","Glasses","clothes",true)
			exports["dynamic"]:AddButton("Camisa","Colocar/Retirar a camisa.","player:Outfit","Shirt","clothes",true)
			exports["dynamic"]:AddButton("Jaqueta","Colocar/Retirar a jaqueta.","player:Outfit","Torso","clothes",true)
			exports["dynamic"]:AddButton("Mãos","Ajustas as mãos.","player:Outfit","Arms","clothes",true)
			exports["dynamic"]:AddButton("Colete","Colocar/Retirar o colete.","player:Outfit","Vest","clothes",true)
			exports["dynamic"]:AddButton("Calça","Colocar/Retirar a calça.","player:Outfit","Pants","clothes",true)
			exports["dynamic"]:AddButton("Sapatos","Colocar/Retirar o sapato.","player:Outfit","Shoes","clothes",true)
			exports["dynamic"]:SubMenu("Roupas","Colocar/Retirar roupas.","clothes")

				exports["dynamic"]:AddButton("Vestir | Premium","Vestir-se com as vestimentas guardadas.","player:Outfit","aplicarpre","premiumfit",true)
				exports["dynamic"]:AddButton("Guardar | Premium","Salvar suas vestimentas do corpo.","player:Outfit","salvarpre","premiumfit",true)
				exports["dynamic"]:AddButton("Remover","Remover suas vestimentas do corpo.","player:Outfit","remover","premiumfit",true)
				exports["dynamic"]:SubMenu("<b>1°<b>Armário Premium","Colocar/Retirar roupas.","premiumfit")
			end

			exports["dynamic"]:AddButton("Vestir | Premium","Vestir-se com as vestimentas guardadas.","player:Outfit2","aplicarpre","premiumfit2",true)
			exports["dynamic"]:AddButton("Guardar | Premium","Salvar suas vestimentas do corpo.","player:Outfit2","salvarpre","premiumfit2",true)
			exports["dynamic"]:AddButton("Remover","Remover suas vestimentas do corpo.","player:Outfit2","remover","premiumfit2",true)
			exports["dynamic"]:SubMenu("<b>2°<b>Armário Premium","Colocar/Retirar roupas.","premiumfit2")
			

			exports["dynamic"]:AddButton("Vestir","Vestir-se com as vestimentas guardadas.","player:Outfit","aplicar","wardrobe",true)
			exports["dynamic"]:AddButton("Guardar","Salvar suas vestimentas do corpo.","player:Outfit","salvar","wardrobe",true)
			exports["dynamic"]:AddButton("Remover","Remover suas vestimentas do corpo.","player:Outfit","remover","wardrobe",true)
			exports["dynamic"]:SubMenu("<b>1°<b>Armário","Colocar/Retirar roupas.","wardrobe")

			exports["dynamic"]:AddButton("Vestir","Vestir-se com as vestimentas guardadas.","player:Outfit2","aplicar","wardrobe2",true)
			exports["dynamic"]:AddButton("Guardar","Salvar suas vestimentas do corpo.","player:Outfit2","salvar","wardrobe2",true)
			exports["dynamic"]:AddButton("Remover","Remover suas vestimentas do corpo.","player:Outfit2","remover","wardrobe2",true)
			exports["dynamic"]:SubMenu("<b>2°<b>Armário","Colocar/Retirar roupas.","wardrobe2")
			
			local Vehicle = vRP.ClosestVehicle(7)
			local LastVehicle = GetLastDrivenVehicle()
			if IsEntityAVehicle(Vehicle) then
				if not IsPedInAnyVehicle(Ped) then
					if GetEntityModel(LastVehicle) == GetHashKey("flatbed") and not IsPedInAnyVehicle(Ped) then
						exports["dynamic"]:AddButton("Rebocar","Colocar o veículo na prancha.","towdriver:invokeTow","","others",false)
					end

					if vRP.ClosestPed(3) then
						exports["dynamic"]:AddButton("Colocar no Veículo","Colocar no veículo mais próximo.","player:cvFunctions","cv","closestpeds",true)
						exports["dynamic"]:AddButton("Remover do Veículo","Remover do veículo mais próximo.","player:cvFunctions","rv","closestpeds",true)

						exports["dynamic"]:SubMenu("Jogador","Pessoa mais próxima de você.","closestpeds")
					end
				else
					exports["dynamic"]:AddButton("Sentar no Motorista","Sentar no banco do motorista.","player:seatPlayer","0","vehicle",false)
					exports["dynamic"]:AddButton("Sentar no Passageiro","Sentar no banco do passageiro.","player:seatPlayer","1","vehicle",false)
					exports["dynamic"]:AddButton("Sentar em Outros","Sentar no banco do passageiro.","player:seatPlayer","2","vehicle",false)
					exports["dynamic"]:AddButton("Mexer nos Vidros","Levantar/Abaixar os vidros.","player:Windows","","vehicle",false)

					exports["dynamic"]:SubMenu("Veículo","Funções do veículo.","vehicle")
				end

				exports["dynamic"]:AddButton("Porta do Motorista","Abrir porta do motorista.","player:Doors","1","doors",true)
				exports["dynamic"]:AddButton("Porta do Passageiro","Abrir porta do passageiro.","player:Doors","2","doors",true)
				exports["dynamic"]:AddButton("Porta Traseira Esquerda","Abrir porta traseira esquerda.","player:Doors","3","doors",true)
				exports["dynamic"]:AddButton("Porta Traseira Direita","Abrir porta traseira direita.","player:Doors","4","doors",true)
				exports["dynamic"]:AddButton("Porta-Malas","Abrir porta-malas.","player:Doors","5","doors",true)
				exports["dynamic"]:AddButton("Capô","Abrir capô.","player:Doors","6","doors",true)

				exports["dynamic"]:SubMenu("Portas","Portas do veículo.","doors")
			end
			
	        exports["dynamic"]:AddButton("Camera","Ativar / Desativar Camera Personalizada","dynamic:camFunctions","newcam","others",false)
			exports["dynamic"]:AddButton("Propriedades","Marcar/Desmarcar propriedades no mapa.","propertys:Blips","","others",false)
			--exports["dynamic"]:AddButton("Armazéns","Marcar/Desmarcar armazéns no mapa.","warehouse:Blips","","others",false)
			exports["dynamic"]:AddButton("Ferimentos","Verificar ferimentos no corpo.","paramedic:Injuries","","others",false)
			exports["dynamic"]:AddButton("Desbugar","Recarregar o personagem.","barbershop:Debug","","others",true)
			exports["dynamic"]:SubMenu("Outros","Todas as funções do personagem.","others")

			exports["dynamic"]:openMenu()
		end
		if animalHash ~= nil then
			exports["dynamic"]:SubMenu("Domésticos", "Todas as funções dos Pet's domésticos.", "animal")
			exports["dynamic"]:AddButton("Seguir", "Seguir o proprietário.", "dynamic:animalFunctions", "seguir", "animal", false)
			exports["dynamic"]:AddButton("Colocar no Veículo", "Colocar o Pet no veículo.", "dynamic:animalFunctions", "colocar", "animal", false)
			exports["dynamic"]:AddButton("Remover do Veículo", "Remover o Pet no veículo.", "dynamic:animalFunctions", "remover", "animal", false)
			exports["dynamic"]:AddButton("Sentar", "Fazer o Pet Sentar.", "dynamic:animalFunctions", "sentar", "animal2", false)
			exports["dynamic"]:AddButton("Sentar 2", "Fazer o Pet Sentar-se diferente", "dynamic:animalFunctions", "dormir", "animal2", false)
			exports["dynamic"]:AddButton("Levantar", "Fazer o Pet Levantar-se.", "dynamic:animalFunctions", "levantar", "animal2", false)
			exports["dynamic"]:SubMenu("Animações do Pet", "Todas as funções dos Pet's domésticos.", "animal2")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DYNAMIC:ANIMALSPAWN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("dynamic:animalSpawn")
AddEventHandler("dynamic:animalSpawn",function(model)
	if animalHash == nil then
		if not spawnAnimal then
			spawnAnimal = true


			local Ped = PlayerPedId()
			local heading = GetEntityHeading(Ped)
			local coords = GetOffsetFromEntityInWorldCoords(Ped,0.0,1.0,0.0)
			local myObject,objNet = tvRP.CreatePed(model,coords["x"],coords["y"],coords["z"],heading,28,true,false)
			if myObject then
				local spawnAnimal = 0
				animalHash = NetworkGetEntityFromNetworkId(objNet)
				while not DoesEntityExist(animalHash) and spawnAnimal <= 1000 do
					animalHash = NetworkGetEntityFromNetworkId(objNet)
					spawnAnimal = spawnAnimal + 1
					Wait(1)
				end

				spawnAnimal = 0
				local pedControl = NetworkRequestControlOfEntity(animalHash)
				while not pedControl and spawnAnimal <= 1000 do
					pedControl = NetworkRequestControlOfEntity(animalHash)
					spawnAnimal = spawnAnimal + 1
					Wait(1)
				end

				SetPedCanRagdoll(animalHash,false)
				SetEntityInvincible(animalHash,true)
				SetPedFleeAttributes(animalHash,0,0)
				SetEntityAsMissionEntity(animalHash,true,false)
				SetBlockingOfNonTemporaryEvents(animalHash,true)
				SetPedRelationshipGroupHash(animalHash,GetHashKey("k9"))
				GiveWeaponToPed(animalHash,GetHashKey("WEAPON_ANIMAL"),200,true,true)
		
				SetEntityAsNoLongerNeeded(animalHash)

				TriggerEvent("dynamic:animalFunctions","seguir")

				Flash.animalRegister(objNet)
			end

			spawnAnimal = false
		end
	else
		Flash.animalCleaner()
		animalFollow = false
		animalHash = nil
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DYNAMIC:NEWCAM FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
local CAM = nil
RegisterNetEvent("dynamic:camFunctions")
AddEventHandler("dynamic:camFunctions",function(functions)

	local Ped = PlayerPedId()

	if Ped and functions == "newcam" then
        local pos = GetEntityCoords(Ped)
        local heading = GetEntityHeading(Ped)
		local Coords = GetOffsetFromEntityInWorldCoords(Ped,0.0,0.5,0)

        -- Desativa  camera
        if CAM then
            SetCamActive(CAM, false)
            RenderScriptCams(false, false, 1, true, true)
            print("Resetando a camera")
			TriggerEvent("Notify","vermelho","Você resetou a camera.",5000)
            CAM = nil  -- Reseta  a variavel da camera
        else -- Ativa  camera
            CAM = CreateCam("DEFAULT_SCRIPTED_CAMERA", Coords.x, Coords.y + 0.5, Coords.z + 0.5, 0.0, 0.0, false, 0)
			SetCamCoord(CAM,Coords["x"],Coords["y"],Coords["z"] + 0.6)
			SetCamRot(CAM,0.0,0.0,heading + 180)
            if Ped and CAM then
                SetCamActive(CAM, true)
				SetEntityHeading(Ped,Heading)
                RenderScriptCams(true, false, 1, true, true)
                print("Renderizando a Camera...")
				TriggerEvent("Notify","verde","Você ativou a <b>Camera personalizada<b>",5000)
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NEWCAM COMANDO
-----------------------------------------------------------------------------------------------------------------------------------------
local CAM = nil
RegisterCommand("newcam", function (Ped, args, raw)
    if Ped then
        local Ped = PlayerPedId()
        local pos = GetEntityCoords(Ped)
        local heading = GetEntityHeading(Ped)
        -- Ativa a camera no local
        if CAM then
            SetCamActive(CAM, false)
            RenderScriptCams(false, false, 1, true, true)
            print("Resetando a camera")
            CAM = nil  -- Reseta a camera ao dar o comando.
        else
            CAM = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", pos.x, pos.y + 0.5, pos.z + 0.5, 0.0, 0.0, heading, 60.00, false, 0)
            if Ped and CAM then
                SetCamActive(CAM, true)
                RenderScriptCams(true, false, 1, true, true)
                print("Renderizando a Camera...")
            end
        end
        return false
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DYNAMIC:ANIMAL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("checktest", function()
    local Ped = PlayerPedId()

    if DoesEntityExist(Ped) and IsPedInAnyVehicle(Ped, false) then
        local vehicle = GetVehiclePedIsIn(Ped, false)

        if DoesEntityExist(vehicle) then
            local vehicleModel = GetEntityModel(vehicle)

            if vehicleModel == GetHashKey("adder") then
                 print("Você está dentro de um veículo 'adder'")
                DeleteVehicle(vehicle)
                print("Veículo removido com sucesso.")
            else
                print("Você precisa estar dentro de um veículo 'adder' para usar este comando.")
            end
        else
            print("Você não está em um veículo.")
        end
    else
        print("Você precisa estar dentro de um veículo para usar este comando.")
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DYNAMIC:ANIMALFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("dynamic:animalFunctions")
AddEventHandler("dynamic:animalFunctions",function(functions)
	if animalHash ~= nil then
		local Ped = PlayerPedId()
		local animSleep = "creatures@rottweiler@amb@world_dog_sitting@idle_a"
		local animSleeping = "idle_c"
		local animDict = "creatures@rottweiler@amb@world_dog_sitting@idle_a"
		local animSet = "idle_b"


		if functions == "dormir" then
			DoesCutsceneEntityExist()
			    LoadAnim(animDict) 
			 	TaskPlayAnim(animalHash, animSleep, animSleeping, 3.0, 3.0,-1,1,0,0,0,0)
				SetPedKeepTask(animalHash,false)
				ClearPedProp(animalHash,propId ~= nil)
				TriggerEvent("Notify","verde","O Pet <b>sentou-se<b>",5000)
		end

		if functions == "levantar" then	
				TaskFollowToOffsetOfEntity(animalHash,Ped,1.0,1.0,0.0,5.0,-1,2.5,1)
				TriggerEvent("Notify","amarelo","O Pet <b>Levantou-se<b>",5000)
				animalFollow = true
			end
			RemoveAnimDict(animDict,animSet)

		if functions == "sentar" then
			if LoadAnim(animDict) and not RemoveAnimDict(animDict) then
				TaskPlayAnim(animalHash, animDict, animSet, 3.0, 3.0,-1,1,0,0,0,0)
				SetPedKeepTask(animalHash,false)
				TriggerEvent("Notify","verde","O Pet <b>sentou-se<b>",5000)
			end
		end
		if functions == "seguir" then
			if not animalFollow then
				TriggerEvent("Notify","verde","O <b>Pet<b><b> começou a seguir você",5000)
				TaskFollowToOffsetOfEntity(animalHash,Ped,1.0,1.0,0.0,5.0,-1,2.5,1)
				SetPedKeepTask(animalHash,true)
				animalFollow = true
			else
				TriggerEvent("Notify","vermelho","O <b>Pet<b><b> parou de seguir você",5000)
				SetPedKeepTask(animalHash,false)
				ClearPedTasks(animalHash)
				animalFollow = false
			end
		elseif functions == "colocar" then
			if IsPedInAnyVehicle(Ped) and not IsPedOnAnyBike(Ped) then
				local vehicle = GetVehiclePedIsUsing(Ped)
				if IsVehicleSeatFree(vehicle,0) then
					TriggerEvent("Notify","verde","O Pet <b>Entrou no veiculo<b>",5000)
					TaskEnterVehicle(animalHash,vehicle,-1,0,2.0,16,0)
				end
			end
		elseif functions == "remover" then
			if IsPedInAnyVehicle(Ped) and not IsPedOnAnyBike(Ped) then
				TaskLeaveVehicle(animalHash,GetVehiclePedIsUsing(Ped),256)
			end
		elseif functions == "deletar" then
			vSERVER.animalCleaner()
			animalFollow = false
			animalHash = nil
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- EMERGENCYFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("emergencyFunctions",function()
	if (LocalPlayer["state"]["Prf"] or LocalPlayer["state"]["Paramedic"]) and not IsPauseMenuActive() and not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] and not LocalPlayer["state"]["Prison"] and not Dynamic then
		local Ped = PlayerPedId()
		if LocalPlayer["state"]["Prf"] then
			if GetEntityHealth(Ped) > 100 and not IsPedInAnyVehicle(Ped) then
				--exports["dynamic"]:AddButton("Anuncio Policia","Fazer um anúncio para todos os moradores.","dynamic:EmergencyAnnounce","",false,true)
				
				exports["dynamic"]:AddButton("Carregar","Carregar a pessoa mais próxima.","player:ropeCarry","pegarjogador","player",true)
				exports["dynamic"]:AddButton("Colocar no Veículo","Colocar no veículo mais próximo.","player:cvFunctions","cv","player",true)
				exports["dynamic"]:AddButton("Remover do Veículo","Remover do veículo mais próximo.","player:cvFunctions","rv","player",true)
				exports["dynamic"]:AddButton("Remover Chapéu","Remover da pessoa mais próxima.","skinshop:Remove","Hat","player",true)
				exports["dynamic"]:AddButton("Remover Máscara","Remover da pessoa mais próxima.","skinshop:Remove","Mask","player",true)
				exports["dynamic"]:AddButton("Remover Óculos","Remover da pessoa mais próxima.","skinshop:Remove","Glasses","player",true)
				exports["dynamic"]:SubMenu("Jogador","Pessoa mais próxima de você.","player")

				exports["dynamic"]:AddButton("AGENTE", "Fardamento de Agente", "player:Preset", "17", "prePolice", true)
                        exports["dynamic"]:AddButton("AGENTE OPERACIONAL", "Fardamento de Agente Operacional", "player:Preset", "18", "prePolice", true)
                        exports["dynamic"]:AddButton("AGENTE ESPECIAL", "Fardamento de Agente Especial", "player:Preset", "19", "prePolice", true)
                        exports["dynamic"]:AddButton("INSPETOR", "Fardamento de Inspetor", "player:Preset", "20", "prePolice", true)
                        exports["dynamic"]:AddButton("INSTRUTOR", "Fardamento de Instrutor", "player:Preset", "21", "prePolice", true)

                        exports["dynamic"]:SubMenu("Fardamentos - PRF", "Todos os fardamentos.", "prePolice")
                        exports["dynamic"]:AddButton("Computador", "Computador de bordo Policial.", "Police:Mdt", "", false, false)
                        exports["dynamic"]:AddButton("Chamar Pastor Alemão", "Chamar o Pastor Alemão.", "giant-k9:checkPermission", "dog", "k9Menu", true)
                        exports["dynamic"]:SubMenu("Chamar o K9", "Cães de Guarda e comandos.", "k9Menu")
			end

			if animalHash ~= nil then
				exports["dynamic"]:AddButton("Seguir","Seguir o proprietário.","dynamic:animalFunctions","seguir","animal",false)
				exports["dynamic"]:AddButton("Colocar no Veículo","Colocar o animal no veículo.","dynamic:animalFunctions","colocar","animal",false)
				exports["dynamic"]:AddButton("Remover do Veículo","Remover o animal no veículo.","dynamic:animalFunctions","remover","animal",false)
			end


			exports["dynamic"]:AddButton("Ferimentos","Verificar ferimentos no corpo.","paramedic:Injuries","","others",false)
			exports["dynamic"]:AddButton("Propriedades","Marcações das Casas.","homes:togglePropertys","","others",false)
			exports["dynamic"]:openMenu()

		elseif LocalPlayer["state"]["Paramedic"] then
			if GetEntityHealth(Ped) > 100 and not IsPedInAnyVehicle(Ped) then
				--exports["dynamic"]:AddButton("Anuncio Paramedic","Fazer um anúncio para todos os moradores.","dynamic:EmergencyAnnounceMedic","",false,true)
				exports["dynamic"]:AddButton("Carregar","Carregar a pessoa mais próxima.","inventory:Carry","","player",true)
				exports["dynamic"]:AddButton("Colocar no Veículo","Colocar no veículo mais próximo.","player:cvFunctions","cv","player",true)
				exports["dynamic"]:AddButton("Remover do Veículo","Remover do veículo mais próximo.","player:cvFunctions","rv","player",true)
				exports["dynamic"]:AddButton("Remover Chapéu","Remover da pessoa mais próxima.","skinshop:Remove","Hat","player",true)
				exports["dynamic"]:AddButton("Remover Máscara","Remover da pessoa mais próxima.","skinshop:Remove","Mask","player",true)
				exports["dynamic"]:AddButton("Remover Óculos","Remover da pessoa mais próxima.","skinshop:Remove","Glasses","player",true)
				exports["dynamic"]:SubMenu("Jogador","Pessoa mais próxima de você.","player")

				exports["dynamic"]:AddButton("Estagiário (a)", "Fardamento de estágio.", "player:Preset", "12", "preMedic", true)
                exports["dynamic"]:AddButton("Técnico (a)", "Fardamento de técnico de enfermagem", "player:Preset", "13", "preMedic", true)
                exports["dynamic"]:AddButton("Enfermeiro (a)", "Fardamento de enfermeiro.", "player:Preset", "14", "preMedic", true)
                exports["dynamic"]:AddButton("Paramédico (a)", "Fardamento de paramédico.", "player:Preset", "15", "preMedic", true)
                exports["dynamic"]:AddButton("Médico (a)", "Fardamento de médico.", "player:Preset", "16", "preMedic", true)
                exports["dynamic"]:SubMenu("Fardamentos - Hospital", "Todos os fardamentos.", "preMedic")


				exports["dynamic"]:openMenu()
			end
		end
	end
end)

RegisterCommand("fastFoodFunctions", function()
    if not IsPauseMenuActive() then
        if LocalPlayer["state"]["KoiSushi"] then
            if not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] and not menuOpen and LocalPlayer["state"]["Route"] < 900000 then					
                exports["dynamic"]:AddButton("Gerente (a)", "Fardamento de gerente.", "player:Preset", "23", "preKoiSushi", true)
				exports["dynamic"]:AddButton("Funcionários (a)", "Fardamento de funcionário.", "player:Preset", "22", "preKoiSushi", true)
                exports["dynamic"]:SubMenu("Fardamentos - KoiSushi", "Todos os fardamentos.", "preKoiSushi")
                exports["dynamic"]:openMenu()
            end
        end
    end
end)

RegisterCommand("mechanicFunctions",function()
	if not IsPauseMenuActive() then
		if (LocalPlayer["state"]["AutoExotic"]) then
			if not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] and not menuOpen and LocalPlayer["state"]["Route"] < 900000 then					
				if LocalPlayer["state"]["AutoExotic"] then
						exports["dynamic"]:AddButton("Gerente (a)", "Fardamento de gerente.", "player:Preset", "25", "preAutoExotic", true)
						exports["dynamic"]:AddButton("Funcionarios (a)", "Fardamento de funcionario.", "player:Preset", "24", "preAutoExotic", true)
						exports["dynamic"]:SubMenu("Fardamentos - AutoExotic ", "Todos os fardamentos.", "preAutoExotic")
					
	
					exports["dynamic"]:openMenu()
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KEYMAPPING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterKeyMapping("globalFunctions","Abrir menu principal.","keyboard","F9")
RegisterKeyMapping("tencodeFunctions","Abrir menu de chamados policiais.","keyboard","F3")
RegisterKeyMapping("emergencyFunctions","Abrir menu de emergencial.","keyboard","F10")
RegisterKeyMapping("fastFoodFunctions","Abrir menu de Foods.","keyboard","F10")
RegisterKeyMapping("mechanicFunctions","Abrir menu de Mechanic.","keyboard","F10")