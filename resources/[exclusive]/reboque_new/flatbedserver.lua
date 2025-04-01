local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

-- Evento para verificar a permissão de um usuário
RegisterServerEvent("flatbed:checkPermission")
AddEventHandler("flatbed:checkPermission", function()
    local source = source
    local user_id = vRP.Passport(source)

    if user_id then
        if vRP.HasPermission(user_id, "Mechanic") or vRP.HasPermission(user_id, "AutoExotic") or vRP.HasPermission(user_id, "CentralCustoms") then
            TriggerClientEvent("flatbed:permissionResponse", source, true)
            vRPclient.notify(source, {"~g~Permissão concedida: Você pode operar o reboque."})
        else
            TriggerClientEvent("flatbed:permissionResponse", source, false)
            vRPclient.notify(source, {"~r~Permissão negada: Você não tem acesso a esta função."})
        end
    else
        TriggerClientEvent("flatbed:permissionResponse", source, false) -- Garante que o client saiba que não tem permissão
        vRPclient.notify(source, {"~r~Erro: Não foi possível identificar o seu ID de usuário."})
    end
end)
    
