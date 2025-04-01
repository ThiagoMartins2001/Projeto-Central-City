-----------------------------------------------------------------
-- refem infratores
------------------------------------------------------------------

local hostageAllowedWeapons = {
    "WEAPON_PISTOL",
    "WEAPON_COMBATPISTOL",
    "WEAPON_PISTOL_MK2",
    "WEAPON_SNSPISTOL",
    "WEAPON_GLOCKMENGO",
    "WEAPON_GLOCK18C",
    "WEAPON_GLOCKRELIKIASHOPFEMININO",
    "WEAPON_GLOCKRAJ",
    "WEAPON_GLOCK22",
    "WEAPON_G18G",
    "WEAPON_GLOCKRELIKIASHOPFEMININO",
    --etc add guns you want
}

local holdingHostageInProgress = false
local takeHostageAnimNamePlaying = ""
local takeHostageAnimDictPlaying = ""
local takeHostageControlFlagPlaying = 0

RegisterCommand("fazerefem", function()
    takeHostage()
end)

RegisterCommand("prefem", function()
    takeHostage()
end)

function takeHostage()
    ClearPedSecondaryTask(PlayerPedId())
    DetachEntity(PlayerPedId(), true, false)
    local canTakeHostage = false
    local foundWeapon = nil

    for i = 1, #hostageAllowedWeapons do
        if HasPedGotWeapon(PlayerPedId(), GetHashKey(hostageAllowedWeapons[i]), false) then
            if GetAmmoInPedWeapon(PlayerPedId(), GetHashKey(hostageAllowedWeapons[i])) > 0 then
                canTakeHostage = true
                foundWeapon = GetHashKey(hostageAllowedWeapons[i])
                break
            end
        end
    end

    if not canTakeHostage then
        TriggerEvent("chat:addMessage", { args = { "Você precisa de uma pistola com munição para fazer um refém!." } })
        return
    end

    if not holdingHostageInProgress then
        local player = PlayerPedId()
        local lib = 'anim@gangops@hostage@'
        local anim1 = 'perp_idle'
        local lib2 = 'anim@gangops@hostage@'
        local anim2 = 'victim_idle'
        local distans = 0.11   --Higher = closer to camera
        local distans2 = -0.24 --higher = left
        local height = 0.0
        local spin = 0.0
        local length = 100000
        local controlFlagMe = 49
        local controlFlagTarget = 49
        local animFlagTarget = 50
        local attachFlag = true

        local closestPlayer = GetClosestPlayer(2)
        local target = GetPlayerServerId(closestPlayer)

        if closestPlayer ~= -1 and closestPlayer ~= nil then
            SetCurrentPedWeapon(PlayerPedId(), foundWeapon, true)
            holdingHostageInProgress = true
            holdingHostage = true
            TriggerServerEvent('cmg3_animations:sync', closestPlayer, lib, lib2, anim1, anim2, distans, distans2, height,
                target, length, spin, controlFlagMe, controlFlagTarget, animFlagTarget, attachFlag)
        else
            TriggerEvent("chat:addMessage", { args = { "Ninguém por perto para fazer de réfem." } })
        end
    end
end

RegisterNetEvent('cmg3_animations:syncTarget')
AddEventHandler('cmg3_animations:syncTarget',
    function(target, animationLib, animation2, distans, distans2, height, length, spin, controlFlag, animFlagTarget,
             attach)
        local playerPed = PlayerPedId()
        local targetPed = GetPlayerPed(GetPlayerFromServerId(target))
        if holdingHostageInProgress then
            holdingHostageInProgress = false
        else
            holdingHostageInProgress = true
        end
        beingHeldHostage = true
        RequestAnimDict(animationLib)

        while not HasAnimDictLoaded(animationLib) do
            Citizen.Wait(10)
        end
        if spin == nil then spin = 180.0 end
        if attach then
            AttachEntityToEntity(PlayerPedId(), targetPed, 0, distans2, distans, height, 0.5, 0.5, spin, false, false,
                false, false, 2, false)
        end

        if controlFlag == nil then controlFlag = 0 end

        if animation2 == "victim_fail" then
            SetEntityHealth(PlayerPedId(), 0)
            DetachEntity(PlayerPedId(), true, false)
            TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)
            beingHeldHostage = false
            holdingHostageInProgress = false
        elseif animation2 == "shoved_back" then
            holdingHostageInProgress = false
            DetachEntity(PlayerPedId(), true, false)
            TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)
            beingHeldHostage = false
        else
            TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)
        end
        takeHostageAnimNamePlaying = animation2
        takeHostageAnimDictPlaying = animationLib
        takeHostageControlFlagPlaying = controlFlag
    end)

