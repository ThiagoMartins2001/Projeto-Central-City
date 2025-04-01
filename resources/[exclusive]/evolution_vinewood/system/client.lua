function eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/105)end return res end 


local ESX = nil
local QBCore = nil 
local FrameworkFound = nil
local nuiOpen = false
local modelCreated = {}
----------#------#---------#--------#
LoadFramework = function()
    if Config.Framework == eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({10605,12075,12600}) then 
        ESX = exports[eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({10605,12075,9975,10605,12600,12180,10605,11550,10500,10605,10500})]:getSharedObject()
        FrameworkFound = eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({10605,12075,12600})
    elseif Config.Framework == eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({11865,10290,10395,11655,11970,10605}) then 
        QBCore = exports[eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({11865,10290,4725,10395,11655,11970,10605})]:GetCoreObject()
        FrameworkFound = eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({11865,10290,10395,11655,11970,10605})
    elseif Config.Framework == eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({10185,12285,12180,11655,10500,10605,12180,10605,10395,12180}) then
        if GetResourceState(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({10605,12075,9975,10605,12600,12180,10605,11550,10500,10605,10500})) == eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({12075,12180,10185,11970,12180,10605,10500}) then 
            ESX = exports[eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({10605,12075,9975,10605,12600,12180,10605,11550,10500,10605,10500})]:getSharedObject()
            FrameworkFound = eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({10605,12075,12600})
        elseif GetResourceState(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({11865,10290,4725,10395,11655,11970,10605})) == eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({12075,12180,10185,11970,12180,10605,10500}) then
            QBCore = exports[eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({11865,10290,4725,10395,11655,11970,10605})]:GetCoreObject()
            FrameworkFound = eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({11865,10290,10395,11655,11970,10605})
        else
            FrameworkFound = eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({12075,12180,10185,11550,10500,10185,11340,11655,11550,10605})
        end
    elseif Config.Framework == eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({12075,12180,10185,11550,10500,10185,11340,11655,11550,10605}) then
        FrameworkFound = eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({12075,12180,10185,11550,10500,10185,11340,11655,11550,10605})
    end
end
----------#------#---------#--------#
Citizen.CreateThread(function()
    LoadFramework()
    TriggerServerEvent(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({10605,12390,11655,11340,12285,12180,11025,11655,11550,4725,12390,11025,11550,10605,12495,11655,11655,10500,6090,11340,11655,10185,10500,8820,10605,12600,12180}))
end)
----------#------#---------#--------#
RegisterNetEvent(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({10605,12390,11655,11340,12285,12180,11025,11655,11550,4725,12390,11025,11550,10605,12495,11655,11655,10500,6090,11655,11760,10605,11550,8190,12285,11025}))
AddEventHandler(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({10605,12390,11655,11340,12285,12180,11025,11655,11550,4725,12390,11025,11550,10605,12495,11655,11655,10500,6090,11655,11760,10605,11550,8190,12285,11025}), function(text, color)
    nuiOpen = true
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({8715,7245,8820,9975,7980,8295,7035,6825,7980,7245,8715}),
        locales = Config.Locales
    })
    SendNUIMessage({
        type = eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({8295,8400,7245,8190}),
        text = text,
        color = color
    })
