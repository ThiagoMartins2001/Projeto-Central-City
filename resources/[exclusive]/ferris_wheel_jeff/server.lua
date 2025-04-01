local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "ferris_wheel_jeff")

-- Evento disparado quando o cliente quer iniciar o passeio na roda gigante
RegisterServerEvent('ferris_wheel:start')
AddEventHandler('ferris_wheel:start', function()
    print("Evento ferris_wheel:start recebido do cliente")
    local _source = source
    -- Envia o evento de volta ao cliente para iniciar o passeio
    TriggerClientEvent('ferris_wheel:ride', _source)
end)