RegisterNetEvent('cmg3_animations:syncMe')
AddEventHandler('cmg3_animations:syncMe', function(animationLib, animation, length, controlFlag, animFlag)
    local playerPed = PlayerPedId()
    ClearPedSecondaryTask(PlayerPedId())
    RequestAnimDict(animationLib)
    while not HasAnimDictLoaded(animationLib) do
        Citizen.Wait(10)
    end
    if controlFlag == nil then controlFlag = 0 end
    TaskPlayAnim(playerPed, animationLib, animation, 8.0, -8.0, length, controlFlag, 0, false, false, false)
    takeHostageAnimNamePlaying = animation
    takeHostageAnimDictPlaying = animationLib
    takeHostageControlFlagPlaying = controlFlag
    if animation == "perp_fail" then
        SetPedShootsAtCoord(PlayerPedId(), 0.0, 0.0, 0.0, 0)
        holdingHostageInProgress = false
    end
    if animation == "shove_var_a" then
        Wait(900)
        ClearPedSecondaryTask(PlayerPedId())
        holdingHostageInProgress = false
    end
end)

RegisterNetEvent('cmg3_animations:cl_stop')
AddEventHandler('cmg3_animations:cl_stop', function()
    holdingHostageInProgress = false
    beingHeldHostage = false
    holdingHostage = false
    ClearPedSecondaryTask(PlayerPedId())
    DetachEntity(PlayerPedId(), true, false)
end)

Citizen.CreateThread(function()
    while true do
        if holdingHostage or beingHeldHostage then
            while not IsEntityPlayingAnim(PlayerPedId(), takeHostageAnimDictPlaying, takeHostageAnimNamePlaying, 3) do
                TaskPlayAnim(PlayerPedId(), takeHostageAnimDictPlaying, takeHostageAnimNamePlaying, 8.0, -8.0, 100000,
                    takeHostageControlFlagPlaying, 0, false, false, false)
                Citizen.Wait(0)
            end
        end
        Wait(0)
    end
end)

function GetPlayers()
    local players = {}

    for _, i in ipairs(GetActivePlayers()) do
        table.insert(players, i)
    end

    return players
end

function GetClosestPlayer(radius)
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply, 0)

    for index, value in ipairs(players) do
        local target = GetPlayerPed(value)
        if target ~= ply then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = GetDistanceBetweenCoords(targetCoords.x, targetCoords.y, targetCoords.z, plyCoords.x,
                plyCoords.y, plyCoords.z, true)
            if closestDistance == -1 or closestDistance > distance then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
    if closestDistance <= radius then
        return closestPlayer
    else
        return nil
    end
end

