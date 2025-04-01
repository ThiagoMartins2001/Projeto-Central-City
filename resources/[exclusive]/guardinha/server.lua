local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

skdev = {}
Tunnel.bindInterface("skdev_guardinha",skdev)
Proxy.addInterface("skdev_guardinha",skdev)

CreateThread(function()
    print("^2SKDEV GUARDINHA | Script definido para horas: "..horas_guardinha)
    while true do
        Citizen.Wait(3600000 * horas_guardinha) -- 2 horas

        TriggerClientEvent("Notify",-1,"verde","Guardinha irá rebocar todos os veiculos desocupados em 10 minutos",30000)
        Wait(600000)
        TriggerClientEvent("Notify",-1,"verde","Guardinha irá rebocar todos os veiculos desocupados em 5 minutos",30000)
        Wait(300000)
        TriggerClientEvent("Notify",-1,"verde","Guardinha irá rebocar todos os veiculos desocupados em 2 minutos",30000)
        Wait(120000)

        local vehicles = GetAllVehicles()

        for k,vehicle in pairs(vehicles) do
            if GetPedInVehicleSeat(vehicle, -1) == 0 then
                DeleteEntity(vehicle)
            end
        end
    end
end)