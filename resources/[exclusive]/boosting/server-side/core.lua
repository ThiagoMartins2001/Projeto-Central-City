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
Tunnel.bindInterface("boosting",Creative)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Active = {}
local Pendings = {}
local Cooldowns = {}
local ActiveMax = {}
local MaxContracts = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONTRACTS
-----------------------------------------------------------------------------------------------------------------------------------------
local Contracts = {
	[1] = {
		{
			["Vehicle"] = "gt500",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "toros",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "sheava",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "surano",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "rapidgt",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "feltzer2",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "alpha",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "gp1",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "infernus",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "bullet",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "freecrawler",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "turismo2",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "zr350",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "locust",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "seven70",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "caracara2",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "ruffian",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		},{
			["Vehicle"] = "enduro",
			["Timer"] = 600,
			["Value"] = 150,
			["Plate"] = "",
			["Class"] = 1,
			["Exp"] = 5
		}
	},
	[2] = {
		{
			["Vehicle"] = "specter",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "rebla",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "ruston",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "jester",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "banshee",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "cypher",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "voltic",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "rt3000",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "sc1",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "carbonizzare",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "infernus2",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "imorgon",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "sultan2",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "elegy2",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "yosemite2",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "ninef",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "everon",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		},{
			["Vehicle"] = "double",
			["Timer"] = 600,
			["Value"] = 175,
			["Plate"] = "",
			["Class"] = 2,
			["Exp"] = 4
		}
	},
	[3] = {
		{
			["Vehicle"] = "jackal",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "sugoi",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "penumbra",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "paragon",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "nero",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "komoda",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "ninef2",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "futo",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "buffalo3",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "banshee2",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "adder",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "schlagen",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "bestiagts",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "jester3",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "elegy",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "cheetah2",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "khamelion",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "sanchez",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		},{
			["Vehicle"] = "diablous2",
			["Timer"] = 600,
			["Value"] = 200,
			["Plate"] = "",
			["Class"] = 3,
			["Exp"] = 4
		}
	},
	[4] = {
		{
			["Vehicle"] = "omnis",
			["Timer"] = 600,
			["Value"] = 225,
			["Plate"] = "",
			["Class"] = 4,
			["Exp"] = 3
		},{
			["Vehicle"] = "massacro",
			["Timer"] = 600,
			["Value"] = 225,
			["Plate"] = "",
			["Class"] = 4,
			["Exp"] = 3
		},{
			["Vehicle"] = "euros",
			["Timer"] = 600,
			["Value"] = 225,
			["Plate"] = "",
			["Class"] = 4,
			["Exp"] = 3
		},{
			["Vehicle"] = "cheetah",
			["Timer"] = 600,
			["Value"] = 225,
			["Plate"] = "",
			["Class"] = 4,
			["Exp"] = 3
		},{
			["Vehicle"] = "tyrus",
			["Timer"] = 600,
			["Value"] = 225,
			["Plate"] = "",
			["Class"] = 4,
			["Exp"] = 3
		},{
			["Vehicle"] = "kuruma",
			["Timer"] = 600,
			["Value"] = 225,
			["Plate"] = "",
			["Class"] = 4,
			["Exp"] = 3
		},{
			["Vehicle"] = "nero2",
			["Timer"] = 600,
			["Value"] = 225,
			["Plate"] = "",
			["Class"] = 4,
			["Exp"] = 3
		},{
			["Vehicle"] = "ardent",
			["Timer"] = 600,
			["Value"] = 225,
			["Plate"] = "",
			["Class"] = 4,
			["Exp"] = 3
		},{
			["Vehicle"] = "sultan3",
			["Timer"] = 600,
			["Value"] = 225,
			["Plate"] = "",
			["Class"] = 4,
			["Exp"] = 3
		},{
			["Vehicle"] = "autarch",
			["Timer"] = 600,
			["Value"] = 225,
			["Plate"] = "",
			["Class"] = 4,
			["Exp"] = 3
		},{
			["Vehicle"] = "fmj",
			["Timer"] = 600,
			["Value"] = 225,
			["Plate"] = "",
			["Class"] = 4,
			["Exp"] = 3
		},{
			["Vehicle"] = "jester2",
			["Timer"] = 600,
			["Value"] = 225,
			["Plate"] = "",
			["Class"] = 4,
			["Exp"] = 3
		},{
			["Vehicle"] = "carbonrs",
			["Timer"] = 600,
			["Value"] = 225,
			["Plate"] = "",
			["Class"] = 4,
			["Exp"] = 3
		},{
			["Vehicle"] = "reever",
			["Timer"] = 600,
			["Value"] = 225,
			["Plate"] = "",
			["Class"] = 4,
			["Exp"] = 3
		}
	},
	[5] = {
		{
			["Vehicle"] = "gb200",
			["Timer"] = 600,
			["Value"] = 250,
			["Plate"] = "",
			["Class"] = 5,
			["Exp"] = 3
		},{
			["Vehicle"] = "sultanrs",
			["Timer"] = 600,
			["Value"] = 250,
			["Plate"] = "",
			["Class"] = 5,
			["Exp"] = 3
		},{
			["Vehicle"] = "pariah",
			["Timer"] = 600,
			["Value"] = 250,
			["Plate"] = "",
			["Class"] = 5,
			["Exp"] = 3
		},{
			["Vehicle"] = "vacca",
			["Timer"] = 600,
			["Value"] = 250,
			["Plate"] = "",
			["Class"] = 5,
			["Exp"] = 3
		},{
			["Vehicle"] = "zentorno",
			["Timer"] = 600,
			["Value"] = 250,
			["Plate"] = "",
			["Class"] = 5,
			["Exp"] = 3
		},{
			["Vehicle"] = "t20",
			["Timer"] = 600,
			["Value"] = 250,
			["Plate"] = "",
			["Class"] = 5,
			["Exp"] = 3
		},{
			["Vehicle"] = "issi7",
			["Timer"] = 600,
			["Value"] = 250,
			["Plate"] = "",
			["Class"] = 5,
			["Exp"] = 3
		},{
			["Vehicle"] = "penetrator",
			["Timer"] = 600,
			["Value"] = 250,
			["Plate"] = "",
			["Class"] = 5,
			["Exp"] = 3
		},{
			["Vehicle"] = "emerus",
			["Timer"] = 600,
			["Value"] = 250,
			["Plate"] = "",
			["Class"] = 5,
			["Exp"] = 3
		},{
			["Vehicle"] = "revolter",
			["Timer"] = 600,
			["Value"] = 250,
			["Plate"] = "",
			["Class"] = 5,
			["Exp"] = 3
		},{
			["Vehicle"] = "sentinel3",
			["Timer"] = 600,
			["Value"] = 250,
			["Plate"] = "",
			["Class"] = 5,
			["Exp"] = 3
		},{
			["Vehicle"] = "bati",
			["Timer"] = 600,
			["Value"] = 250,
			["Plate"] = "",
			["Class"] = 5,
			["Exp"] = 3
		},{
			["Vehicle"] = "bf400",
			["Timer"] = 600,
			["Value"] = 250,
			["Plate"] = "",
			["Class"] = 5,
			["Exp"] = 3
		}
	},
	[6] = {
		{
			["Vehicle"] = "flashgt",
			["Timer"] = 600,
			["Value"] = 275,
			["Plate"] = "",
			["Class"] = 6,
			["Exp"] = 2
		},{
			["Vehicle"] = "dominator7",
			["Timer"] = 600,
			["Value"] = 275,
			["Plate"] = "",
			["Class"] = 6,
			["Exp"] = 2
		},{
			["Vehicle"] = "osiris",
			["Timer"] = 600,
			["Value"] = 275,
			["Plate"] = "",
			["Class"] = 6,
			["Exp"] = 2
		},{
			["Vehicle"] = "turismor",
			["Timer"] = 600,
			["Value"] = 275,
			["Plate"] = "",
			["Class"] = 6,
			["Exp"] = 2
		},{
			["Vehicle"] = "jester4",
			["Timer"] = 600,
			["Value"] = 275,
			["Plate"] = "",
			["Class"] = 6,
			["Exp"] = 2
		},{
			["Vehicle"] = "pfister811",
			["Timer"] = 600,
			["Value"] = 275,
			["Plate"] = "",
			["Class"] = 6,
			["Exp"] = 2
		},{
			["Vehicle"] = "italigtb2",
			["Timer"] = 600,
			["Value"] = 275,
			["Plate"] = "",
			["Class"] = 6,
			["Exp"] = 2
		},{
			["Vehicle"] = "akuma",
			["Timer"] = 600,
			["Value"] = 275,
			["Plate"] = "",
			["Class"] = 6,
			["Exp"] = 2
		}
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- MINIMALS
-----------------------------------------------------------------------------------------------------------------------------------------
local Minimals = {
	[1] = {
		["Min"] = 300,
		["Max"] = 900
	},
	[2] = {
		["Min"] = 600,
		["Max"] = 1200
	},
	[3] = {
		["Min"] = 900,
		["Max"] = 1500
	},
	[4] = {
		["Min"] = 1200,
		["Max"] = 1800
	},
	[5] = {
		["Min"] = 1500,
		["Max"] = 2100
	},
	[6] = {
		["Min"] = 1800,
		["Max"] = 2700
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- ABOUTCLASSES
-----------------------------------------------------------------------------------------------------------------------------------------
function AboutClasses(Number)
	local Result = 1

	if Number >= 1000 and Number <= 1999 then
		Result = 2
	elseif Number >= 2000 and Number <= 3499 then
		Result = 3
	elseif Number >= 3500 and Number <= 4999 then
		Result = 4
	elseif Number >= 5000 and Number <= 7499 then
		Result = 5
	elseif Number >= 7500 then
		Result = 6
	end

	return Result
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADTICK
-----------------------------------------------------------------------------------------------------------------------------------------
local function ThreadTick()
    for Passport, v in pairs(Pendings) do
        if vRP.Source(Passport) then
            local Experience = vRP.GetExperience(Passport, "Boosting")
            local Level = AboutClasses(Experience)
            local Randomize = math.random(Level)

            if os.time() >= (Cooldowns[Passport][Randomize] or 0) and #Pendings[Passport] < 3 then
                if Randomize == 6 and (MaxContracts >= 3 or ActiveMax[Passport]) then
                    goto SkipContracts
                end

                if Randomize == 6 then
                    MaxContracts = MaxContracts + 1
                    ActiveMax[Passport] = true
                end

                local Selected = math.random(#Contracts[Randomize])
                table.insert(Pendings[Passport], Contracts[Randomize][Selected])
                Cooldowns[Passport][Randomize] = os.time() + math.random(Minimals[Randomize].Min, Minimals[Randomize].Max)
            end
            ::SkipContracts::
        end
    end
    SetTimeout(30000, ThreadTick)
end
ThreadTick()
-----------------------------------------------------------------------------------------------------------------------------------------
-- EXPERIENCE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Experience()
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		return vRP.GetExperience(Passport,"Boosting")
	end

	return 0
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ACTIVES
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Actives()
	local Result = {}
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and Active[Passport] then
		if os.time() >= Active[Passport]["Timer"] then
			local Class = Active[Passport]["Class"]

			Cooldowns[Passport][Class] = os.time() + math.random(Minimals[Class]["Min"],Minimals[Class]["Max"])
			Active[Passport] = nil
		else
			Result[#Result + 1] = {
				["Number"] = Active[Passport]["Number"],
				["Vehicle"] = VehicleName(Active[Passport]["Vehicle"]),
				["Timer"] = Active[Passport]["Timer"] - os.time(),
				["Class"] = Active[Passport]["Class"],
				["Value"] = Active[Passport]["Value"],
				["Exp"] = Active[Passport]["Exp"]
			}
		end
	end

	return Result
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PENDINGS
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Pendings()
	local Results = {}
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		if not Pendings[Passport] then
			Pendings[Passport] = {}
		end

		if not Cooldowns[Passport] then
			Cooldowns[Passport] = {
				[1] = os.time(),
				[2] = os.time(),
				[3] = os.time(),
				[4] = os.time(),
				[5] = os.time(),
				[6] = os.time()
			}
		end

		for Number,v in pairs(Pendings[Passport]) do
			Results[#Results + 1] = {
				["Number"] = Number,
				["Vehicle"] = VehicleName(v["Vehicle"]),
				["Timer"] = v["Timer"],
				["Class"] = v["Class"],
				["Value"] = v["Value"],
				["Exp"] = v["Exp"],
				["Scratch"] = false
			}
		end
	end

	return Results
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ACCEPT
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Accept(Number)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and not Active[Passport] and vRP.TakeItem(Passport,"dollars2",Pendings[Passport][Number]["Value"]) then
		Active[Passport] = Pendings[Passport][Number]
		Active[Passport]["Timer"] = os.time() + Pendings[Passport][Number]["Timer"]

		TriggerClientEvent("boosting:Active",source,Active[Passport]["Vehicle"])

		Pendings[Passport][Number] = nil

		return true
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SCRATCH
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Scratch(Number)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		return true
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRANSFER
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Transfer(Table)
	local source = source
	local Passport = vRP.Passport(source)
	local Selected = parseInt(Table["number"])
	local OtherPassport = parseInt(Table["passport"])
	if Passport and Selected and OtherPassport and Pendings[Passport] and Pendings[OtherPassport] and Pendings[Passport][Selected] and CountTable(Pendings[OtherPassport]) < 3 then
		local Class = Pendings[Passport][Selected]["Class"]

		Cooldowns[Passport][Class] = os.time() + math.random(Minimals[Class]["Min"],Minimals[Class]["Max"])
		Pendings[OtherPassport][#Pendings[OtherPassport] + 1] = Pendings[Passport][Selected]
		Pendings[Passport][Selected] = nil

		TriggerClientEvent("Notify",source,"verde","Transferência concluída.",5000)

		return true
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DECLINE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Decline(Selected)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport and Pendings[Passport] and Pendings[Passport][Selected] then
		local Class = Pendings[Passport][Selected]["Class"]

		Cooldowns[Passport][Class] = os.time() + math.random(Minimals[Class]["Min"],Minimals[Class]["Max"])
		Pendings[Passport][Selected] = nil

		return true
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- REMOVE
-----------------------------------------------------------------------------------------------------------------------------------------
exports("Remove",function(Passport,Plate)
	if Active[Passport] and Active[Passport]["Plate"] == Plate then
		local Class = Active[Passport]["Class"]

		Cooldowns[Passport][Class] = os.time() + math.random(Minimals[Class]["Min"],Minimals[Class]["Max"])
		Active[Passport] = nil
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CREATEVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.CreateVehicle(Model,Coords)
	local source = source
	local Passport = vRP.Passport(source)
	if Passport then
		local Vehicle = CreateVehicle(Model,Coords,true,true)

		while not DoesEntityExist(Vehicle) do
			Wait(1)
		end

		if DoesEntityExist(Vehicle) then
			local Plate = vRP.GeneratePlate()

			Active[Passport]["Plate"] = Plate
			SetVehicleNumberPlateText(Vehicle,Plate)
			SetVehicleCustomPrimaryColour(Vehicle,math.random(255),math.random(255),math.random(255))
			SetVehicleCustomSecondaryColour(Vehicle,math.random(255),math.random(255),math.random(255))

			Entity(Vehicle)["state"]:set("Fuel",100,true)
			Entity(Vehicle)["state"]:set("Tower",true,true)
			Entity(Vehicle)["state"]:set("Nitro",2000,true)

			TriggerEvent("inventory:Boosting",Plate,{
				["Amount"] = 0,
				["Source"] = source,
				["Passport"] = Passport
			})

			TriggerClientEvent("NotifyPush",source,{ code = 31, title = "Informações do Veículo", x = Coords["x"], y = Coords["y"], z = Coords["z"], vehicle = VehicleName(Model).." - "..Plate, color = 44 })

			return NetworkGetNetworkIdFromEntity(Vehicle)
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAYMENT
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAYMENT
-----------------------------------------------------------------------------------------------------------------------------------------
exports("Payment", function(source, Passport)
    if Active[Passport] then
        if Active[Passport].Timer >= os.time() then
            local Class = Active[Passport].Class
            local Experience = Active[Passport].Exp
            local Valuation = Active[Passport].Value * 2
            local MoneyReward = Active[Passport].Value * 1.5
            local TotalCooldown = math.random(Minimals[Class].Min, Minimals[Class].Max)
            
            -- Dar recompensas aos membros do grupo se existirem
            if exports["party"].DoesExist(Passport) then
                local Members = exports["party"].Room(Passport, source, 10)
                for _, member in ipairs(Members) do
                    local OtherPassport = vRP.Passport(member.Source)
                    if OtherPassport then
                        -- Pagamento completo com a função PaymentFull
                        vRP.PaymentFull(OtherPassport, MoneyReward, "nitro", Valuation, Experience, "Boosting")
                        Cooldowns[OtherPassport][Class] = os.time() + TotalCooldown
                        Active[OtherPassport] = nil
                        TriggerClientEvent("Notify", member.Source, "verde", "Você recebeu uma recompensa pelo contrato concluído!", 5000)
                    end
                end
            else
                -- Caso esteja sozinho
                -- Pagamento completo com a função PaymentFull
                vRP.PaymentFull(Passport, MoneyReward, "nitro", Valuation, Experience, "Boosting")
                Cooldowns[Passport][Class] = os.time() + TotalCooldown
                TriggerClientEvent("Notify", source, "verde", "Contrato concluído! Você recebeu dinheiro e itens.", 5000)
            end

            -- Aqui vamos finalizar a missão e entregar o veículo ao NPC ou a um local aleatório
            local vehiclePlate = Active[Passport].Plate
            local npcCoords = {x = math.random(-1000, 1000), y = math.random(-1000, 1000), z = 30}  -- Coordenadas aleatórias para o NPC
            local npcModel = "s_m_m_trucker_01"  -- Modelo do NPC

            -- Criando o NPC para a entrega
            local npcPed = CreatePed(4, GetHashKey(npcModel), npcCoords.x, npcCoords.y, npcCoords.z, 0.0, true, true)

            -- Após a criação do NPC, vamos enviar o veículo até ele ou a algum local
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)  -- Obter o veículo do jogador
            SetEntityCoords(vehicle, npcCoords.x, npcCoords.y, npcCoords.z, false, false, false, false)  -- Transporta o veículo para o NPC

            -- Notifica o jogador sobre a entrega e finaliza a missão
            TriggerClientEvent("Notify", source, "verde", "Entrega concluída! O veículo foi entregue ao NPC.", 5000)

            -- Limpando a missão ativa
            Active[Passport] = nil
        end
    end
end)

-- Função PaymentFull
function vRP.PaymentFull(Passport, dollars, nitro, item_value, experience, experience_type)
    -- Dar o dinheiro
    vRP.GiveMoney(Passport, dollars)

    -- Gerar o item
    vRP.GenerateItem(Passport, nitro, item_value, true)

    -- Adicionar a experiência
    vRP.PutExperience(Passport, experience_type, experience)

    -- Notificar o jogador
    TriggerClientEvent("Notify", passport, "verde", "Você recebeu o pagamento completo!", 5000)
end


-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECT
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("Connect",function(Passport)
	if not Pendings[Passport] then
		Pendings[Passport] = {}
	end

	if not Cooldowns[Passport] then
		Cooldowns[Passport] = {
			[1] = os.time(),
			[2] = os.time(),
			[3] = os.time(),
			[4] = os.time(),
			[5] = os.time(),
			[6] = os.time()
		}
	end
end)