Citizen.CreateThread(function()
    while true do
        if holdingHostage then
            if IsEntityDead(PlayerPedId()) then
                holdingHostage = false
                holdingHostageInProgress = false
                local closestPlayer = GetClosestPlayer(2)
                local target = GetPlayerServerId(closestPlayer)
                TriggerServerEvent("cmg3_animations:stop", target)
                Wait(100)
                releaseHostage()
            end
            DisableControlAction(0, 24, true) -- disable attack
            DisableControlAction(0, 25, true) -- disable aim
            DisableControlAction(0, 47, true) -- disable weapon
            DisableControlAction(0, 58, true) -- disable weapon
            DisablePlayerFiring(PlayerPedId(), true)
            local playerCoords = GetEntityCoords(PlayerPedId())
            DrawText3D(playerCoords.x, playerCoords.y, playerCoords.z, "Aperte [Y] para soltar, [U] para matar")
            if IsDisabledControlJustPressed(0, 246) then --release
                holdingHostage = false
                holdingHostageInProgress = false
                local closestPlayer = GetClosestPlayer(2)
                local target = GetPlayerServerId(closestPlayer)
                TriggerServerEvent("cmg3_animations:stop", target)
                Wait(100)
                releaseHostage()
            elseif IsDisabledControlJustPressed(0, 303) then --kill
                holdingHostage = false
                holdingHostageInProgress = false
                local closestPlayer = GetClosestPlayer(2)
                local target = GetPlayerServerId(closestPlayer)
                TriggerServerEvent("cmg3_animations:stop", target)
                killHostage()
            end
        end
        if beingHeldHostage then
            DisableControlAction(0, 21, true)  -- disable sprint
            DisableControlAction(0, 24, true)  -- disable attack
            DisableControlAction(0, 25, true)  -- disable aim
            DisableControlAction(0, 47, true)  -- disable weapon
            DisableControlAction(0, 58, true)  -- disable weapon
            DisableControlAction(0, 263, true) -- disable melee
            DisableControlAction(0, 264, true) -- disable melee
            DisableControlAction(0, 257, true) -- disable melee
            DisableControlAction(0, 140, true) -- disable melee
            DisableControlAction(0, 141, true) -- disable melee
            DisableControlAction(0, 142, true) -- disable melee
            DisableControlAction(0, 143, true) -- disable melee
            DisableControlAction(0, 75, true)  -- disable exit vehicle
            DisableControlAction(27, 75, true) -- disable exit vehicle
            DisableControlAction(0, 22, true)  -- disable jump
            DisableControlAction(0, 32, true)  -- disable move up
            DisableControlAction(0, 268, true)
            DisableControlAction(0, 33, true)  -- disable move down
            DisableControlAction(0, 269, true)
            DisableControlAction(0, 34, true)  -- disable move left
            DisableControlAction(0, 270, true)
            DisableControlAction(0, 35, true)  -- disable move right
            DisableControlAction(0, 271, true)
        end
        Wait(0)
    end
end)

function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())

    if onScreen then
        SetTextScale(0.19, 0.19)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 55)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end

function releaseHostage()
    local player = PlayerPedId()
    local lib = 'reaction@shove'
    local anim1 = 'shove_var_a'
    local lib2 = 'reaction@shove'
    local anim2 = 'shoved_back'
    local distans = 0.11   --Higher = closer to camera
    local distans2 = -0.24 --higher = left
    local height = 0.0
    local spin = 0.0
    local length = 100000
    local controlFlagMe = 120
    local controlFlagTarget = 0
    local animFlagTarget = 1
    local attachFlag = false
    local closestPlayer = GetClosestPlayer(2)
    local target = GetPlayerServerId(closestPlayer)
    if closestPlayer ~= 0 then
        TriggerServerEvent('cmg3_animations:sync', closestPlayer, lib, lib2, anim1, anim2, distans, distans2, height,
            target, length, spin, controlFlagMe, controlFlagTarget, animFlagTarget, attachFlag)
    end
end

function killHostage()
    local player = PlayerPedId()
    local lib = 'anim@gangops@hostage@'
    local anim1 = 'perp_fail'
    local lib2 = 'anim@gangops@hostage@'
    local anim2 = 'victim_fail'
    local distans = 0.11   --Higher = closer to camera
    local distans2 = -0.24 --higher = left
    local height = 0.0
    local spin = 0.0
    local length = 0.2
    local controlFlagMe = 168
    local controlFlagTarget = 0
    local animFlagTarget = 1
    local attachFlag = false
    local closestPlayer = GetClosestPlayer(2)
    local target = GetPlayerServerId(closestPlayer)
    if target ~= 0 then
        TriggerServerEvent('cmg3_animations:sync', closestPlayer, lib, lib2, anim1, anim2, distans, distans2, height,
            target, length, spin, controlFlagMe, controlFlagTarget, animFlagTarget, attachFlag)
    end
end

function drawNativeNotification(text)
    SetTextComponentFormat('STRING')
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end
