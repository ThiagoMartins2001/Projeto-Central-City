if GetResourceState('vrp') ~= 'started' then return end

local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPC = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")

Framework = {}

Framework['request'] = function(source,text)
    return vRP.request(source,text,3000)
end

Framework['checkContratar'] = function(id,hospital)
    return true
end

Framework['getUserId'] = function(source)     
    return vRP.getUserId(source)
end   

Framework['getUserSource'] = function(user_id)
    return vRP.getUserSource(user_id)
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
    return vRP.hasGroup(user_id, group)
end

Framework['setGroup'] = function(user_id, group, hierarchy)
    if func.getUserSource(tonumber(user_id)) then
        return vRP.addUserGroup(parseInt(user_id), group,hierarchy)
    else
        return 'negado','Funcionario offline.'
    end
end

Framework['remGroup'] = function(user_id,group)
    if func.getUserSource(tonumber(user_id)) then
        return vRP.removeUserGroup(parseInt(user_id), group)
    else
        return 'negado','Funcionario offline.'
    end
end

Framework['hasPermission'] = function(user_id,group)
    return vRP.hasPermission(user_id,group)
end

Framework['verificarServico'] = function(source,user_id)
    return true
end

Framework['getUserIdentity'] = function(user_id)
    local identity = vRP.getUserIdentity(user_id)
    if not identity then
        return nil
    else
        return {
            name = identity.nome or 'None',
            firstname = identity.sobrenome or 'None',
            age = identity.idade or '19',
            registration = identity.registro or 'FO903OE',
            phone = identity.telefone,
        }
    end
end

Framework['tryFullPayment'] = function(user_id,valor)
    return vRP.paymentBank(user_id,valor)
end

Framework['giveBankMoney'] = function(user_id,valor)
    return vRP.giveBankMoney(user_id,valor)
end

Framework['prepare'] = function(a,b)
    return vRP.prepare(a,b)
end

Framework['execute'] = function(a,b)
    return vRP.execute(a,b)
end

Framework['query'] = function(a,b) 
    return vRP.query(a,b)
end

return Framework