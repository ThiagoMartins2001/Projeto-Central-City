local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
----------------------------------------
src = {}
Tunnel.bindInterface("giant-k9",src)
vRPclient = Tunnel.getInterface("vRP")

function src.SearchPeople(target)
    local src = target
    local user_id = vRP.Passport(src)

    if not user_id then
        print("Erro: user_id é inválido.")
        return false
    end

    local encontrouItemIlegal = false

    for i = 1, #Config.SearchableItems do
        local itemName = Config.SearchableItems[i]
        
        -- Obter os dados do item como uma tabela
        local Consult = vRP.InventoryItemAmount(user_id, itemName) or {}

        -- Garantir que Consult[1] (quantidade) está presente e é válida
        local itemAmount = Consult[1] or 0

        -- Debug para verificar o retorno
        print("Verificando item: " .. itemName .. " | Quantidade: " .. tostring(itemAmount))

        if itemAmount > 0 then
            encontrouItemIlegal = true
            break
        end
    end

    if encontrouItemIlegal then
        TriggerClientEvent("Notify", source, "negado", "O cachorro encontrou itens ilegais!")
        return true
    else
        TriggerClientEvent("Notify", source, "negado", "O cachorro não encontrou nenhum item ilegal.")
        return false
    end
end


RegisterNetEvent('giant-k9:checkPermission', function()
    local source = source
    local user_id = vRP.Passport(source) -- Obtém o user_id do jogador

    if vRP.HasGroup(user_id, "Police") then
        -- Envia autorização ao cliente para spawnar o cão
        TriggerClientEvent('giant-k9:permissionGranted', source)
    else
        -- Envia negação ao cliente
        TriggerClientEvent('giant-k9:permissionDenied', source)
    end
end)

