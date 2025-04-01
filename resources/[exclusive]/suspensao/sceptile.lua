local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
MTclient = Tunnel.getInterface("suspensao")
Mts = {}
Tunnel.bindInterface("suspensao", Mts)

RegisterNetEvent("callback")
AddEventHandler("callback", function(args)
    if args then
        TriggerClientEvent("returncall", args)
    else
        TriggerClientEvent("Notify", source, "negado", "Erro ao processar o callback.", 5000)
    end
end)

RegisterServerEvent("trywheel")
AddEventHandler("trywheel", function(nveh, arg)
    if arg then
        TriggerClientEvent("syncwheel", -1, nveh, arg)
    else
        TriggerClientEvent("Notify", source, "negado", "Argumento inválido para ajuste da suspensão.", 5000)
    end
end)
RegisterNetEvent("checkPermissionSusp")
AddEventHandler("checkPermissionSusp", function()
    local source = source
    local user_id = vRP.Passport(source)

    if vRP.HasPermission(user_id, "Admin") then
        TriggerClientEvent("openSuspMenu", source) -- Abrir o menu de suspensão no cliente
    else
        TriggerClientEvent("Notify", source, "negado", "Você não tem permissão para ajustar a suspensão.", 5000)
    end
end)
