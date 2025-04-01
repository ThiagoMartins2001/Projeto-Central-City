local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

local Hood = false

RegisterNetEvent("hud:toggleHod")
AddEventHandler("hud:toggleHod", function()
	Hood = not Hood
    SendNUIMessage({ show = Hood})
	if Hood then
		SetPedComponentVariation(PlayerPedId(), 1, 69, 0, 1)
	else
		SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 1)
	end
end)

function enableThread()
    while true do
        Wait(1)
        DisplayRadar(false)
        DisableControlAction(0, 200, true) -- esc
        DisableControlAction(0, 199, true) -- esc
        if not Hood then return end
    end
end