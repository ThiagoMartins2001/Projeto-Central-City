if GetResourceState('vrp') ~= 'started' then return end

local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPC = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")

Framework = {}

Framework['request'] = function(source,text)
    return vRP.Request(source,text,3000)
end

Framework['checkContratar'] = function(id,hospital)
    return true
end

Framework['getUserId'] = function(source)     
    return vRP.Passport(source)
end

Framework['getUserSource'] = function(user_id)
    return vRP.Source(user_id)
end

Framework['getGroup'] = function(user_id,hospital)
    for k,v in pairs(config['hospitais'][hospital]['Hierarchy']) do
        if func.hasGroup(user_id,v.group,k) then
            return v.name
        end
    end
    return 'NOT_PERMISSION'
end

Framework['hasGroup'] = function(user_id, group, hierarchy) 
    return vRP.HasGroup(user_id, group, hierarchy)
end

Framework['setGroup'] = function(user_id, group, hierarchy)
    if func.getUserSource(tonumber(user_id)) then
        return vRP.SetPermission(user_id, group, hierarchy)
    else
        return 'negado','Funcionario offline.'
    end
end

Framework['remGroup'] = function(user_id,group,hierarchy)
    if func.getUserSource(tonumber(user_id)) then
        return vRP.RemovePermission(user_id,group,hierarchy)
    else
        return 'negado','Funcionario offline.'
    end
end

Framework['hasPermission'] = function(user_id,group,hierarchy)
    return vRP.HasGroup(user_id,group,hierarchy)
end

Framework['verificarServico'] = function(source,user_id)
    return true
end

Framework['getUserIdentity'] = function(user_id)
    local identity = vRP.Identity(user_id)
    if identity then
        return {
            name = identity.Name or identity.name or 'XXXX',
            firstname = identity.Lastname or identity.name2 or 'XXXX',
            age = identity.Age or identity.age or 'XX',
            registration = identity.Serial or 'XXXXXX',
            phone = identity.Phone or 'XXX-XXX',
        }
    end
end

Framework['tryFullPayment'] = function(user_id,valor)
    return vRP.PaymentFull(user_id,tonumber(valor))
end

Framework['giveBankMoney'] = function(user_id,valor)
    return vRP.GiveBank(user_id, tonumber(valor))
end

Framework['prepare'] = function(a,b)
    return vRP.Prepare(a,b)
end

Framework['execute'] = function(a,b)
    return vRP.Query(a,b)
end

Framework['query'] = function(a,b) 
    return vRP.Query(a,b)
end

return Framework