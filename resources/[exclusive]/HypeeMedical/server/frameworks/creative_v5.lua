if GetResourceState('vrp') ~= 'started' then return end

Tunnel = module("lib/Tunnel")
Proxy = module("lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

Framework = {}

Framework['request'] = function(source,text)
    return vRP.request(source,text)
end

Framework['checkContratar'] = function(id,hospital)
    return true
end

Framework['getUserId'] = function(source)     
    return vRP.getUserId(source)
end   

Framework['getUserSource'] = function(user_id)
    return vRP.userSource(user_id)
end

Framework['getGroup'] = function(user_id,hospital)
    for k,v in pairs(config['hospitais'][hospital]['Hierarchy']) do
        if func.hasGroup(user_id,v.group,k) then
            return v.name
        end
    end
    return 'NOT_PERMISSION' -- Não mexa aqui..
end

Framework['hasGroup'] = function(user_id, group, hierarchy) 
    return vRP.hasGroup(user_id,group,hierarchy)
end

Framework['setGroup'] = function(user_id, group, hierarchy)
    if func.getUserSource(tonumber(user_id)) then
        return vRP.setPermission(user_id, group)
    else
        return 'negado','Funcionario offline.'
    end
end

Framework['remGroup'] = function(user_id,group)
    if func.getUserSource(tonumber(user_id)) then
        return vRP.remPermission(user_id,group)
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
    local identity = vRP.userIdentity(user_id)
    if identity then
        return {
            name = identity.name or 'None',
            firstname = identity.name2 or 'None',
            age = identity.age or 'Não foi registrado',
            registration = identity.serial or 'POE3DPE3',
            phone = identity.phone,
        }
    end
    return nil
end

Framework['tryFullPayment'] = function(user_id,valor)
    return vRP.paymentFull(user_id,tonumber(valor))
end

Framework['giveBankMoney'] = function(user_id,valor)
    return vRP.addBank(user_id, tonumber(valor),'Private')
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