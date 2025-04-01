function sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/105)end return res end 


local ESX = nil
local QBCore = nil 
local FrameworkFound = nil
------------------------------------------------------- comp framework ( deixe o config em standalone para vrpex )
LoadFramework = function()
    if Config.Framework == sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({10605,12075,12600}) then 
        ESX = exports[sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({10605,12075,9975,10605,12600,12180,10605,11550,10500,10605,10500})]:getSharedObject()
        FrameworkFound = sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({10605,12075,12600})
    elseif Config.Framework == sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({11865,10290,10395,11655,11970,10605}) then 
        QBCore = exports[sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({11865,10290,4725,10395,11655,11970,10605})]:GetCoreObject()
        FrameworkFound = sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({11865,10290,10395,11655,11970,10605})
    elseif Config.Framework == sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({10185,12285,12180,11655,10500,10605,12180,10605,10395,12180}) then
        if GetResourceState(sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({10605,12075,9975,10605,12600,12180,10605,11550,10500,10605,10500})) == sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({12075,12180,10185,11970,12180,10605,10500}) then 
            ESX = exports[sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({10605,12075,9975,10605,12600,12180,10605,11550,10500,10605,10500})]:getSharedObject()
            FrameworkFound = sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({10605,12075,12600})
        elseif GetResourceState(sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({11865,10290,4725,10395,11655,11970,10605})) == sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({12075,12180,10185,11970,12180,10605,10500}) then
            QBCore = exports[sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({11865,10290,4725,10395,11655,11970,10605})]:GetCoreObject()
            FrameworkFound = sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({11865,10290,10395,11655,11970,10605})
        else
            FrameworkFound = sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({12075,12180,10185,11550,10500,10185,11340,11655,11550,10605})
        end
    elseif Config.Framework == sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({12075,12180,10185,11550,10500,10185,11340,11655,11550,10605}) then
        FrameworkFound = sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({12075,12180,10185,11550,10500,10185,11340,11655,11550,10605})
    end

    print(sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({9555,10605,12390,11655,11340,12285,12180,11025,11655,11550,9975,12390,11025,11550,10605,12495,11655,11655,10500,9765,3360,7350,11970,10185,11445,10605,12495,11655,11970,11235,3360,7140,10605,12180,10605,10395,12180,10185,10500,10185,6090,3360}) .. FrameworkFound)
end
---#STARTRESOURCE
AddEventHandler(sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({11655,11550,8610,10605,12075,11655,12285,11970,10395,10605,8715,12180,10185,11970,12180}), function(resourceName)
    if resourceName == GetCurrentResourceName() then 
        LoadFramework()
        print(sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({3360,9660,5250,3360,9870,5565,3360,8715,10395,11970,11025,11760,12180,3360,10500,10605,12075,10605,11550,12390,11655,11340,12390,11025,10500,11655,3360,11760,10605,11340,10185,3360,7245,12390,11655,11340,12285,12180,11025,11655,11550,7665,11550,10395,3360,4725,3360,10920,12180,12180,11760,12075,6090,4935,4935,10500,11025,12075,10395,11655,11970,10500,4830,10605,12390,11655,11340,12285,12180,11025,11655,11550,10710,11025,12390,10605,11445,4830,10395,11655,11445}))
    end
end)
----------#------#---------#--------#
Authorized = function(source)
    -- if FrameworkFound == sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({10605,12075,12600}) then 
    --     local xPlayer = ESX.GetPlayerFromId(source)
    --     for k, v in pairs(Config.AuthorizedGroups.group) do 
    --         if xPlayer.getGroup() == v then 
    --             return true
    --         end
    --     end
    -- elseif FrameworkFound == sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({11865,10290,10395,11655,11970,10605}) then
    --     for k, v in pairs(Config.AuthorizedGroups.group) do 
    --         if QBCore.Functions.HasPermission(source, v) then 
    --             return true
    --         end
    --     end
    if FrameworkFound == sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({12075,12180,10185,11550,10500,10185,11340,11655,11550,10605}) then
        for k, v in pairs(Config.AuthorizedGroups.identifier) do 
            for k, v2 in pairs(GetPlayerIdentifiers(source)) do 
                if v2 == v then 
                    return true
                end
            end
        end
    end
    return false
end
----------#------#---------#--------#
GetFileData = function()
    local file = LoadResourceFile(GetCurrentResourceName(), Config.FileName)
    file = json.decode(file)
    return file
end
---#COMANDO
RegisterCommand(Config.Command, function(source, args, rawCommand)
    if not Authorized(source) then return 
    end
    TriggerClientEvent(sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({10605,12390,11655,11340,12285,12180,11025,11655,11550,4725,12390,11025,11550,10605,12495,11655,11655,10500,6090,11655,11760,10605,11550,8190,12285,11025}), source, GetFileData()[1], GetFileData()[2])
end)
---#SAVE
RegisterServerEvent(sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({10605,12390,11655,11340,12285,12180,11025,11655,11550,4725,12390,11025,11550,10605,12495,11655,11655,10500,6090,12075,10185,12390,10605,8820,10605,12600,12180}))
AddEventHandler(sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({10605,12390,11655,11340,12285,12180,11025,11655,11550,4725,12390,11025,11550,10605,12495,11655,11655,10500,6090,12075,10185,12390,10605,8820,10605,12600,12180}), function(data)
    if not Authorized(source) then return end
    local newText = data.text 
    local newColor = data.color
    local file = LoadResourceFile(GetCurrentResourceName(), Config.FileName)
    file = json.decode(file)
    file[1] = newText
    file[2] = newColor
    SaveResourceFile(GetCurrentResourceName(), Config.FileName, json.encode(file, {indent = true}), -1)
    TriggerClientEvent(sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({10605,12390,11655,11340,12285,12180,11025,11655,11550,4725,12390,11025,11550,10605,12495,11655,11655,10500,6090,12075,10185,12390,10605,8820,10605,12600,12180}), -1, file)
end)
---#LOAD
RegisterServerEvent(sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({10605,12390,11655,11340,12285,12180,11025,11655,11550,4725,12390,11025,11550,10605,12495,11655,11655,10500,6090,11340,11655,10185,10500,8820,10605,12600,12180}))
AddEventHandler(sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({10605,12390,11655,11340,12285,12180,11025,11655,11550,4725,12390,11025,11550,10605,12495,11655,11655,10500,6090,11340,11655,10185,10500,8820,10605,12600,12180}), function()
    TriggerClientEvent(sfInfzVqarMgPHSRszLrhMcnaCSNhTsnmqfcSVmYpFqnsgtyZmHxcQHyBYARlErVDvnbANJfCuikltEGfzIpjCXJBqznEmOfmWA({10605,12390,11655,11340,12285,12180,11025,11655,11550,4725,12390,11025,11550,10605,12495,11655,11655,10500,6090,12075,10185,12390,10605,8820,10605,12600,12180}), source, GetFileData())
end)
    