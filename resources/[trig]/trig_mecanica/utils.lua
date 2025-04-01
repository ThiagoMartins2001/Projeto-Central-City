local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

AutoDetected = false -- Use true para creative network onde nao consegue trigar o evento

MechanicPerms = {"Mechanic"}

-- Permissoes que conseguem utilizar o /mecanica e abrir o painel, geralmente admin ou vip especifico
Prioritys = {
    "Admin"
}

function setSData(key, value)
    vRP.Query("entitydata/SetData",{ dkey = key, dvalue = value })
end

function getSData(key)
    local Datatable = vRP.Query("entitydata/GetData",{ dkey = key })
    print(json.encode(Datatable), "Datatable")
    if #Datatable > 0 then
        return Datatable[1].dvalue
    end
end

--[[ function Plate(plate)
    print(plate, 'placa')
    local plateIndex = vRP.PassportPlate(plate)
    print(plateIndex, 'plateIndex')
    return plateIndex.Passport
end ]]

function Plate(plate)
    local plateIndex = vRP.PassportPlate(plate) -- plateIndex esta vindo nil ou null e no script lscustoms ta igual e printa normal a table
    print(json.encode(plateIndex), 'plateIndex')
    if plateIndex then
        return plateIndex.Passport
    else
        return false
    end
end


Framework = 'creative'
FrameworkCommands = {
    ['creative'] = {
        getUserId = vRP.Passport,
        hasPermission = vRP.HasGroup,
        getUserIdentity = vRP.Identity,
        getUsersByPermission = vRP.NumPermission,
        getUserByRegistration = Plate,
        getSData = getSData,
        setSData = setSData,
        tryFullPayment = vRP.PaymentBank,
    },
    ['vrpex'] = {
        getUserId = vRP.getUserId,
        hasPermission = vRP.hasPermission,
        getUserIdentity = vRP.getUserIdentity,
        getUsersByPermission = vRP.getUsersByPermission,
        getUserByRegistration = vRP.getUserByRegistration,
        getSData = vRP.getSData,
        setSData = vRP.setSData,
        tryFullPayment = vRP.tryFullPayment,
    },
}


canDyno = function(user_id)
    if user_id then
        -- Pode colocar verificaçao de permissao para usar o dyno
        return true
    end
end

sourceOrganizer = function()
    local tb = {}
    for t,v in pairs(MechanicPerms) do
        local Mechanics = FrameworkCommands[Framework].getUsersByPermission(v)
        if Mechanics then
            if #Mechanics > 0 then
                for k,v in pairs(Mechanics) do
                    table.insert(tb, v)
                end
            end
        end
    end
    return tb
end

addBudget = function()
    local Mechanics = sourceOrganizer()
    if Mechanics then
        for _,src in pairs(Mechanics) do
            local source = parseInt(src)
            local Active = Player(source).state.MechanicActive
            if Active then
                vCLIENT.syncBudget(source,getBudgets())
            end
        end
    end
end


-- Evento para aplicar o tunning, onde vehicle é a entidade
-- TriggerEvent('trig_mecanica:applyMods',vehicle)
