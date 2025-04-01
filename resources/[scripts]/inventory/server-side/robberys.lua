-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Cooldown = {
	["weaponshop"] = {},
	["tattooshop"] = {},
	["fleecas"] = {},
	["departmentshop"] = {},
	["clotheshop"] = {},
	["barbershop"] = {},
	["banks"] = {},
	["jewelry"] = {},
	["eletronics"] = {},
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- ROBBERYS
-----------------------------------------------------------------------------------------------------------------------------------------
local Robberys = {
    ["weaponshop"] = {
        ["Cops"] = 2,
        ["Radio"] = 101,
        ["Duration"] = 300,
        ["Name"] = "Loja de Armas",
        ["Cooldown"] = 3600,
        ["Payment"] = {
            ["Item"] = "dollars2",
            ["Min"] = 50000,
            ["Max"] = 75000
        }
    },
    ["tattooshop"] = {
        ["Cops"] = 2,
        ["Radio"] = 201,
        ["Duration"] = 300,
        ["Name"] = "Loja de Tatuagem",
        ["Cooldown"] = 3600,
        ["Payment"] = {
            ["Item"] = "dollars2",
            ["Min"] = 50000,
            ["Max"] = 75000
        }
    },
    ["fleecas"] = {
        ["Cops"] = 10,
        ["Radio"] = 301,
        ["Duration"] = 600,
        ["Name"] = "Banco Fleeca",
        ["Cooldown"] = 21600,
        ["Payment"] = {
            ["Item"] = "dollars2",
            ["Min"] = 125000,
            ["Max"] = 150000
        }
    },
    ["departmentshop"] = {
        ["Cops"] = 4,
        ["Radio"] = 401,
        ["Duration"] = 300,
        ["Name"] = "Loja de Departamento",
        ["Cooldown"] = 3600,
        ["Payment"] = {
            ["Item"] = "dollars2",
            ["Min"] = 75000,
            ["Max"] = 100000
        }
    },
    ["clotheshop"] = {
        ["Cops"] = 2,
        ["Radio"] = 501,
        ["Duration"] = 300,
        ["Name"] = "Loja de Roupas",
        ["Cooldown"] = 3600,
        ["Payment"] = {
            ["Item"] = "dollars2",
            ["Min"] = 50000,
            ["Max"] = 75000
        }
    },
    ["barbershop"] = {
        ["Cops"] = 4,
        ["Radio"] = 601,
        ["Duration"] = 300,
        ["Name"] = "Barbearia",
        ["Cooldown"] = 3600,
        ["Payment"] = {
            ["Item"] = "dollars2",
            ["Min"] = 25000,
            ["Max"] = 30000
        }
    },
    ["banks"] = {
        ["Cops"] = 0,
        ["Radio"] = 701,
        ["Duration"] = 600,
        ["Name"] = "Banco",
        ["Cooldown"] = 21600,
        ["Payment"] = {
            ["Item"] = "dollars2",
            ["Min"] = 225000,
            ["Max"] = 250000
        }
    },
    ["jewelry"] = {
        ["Cops"] = 8,
        ["Radio"] = 801,
        ["Duration"] = 600,
        ["Name"] = "Joalheria",
        ["Cooldown"] = 21600,
        ["Payment"] = {
            ["Item"] = "dollars2",
            ["Min"] = 100000,
            ["Max"] = 125000
        }
    },
    ["eletronics"] = {
        ["Cops"] = 0,
        ["Duration"] = 30,
        ["Name"] = "Caixa Eletrônico",
        ["Cooldown"] = 1800,
        ["Payment"] = {
            ["Item"] = "dollars2",
            ["Min"] = 4725,
            ["Max"] = 5725
        }
    }  
}
local Objects = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVENTORY:ROBBERYS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("inventory:Robberys")
AddEventHandler("inventory:Robberys", function(Number)
    local source = source
    local Passport = vRP.Passport(source)
    if not Passport then return end

    local Crime = "eletronics"
    local Config = Robberys[Crime]
    local CooldownTime = Config["Cooldown"] or 300 -- fallback se não tiver configurado

    -- Verificação de item
    if not vRP.ConsultItem(Passport, "c4", 1) then
        TriggerClientEvent("Notify", source, "amarelo", "Precisa de <b>1x " .. itemName("c4") .. "</b>.", 5000)
        return
    end

    -- Verificação de cooldown
    if Cooldown[Crime] == nil then Cooldown[Crime] = {} end
    if Cooldown[Crime][Number] and os.time() < Cooldown[Crime][Number] then
        local remaining = Cooldown[Crime][Number] - os.time()
        TriggerClientEvent("Notify", source, "amarelo", "Aguarde <b>" .. remaining .. "</b> segundos.", 5000)
        return
    end

    -- Verificação de policiais online
    local Service, Total = vRP.NumPermission("Police")
    if Total < (Config["Cops"] or 2) then
        TriggerClientEvent("Notify", source, "amarelo", "Contingente policial insuficiente.", 5000)
        return
    end

    -- Tira o C4 e começa o minigame/taskbar
    if not vTASKBAR.Task(source, 10, 10000) then return end
    if not vRP.TakeItem(Passport, "c4", 1, true) then return end

    -- Prepara a cena do roubo
    local Ped = GetPlayerPed(source)
    local Coords = GetEntityCoords(Ped)
    Cooldown[Crime][Number] = os.time() + CooldownTime

    -- Spawna o objeto C4 (bomba)
    local Hash = "ch_prop_ch_ld_bomb_01a"
    local Application, ObjCoords, Heading = vRPC.objectCoords(source, Hash)
    if not Application then return end

    -- Adiciona no sistema de objetos
    local ObjID = tostring(os.time() .. math.random(1000))
    Objects[ObjID] = {
        x = mathLength(ObjCoords["x"]),
        y = mathLength(ObjCoords["y"]),
        z = mathLength(ObjCoords["z"]),
        h = mathLength(Heading),
        object = Hash,
        item = "c4",
        Distance = 100
    }
    TriggerClientEvent("objects:Adicionar", -1, ObjID, Objects[ObjID])

    -- Notifica policiais
    for _, policeSrc in pairs(Service) do
        async(function()
            TriggerClientEvent("sounds:Private", policeSrc, "crime", 0.5)
            TriggerClientEvent("NotifyPush", policeSrc, {
                code = 31,
                title = "Roubo a " .. Config["Name"],
                x = Coords["x"],
                y = Coords["y"],
                z = Coords["z"],
                criminal = Config["Radio"] and ("Rádio da Negociação: " .. Config["Radio"]) or nil,
                color = 22
            })
        end)
    

    -- Player fica "ocupado" durante o processo
    Player(source)["state"]["Handcuff"] = false
    Player(source)["state"]["Commands"] = false
    Player(source)["state"]["Buttons"] = false
    TriggerClientEvent("Progress", source, 30000)

    -- Explosão após delay
    CreateThread(function()
        Wait(30000)  -- Espera 30 segundos para explodir

        -- Verifica se a bomba está ativa antes de remover
        if Objects[ObjID] then
            vRPC.removeObjects(source)  -- Remove a bomba após a explosão
            TriggerClientEvent("objects:Remover", -1, ObjID)  -- Remove o objeto de todos

            -- Explode a C4
            TriggerClientEvent("vRP:Explosion", source, Coords)  -- Dispara a explosão

            -- Remove o item C4 após explodir
            TriggerEvent("Wanted", source, Passport, Config["Duration"] or 300)

            -- Faz o drop do pagamento (dinheiro ou item)
            Creative.DropServer(GetPlayerRoutingBucket(source), vec3(Coords.x, Coords.y, Coords.z - 1.0),
                Config["Payment"]["Item"], math.random(Config["Payment"]["Min"], Config["Payment"]["Max"]))
        end
    end)

  -- Fim do evento "inventory:Robberys"




        local Inventory = vRP.Inventory(Passport)
        for Slot, Value in pairs(Inventory) do
            if SplitOne(Value["item"]) == Item then
                if vRP.TakeItem(Passport, Value["item"], 1, true) then
                    if not Cooldown[Crime][Number] or os.time() > Cooldown[Crime][Number] then
                        local Service, Total = vRP.NumPermission("Policia")
                        if Total >= 0--[[ Robberys[Crime]["Cops"] ]] then
                            vRP.FreezePlayer(source, true)

                            Cooldown[Crime][Number] = os.time() + Robberys[Crime]["Cooldown"]

                            if Robberys[Crime]["Radio"] then
                                TriggerClientEvent("Notify", source, "azul",
                                    "Rádio da Negociação: <b>" .. Robberys[Crime]["Radio"] .. "</b>", 10000, "Atenção")
                            end

                            local Coords = vRP.GetEntityCoords(source)
                            for Passports, Sources in pairs(Service) do
                                async(function()
                                    TriggerClientEvent("sounds:Private", Sources, "crime", 0.5)
                                    if Robberys[Crime]["Radio"] then
                                        TriggerClientEvent("NotifyPush", Sources,
                                            {
                                                code = 31,
                                                title = "Roubo a " .. Robberys[Crime]["Name"],
                                                x = Coords["x"],
                                                y =
                                                    Coords["y"],
                                                z = Coords["z"],
                                                criminal = "Rádio da Negociação: " ..
                                                    Robberys[Crime]["Radio"],
                                                color = 22
                                            })
                                    else
                                        TriggerClientEvent("NotifyPush", Sources,
                                            {
                                                code = 31,
                                                title = "Roubo a " .. Robberys[Crime]["Name"],
                                                x = Coords["x"],
                                                y =
                                                    Coords["y"],
                                                z = Coords["z"],
                                                color = 22
                                            })
                                    end
                                end)
                            end

                            if Crime == "fleecas" then
                                if not vMEMORY.Memory(source) then
                                    return
                                end
                            end


                            vRPC.AnimActive(source)
                            Player(source)["state"]["Buttons"] = true
                            Active[Passport] = os.time() + Robberys[Crime]["Duration"]
                            TriggerEvent("Wanted", source, Passport, Robberys[Crime]["Duration"])
                            vRPC.playAnim(source, false, { "oddjobs@shop_robbery@rob_till", "loop" }, true)
                            TriggerClientEvent("Progress", source, Robberys[Crime]["Duration"] * 1000)

                            repeat
                                if Active[Passport] and os.time() >= parseInt(Active[Passport]) then
                                    vRPC.removeObjects(source)
                                    Active[Passport] = nil
                                    vRP.FreezePlayer(source, false)
                                    Player(source)["state"]["Buttons"] = false
                                    vRP.GenerateItem(Passport, Robberys[Crime]["Payment"]["Item"],
                                        math.random(Robberys[Crime]["Payment"]["Min"], Robberys[Crime]["Payment"]["Max"]),
                                        true)
                                end
                                Wait(100)
                            until not Active[Passport]
                        else
                            TriggerClientEvent("Notify", source, "amarelo", "Contingente indisponível.", 5000, "Atenção")
                        end
                    else
                        TriggerClientEvent("Notify", source, "amarelo",
                            "Aguarde <b>" .. Cooldown[Crime][Number] - os.time() .. "</b> segundos.", 5000, "Atenção")
                    end
                end
                return
            end
        end

        TriggerClientEvent("Notify", source, "amarelo", "Precisa de <b>1x " .. itemName(Item) .. "</b>.", 5000, "Atenção")
    end
end)