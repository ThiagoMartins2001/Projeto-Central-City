local nyo_modules = GetResourceState('nyo_modules') == 'started'
local vrp = GetResourceState('vrp') == 'started'

if vrp and not nyo_modules then
    return
end

Framework = {}

NFW = exports['nyo_modules']

Framework["request"] = function(source,text)
    return NFW:request(source,text,3000)
end

Framework["checkContratar"] = function(id,hospital)
    return true
end

Framework["getUserId"] = function(source)     
    return NFW:getCharId(source)
end   

Framework["getUserSource"] = function(user_id)
    return NFW:getUserSource(user_id)
end

Framework["getGroup"] = function(user_id,hospital)
    for k,v in pairs(config['hospitais'][hospital]['Hierarchy']) do
        if func.hasGroup(user_id,v.group,k) then
            return v.name
        end
    end
    return 'NOT_PERMISSION'
end

Framework["hasGroup"] = function(user_id, group, hierarchy) 
    return NFW:hasGroup(user_id, group, hierarchy) 
end

Framework["setGroup"] = function(user_id, group, hierarchy)
    if func.getUserSource(tonumber(user_id)) then
        return NFW:addUserGroup(user_id, group, hierarchy)
    else
        return 'negado','Funcionario offline.'
    end
end

Framework["remGroup"] = function(user_id,group)
    if func.getUserSource(tonumber(user_id)) then
        return NFW:remUserGroup(user_id, group)
    else
        return 'negado','Funcionario offline.'
    end
end

Framework["hasPermission"] = function(user_id,group)
    return NFW:hasPermission(user_id,group)
end

Framework["verificarServico"] = function(source,user_id)
    return true
end

Framework["getUserIdentity"] = function(user_id)
    local identity = NFW:getCharacterIdentity(user_id)
    return {
        name = identity.name or 'None',
        firstname = identity.last_name or 'None',
        age = identity.age or '19',
        registration = identity.registration or 'FO903OE',
        phone = identity.phone,
    }
end

Framework["tryFullPayment"] = function(user_id,valor)
    return NFW:tryFullPayment(user_id, valor)
end

Framework["giveBankMoney"] = function(user_id,valor)
    return NFW:giveInventoryItem(user_id, 'dinheiro', valor)
end

Framework["prepare"] = function(a,b)
    return NFW:prepare(a,b)
end

Framework["execute"] = function(a,b)
    return NFW:querySync(a,b)
end

Framework["query"] = function(a,b) 
    return NFW:querySync(a,b)
end

return Framework