end)
----------#------#---------#--------#
RegisterNUICallback(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({12075,10185,12390,10605,8820,10605,12600,12180}), function(data)
    TriggerServerEvent(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({10605,12390,11655,11340,12285,12180,11025,11655,11550,4725,12390,11025,11550,10605,12495,11655,11655,10500,6090,12075,10185,12390,10605,8820,10605,12600,12180}), data)
end)
----------#------#---------#--------#
RegisterNUICallback(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({10395,11340,11655,12075,10605}), function(data)
    nuiOpen = false
    SetNuiFocus(false, false)
end)
----------#------#---------#--------#
RegisterNetEvent(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({10605,12390,11655,11340,12285,12180,11025,11655,11550,4725,12390,11025,11550,10605,12495,11655,11655,10500,6090,12075,10185,12390,10605,8820,10605,12600,12180}))
AddEventHandler(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({10605,12390,11655,11340,12285,12180,11025,11655,11550,4725,12390,11025,11550,10605,12495,11655,11655,10500,6090,12075,10185,12390,10605,8820,10605,12600,12180}), function(data)
    UpdateMap(data)
    print(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({9870,5670,3360,8715,10395,11970,11025,11760,12180,3360,10500,10605,12075,10605,11550,12390,11655,11340,12390,11025,10500,11655,3360,11760,10605,11340,10185,3360,7245,12390,11655,11340,12285,12180,11025,11655,11550,7665,11550,10395,3360,4725,3360,9870,5355,3360,10920,12180,12180,11760,12075,6090,4935,4935,10500,11025,12075,10395,11655,11970,10500,4830,10605,12390,11655,11340,12285,12180,11025,11655,11550,10710,11025,12390,10605,11445,4830,10395,11655,11445}))
    if nuiOpen then 
        SendNUIMessage({
            type = eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({8925,8400,7140,6825,8820,7245}),
            text = data[1],
            color = data[2]
        })
    end
end)
----------#------#---------#--------#
AddEventHandler(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({11655,11550,8610,10605,12075,11655,12285,11970,10395,10605,8715,12180,11655,11760}), function(resource)
    if resource == GetCurrentResourceName() then
        for k, v in pairs(modelCreated) do
            DeleteEntity(v)
        end
    end
end)
----------#------#---------#--------#
hexToRgb = function(hex)
    hex = hex:gsub(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({3675}),eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({}))
    return {
        r = tonumber(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({5040,12600})..hex:sub(1,2)),
        g = tonumber(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({5040,12600})..hex:sub(3,4)),
        b = tonumber(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({5040,12600})..hex:sub(5,6))
    }
end
----------#------#---------#--------#
UpdateMap = function(data)
    for k, v in pairs(modelCreated) do
        DeleteEntity(v)
    end
    modelCreated = {}
    if not data then return end
    local completeText = data[1]
    if not completeText then return end
    for i=1, #completeText, 1 do 
        if i > 8 then 
            return 
        end
        local string = completeText:sub(i, i)
        local model = string
        local coords = Config.Coords[i].coordinate
        local heading = Config.Coords[i].heading
        model = model
        if model ~= eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({3360}) then
            RequestModel(model)
            while not HasModelLoaded(model) do
                Wait(1)
            end

            local obj = CreateObject(model, coords, false, false, false)
            SetEntityHeading(obj, heading)
            table.insert(modelCreated, obj)
            SetColorModel(model, eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({12180,10605,10395,10920,10500,10605,12390,11655,11550,12180,11655,11760}), hexToRgb(data[2]))
        end
    end
end
----------#------#---------#--------#
SetColorModel = function(model, textureName, colorRgb)
    local txd = eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({12180,12600,10500,9975,12390,11025,11550,10605,12495,11655,11655,10500,9975,12075,11025,10815,11550})
    local txn = eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({12180,12600,11550,9975,12390,11025,11550,10605,12495,11655,11655,10500,9975,12075,11025,10815,11550})
    local dict = CreateRuntimeTxd(txd)
    local texture = CreateRuntimeTexture(dict, txn, 4, 4)
    local resolution = GetTextureResolution(txd, txn)
    if(colorRgb.r == 255 and colorRgb.g == 255 and colorRgb.b == 255) then
        RemoveReplaceTexture(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({11445,10185,11025,11550,8820,10605,12600,12180,12285,11970,10605}), textureName)
    else
        SetRuntimeTexturePixel(texture, 0, 0, colorRgb.r, colorRgb.g, colorRgb.b, 255)
        CommitRuntimeTexture(texture)
        AddReplaceTexture(eszyAuaqYWtIRHmZTpuTQnIfeWziyDzdipPQUwjCTbyWRybqiRBMZtmIIrIJvVOhQFmHBgNxJLg({11445,10185,11025,11550,8820,10605,12600,12180,12285,11970,10605}), textureName, txd, txn)  
    end  
end