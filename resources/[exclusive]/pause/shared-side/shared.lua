-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
RolepassValue = 10000
-----------------------------------------------------------------------------------------------------------------------------------------
-- BOXES
-----------------------------------------------------------------------------------------------------------------------------------------
Boxes = {
	{
		["Id"] = 1,
		["Name"] = "Caixa de Comun",
		["Image"] = "./assets/premium.png",
		["Price"] = 2,
		["Discount"] = 9
	},{
		["Id"] = 2,
		["Name"] = "Caixa de Ouro",
		["Image"] = "./assets/premium.png",  
		["Price"] = 5,
		["Discount"] = 9
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONTENTBOXES
-----------------------------------------------------------------------------------------------------------------------------------------
ContentBoxes = {
	[1] = {
		{
			["Id"] = 1,
			["Amount"] = 15,
			["Image"] = "cocaine",
			["Item"] = "cocaine",
			["Name"] = "cocaine"
		},{
			["Id"] = 2,
			["Amount"] = 6000,
			["Image"] = "dollars",
			["Item"] = "dollars",
			["Name"] = "dollars"
		},{
			["Id"] = 3,
			["Amount"] = 30,
			["Image"] = "joint",
			["Item"] = "joint",
			["Name"] = "joint"
		},{
			["Id"] = 4,
			["Amount"] = 6,
			["Image"] = "medkit",
			["Item"] = "medkit",
			["Name"] = "medkit"
		},{
			["Id"] = 5,
			["Amount"] = 4,
			["Image"] = "tyres",
			["Item"] = "tyres",
			["Name"] = "tyres"
		},{
			["Id"] = 6,
			["Amount"] = 4,
			["Image"] = "toolbox",
			["Item"] = "toolbox",
			["Name"] = "toolbox"
		}
	},
	[2] = {
		{
			["Id"] = 1,
			["Amount"] = 4,
			["Image"] = "parachute",
			["Item"] = "parachute",
			["Name"] = "parachute"
		},{
			["Id"] = 2,
			["Amount"] = 2,
			["Image"] = "wrench",
			["Item"] = "wrench",
			["Name"] = "wrench"
		},{
			["Id"] = 3,
			["Amount"] = 4,
			["Image"] = "repairkit04",
			["Item"] = "repairkit04",
			["Name"] = "repairkit04"
		},{
			["Id"] = 4,
			["Amount"] = 6,
			["Image"] = "nitro",
			["Item"] = "nitro",
			["Name"] = "nitro"
		},{
			["Id"] = 5,
			["Amount"] = 7,
			["Image"] = "lockpick",
			["Item"] = "lockpick",
			["Name"] = "lockpick"
		},{
			["Id"] = 6,
			["Amount"] = 2,
			["Image"] = "scuba",
			["Item"] = "scuba",
			["Name"] = "scuba"
		}
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- WORKS
-----------------------------------------------------------------------------------------------------------------------------------------
Works = {
	["Dismantle"] = "Desmanche",
	["Delivery"] = "Entregador",
	["Transporter"] = "Transportador",
	["Lumberman"] = "Lenhador",
	["Trucker"] = "Caminhoneiro",
	["Fisherman"] = "Pescador",
	["Driver"] = "Motorista",
	["Hunting"] = "Caçador",
	["Minerman"] = "Minerador",
	["Garbageman"] = "Lixeiro"
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- PREMIUMRENEW
-----------------------------------------------------------------------------------------------------------------------------------------
PremiumRenew = {
	["Price"] = 1000,
	["Value"] = 1500
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- SHOPITENS
-----------------------------------------------------------------------------------------------------------------------------------------
ShopItens = {

	["newchars"] = {
		["Price"] = 115,
		["Discount"] = 15
	},
	["namechange"] = {
		["Price"] = 45,
		["Discount"] = 5
	},
	["chip"] = {
		["Price"] = 45,
		["Discount"] = 20
	}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- ROLEITENS
-----------------------------------------------------------------------------------------------------------------------------------------
RoleItens = {
	["Free"] = {
		{
			["Amount"] = 1,
			["Item"] = "cellphone"
		},{
			["Amount"] = 1,
			["Item"] = "fishingrod"
		},{
			["Amount"] = 200,
			["Item"] = "recyclable"
		},{
			["Amount"] = 1,
			["Item"] = "WEAPON_WRENCH"
		},{
			["Amount"] = 1,
			["Item"] = "toolbox"
		},{
			["Amount"] = 1,
			["Item"] = "nitro"
		},{
			["Amount"] = 500,
			["Item"] = "recyclable"
		},{
			["Amount"] = 1,
			["Item"] = "rope"
		},{
			["Amount"] = 1,
			["Item"] = "fishingrod"
		},{
			["Amount"] = 1,
			["Item"] = "toolbox"
		},{
			["Amount"] = 10000,
			["Item"] = "dollars"
		},{
			["Amount"] = 2000,
			["Item"] = "recyclable"
		},{
			["Amount"] = 1,
			["Item"] = "camera"
		},{
			["Amount"] = 200,
			["Item"] = "recyclable"
		},{
			["Amount"] = 1,
			["Item"] = "repairkit01"
		},{
			["Amount"] = 12500,
			["Item"] = "dollars"
		},{
			["Amount"] = 750,
			["Item"] = "recyclable"
		},{
			["Amount"] = 1,
			["Item"] = "radio"
		},{
			["Amount"] = 1,
			["Item"] = "scuba"
		},{
			["Amount"] = 1,
			["Item"] = "medkit"
		},{
			["Amount"] = 1,
			["Item"] = "nitro"
		},{
			["Amount"] = 1,
			["Item"] = "WEAPON_KARAMBIT"
		},{
			["Amount"] = 1,
			["Item"] = "binoculars"
		},{
			["Amount"] = 900,
			["Item"] = "recyclable"
		},{
			["Amount"] = 1,
			["Item"] = "treasurebox"
		},{
			["Amount"] = 15000,
			["Item"] = "dollars"
		},{
			["Amount"] = 1,
			["Item"] = "toolbox"
		},{
			["Amount"] = 2000,
			["Item"] = "recyclable"
		},{
			["Amount"] = 1,
			["Item"] = "vape"
		},{
			["Amount"] = 100,
			["Item"] = "racecoin"
		}
	},
	["Premium"] = {
		{
			["Amount"] = 1,
			["Item"] = "advtoolbox"
		},{
			["Amount"] = 1,
			["Item"] = "treasurebox"
		},{
			["Amount"] = 3,
			["Item"] = "nitro"
		},{
			["Amount"] = 100,
			["Item"] = "racecoin"
		},{
			["Amount"] = 1,
			["Item"] = "repairkit02"
		},{
			["Amount"] = 2000,
			["Item"] = "recyclable"
		},{
			["Amount"] = 10000,
			["Item"] = "dollars"
		},{
			["Amount"] = 1,
			["Item"] = "medkit"
		},{
			["Amount"] = 150,
			["Item"] = "gemstone"
		},{
			["Amount"] = 100,
			["Item"] = "racecoin"
		},{
			["Amount"] = 1,
			["Item"] = "advtoolbox"
		},{
			["Amount"] = 1,
			["Item"] = "treasurebox"
		},{
			["Amount"] = 1,
			["Item"] = "diagram"
		},{
			["Amount"] = 4,
			["Item"] = "tyres"
		},{
			["Amount"] = 150,
			["Item"] = "gemstone"
		},{
			["Amount"] = 1,
			["Item"] = "repairkit03"
		},{
			["Amount"] = 12500,
			["Item"] = "dollars"
		},{
			["Amount"] = 1,
			["Item"] = "medkit"
		},{
			["Amount"] = 4,
			["Item"] = "tyres"
		},{
			["Amount"] = 100,
			["Item"] = "racecoin"
		},{
			["Amount"] = 150,
			["Item"] = "gemstone"
		},{
			["Amount"] = 1,
			["Item"] = "diagram"
		},{
			["Amount"] = 15000,
			["Item"] = "dollars"
		},{
			["Amount"] = 1,
			["Item"] = "advtoolbox"
		},{
			["Amount"] = 100,
			["Item"] = "racecoin"
		},{
			["Amount"] = 3,
			["Item"] = "nitro"
		},{
			["Amount"] = 1,
			["Item"] = "diagram"
		},{
			["Amount"] = 1,
			["Item"] = "backpack"
		},{
			["Amount"] = 1,
			["Item"] = "vehiclevip"
		}
	}
}