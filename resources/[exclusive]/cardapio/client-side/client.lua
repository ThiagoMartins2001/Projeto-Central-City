-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local PlaceName = "Cardapio"
local locais = {
    { nome = "KoiSushi", loc = vec3(-1236.97,-271.99,37.77), background = "https://cdn.discordapp.com/attachments/1324519366691393578/1350530353600663552/Koi_Sushi.png?ex=67defbe7&is=67ddaa67&hm=a7693d607f95d0bcb809d8cb0ae558562431a324856bdc77bd4ceaf74644d87c&" },
   -- { nome = "Emerald", loc = vec3(-111.77,388.09,113.28), background = "https://media.discordapp.net/attachments/1090026397914890372/1194767299538853958/CARDAPIOS-EMERALD.png?ex=65b18cc1&is=659f17c1&hm=f87bd4063fac4101328a23cd52b56e0e9933787d8047d3b15eaf2eb1deacae1a&=&format=webp&quality=lossless&width=474&height=670" },
    --{ nome = "Pokecafe", loc = vec3(-623.59,-298.64,35.33), background = "https://media.discordapp.net/attachments/1090026397914890372/1194767302793634023/CARDAPIO-POKECAFE.png?ex=65b18cc2&is=659f17c2&hm=2d106d0b69d767fe82c1fae0376e56a4fbc5f9392ccc3bcfac9b679cd3e8249f&=&format=webp&quality=lossless&width=474&height=670" },
    --{ nome = "Cinema", loc = vec3(351.88,192.78,102.99), background = "https://media.discordapp.net/attachments/1090026397914890372/1194767302311280822/CARDAPIO-CINESTREET.png?ex=65b18cc2&is=659f17c2&hm=a456e584a8b0904a08e268a62bda8088eb7ea2a6d03ef96086575c6f76ca76c1&=&format=webp&quality=lossless&width=474&height=670" },
    --{ nome = "Vanilla02", loc = vec3(-308.84,6260.83,31.49), background = "https://media.discordapp.net/attachments/1090026397914890372/1194767301854109857/CARDAPIOS-VANILLA.png?ex=65b18cc2&is=659f17c2&hm=ac42784580c7dc390e788050fb506dcc50044fa33e1042bb9f2858d00f5f7669&=&format=webp&quality=lossless&width=474&height=670" },
    --{ nome = "Vanilla01", loc = vec3(96.86,-1274.2,21.11), background = "https://media.discordapp.net/attachments/1090026397914890372/1194767301854109857/CARDAPIOS-VANILLA.png?ex=65b18cc2&is=659f17c2&hm=ac42784580c7dc390e788050fb506dcc50044fa33e1042bb9f2858d00f5f7669&=&format=webp&quality=lossless&width=474&height=670" },
    --{ nome = "Rexdiner", loc = vec3(2541.3,2590.05,38.67), background = "https://media.discordapp.net/attachments/1090026397914890372/1194767300486762597/CARDAPIOS-REXSDINER.png?ex=65b18cc2&is=659f17c2&hm=40586ef9834e34351d049ae6c66ce4b3d3ed4684b128974b3280100242dbec0f&=&format=webp&quality=lossless&width=474&height=670" },
    --{ nome = "Rockitdiner", loc = vec3(1584.76,6458.14,25.31), background = "https://media.discordapp.net/attachments/1090026397914890372/1194767303192088666/CARDAPIO-ROCKIT.png?ex=65b18cc2&is=659f17c2&hm=32336269249ec6d847115e0d9e131238769ec46404fb4915d2feaee0315023d7&=&format=webp&quality=lossless&width=474&height=670" },
    --{ nome = "Bahamas", loc = vec3(-1381.74,-597.66,30.21), background = "https://media.discordapp.net/attachments/1090026397914890372/1194767300889419916/CARDAPIOS-SANDYBAR.png?ex=65b18cc2&is=659f17c2&hm=ab66983325f34d150c74ae3ae6ba2a9814db4b98ca9555d35da2f42c343cf8ec&=&format=webp&quality=lossless&width=474&height=670" },
    --{ nome = "Hasegawa", loc = vec3(-1236.83,-271.89,37.76), background = "https://media.discordapp.net/attachments/1090026397914890372/1194767300079910972/CARDAPIOS-HASEGAWA.png?ex=65b18cc2&is=659f17c2&hm=dbe8a788fdb8218870807f56c45b69742967a5e8326df8b5fa76e0464dd212ad&=&format=webp&quality=lossless&width=474&height=670" },
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CARDAPIO ABRIR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Cardapio:Abrir")
AddEventHandler("Cardapio:Abrir",function()
	local playerPed = GetPlayerPed(-1)
    local x, y, z = table.unpack(GetEntityCoords(playerPed))
    local nomeDoLocal, background = InPlace(x,y,z)
    PlaceName = nomeDoLocal
    
    SetNuiFocus(true,true)
    SetCursorLocation(0.5, 0.5)
    StartScreenEffect("MenuMGSelectionIn", 0, true)
    SendNUIMessage({ action = "showMenu", background = background })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("close",function(data)
	SetNuiFocus(false,false)
	SendNUIMessage({ action = "hideMenu" })
	StopScreenEffect("MenuMGSelectionIn")
end)
----------------------------------------------------------------------------------------------------------------------------------------
-- CONSULT CARDAPIO
----------------------------------------------------------------------------------------------------------------------------------------
listCardapio = {}

RegisterNUICallback("consultCardapio",function(data,cb,imgperfil)
	listCardapio = {}

    for k,v in pairs(Comidas[PlaceName][data.lista]) do
        table.insert(listCardapio, { index = itemIndex(k), valor = parseFormat(v.valor), nome = itemName(k) })
    end

	cb({ consultCardapio = listCardapio })
end)
----------------------------------------------------------------------------------------------------------------------------------------
-- INPLACE
----------------------------------------------------------------------------------------------------------------------------------------
function InPlace(x,y,z)
    for _, Table in ipairs(locais) do
        local distancia = GetDistanceBetweenCoords(x,y,z, Table["loc"]["x"], Table["loc"]["y"], Table["loc"]["z"], true)
        if distancia < 2.0 then
            return Table["nome"], Table["background"]
        end
    end
    return nil
end
----------------------------------------------------------------------------------------------------------------------------------------
-- LOCALS
----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	for Number = 1,#locais do
		exports["target"]:AddCircleZone("Cardapio:"..locais[Number]["nome"],locais[Number]["loc"],0.55,{
			name = "Cardapio:"..locais[Number]["nome"],
			heading = 0.0
		},{
			shop = Number,
			Distance = 1.0,
			options = {
				{
					label = "Abrir Cardápio",
					event = "Cardapio:Abrir",
					tunnel = "shop"
				}
			}
		})
	end
end)