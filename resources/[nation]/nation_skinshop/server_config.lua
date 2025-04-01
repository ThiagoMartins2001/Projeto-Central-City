local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
fclient = Tunnel.getInterface("nation_skinshop")
func = {}
Tunnel.bindInterface("nation_skinshop", func)

function func.checkPermission(permission)
    local source = source
    local user_id = vRP.Passport(source)
    if type(permission) == "table" then
        for i, perm in pairs(permission) do
            if vRP.HasPermission(user_id, perm) then
                return true
            end
        end
        return false
    end
    return vRP.HasPermission(user_id, permission)
end

function func.updateClothes()
    local source = source
    local Passport = vRP.Passport(source)
    local clothes = fclient.getCloths(source)
    vRP.Query("playerdata/SetData",{ Passport = Passport, dkey = "Clothings", dvalue = json.encode(clothes) })
end

function func.tryPayClothes(value)
    local source = source
    local Passport = vRP.Passport(source)
    if value >= 0 then
        if vRP.PaymentMoney(Passport, value) or vRP.PaymentBank(Passport, value) or value == 0 then
            local clothes = fclient.getCloths(source)
            TriggerClientEvent("updateRoupas", source, clothes)
            return true
        end
    end
    return false
end
