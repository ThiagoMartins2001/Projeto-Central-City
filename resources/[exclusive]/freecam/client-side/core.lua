local CameraMoviments = { x = 0, y = 0, z = 0, fov = 0 }
local cam, cam2, camera, TrackedEntity, offsetEnd, offsetStart = nil, nil, nil, nil, nil, nil
local SavedPictures = {}

-- Primeiro, definimos a função antes de usá-la
local function OpenCameraMode()
	SendNUIMessage({ action = "opencam" })
	SetNuiFocus(true, true)
	RenderCamMode(true)
end

RegisterCommand("cam", function()
    OpenCameraMode()
end, false) -- false = qualquer jogador pode usar

function RenderCamMode(Status)
	if Status then
		TrackedEntity = PlayerPedId()
		offsetEnd = GetOffsetFromEntityInWorldCoords(TrackedEntity, vector3(0.0, 5.0, -0.6))
		offsetStart = GetOffsetFromEntityInWorldCoords(TrackedEntity, vector3(2.20, 2.0, 2.20))

		FreezeEntityPosition(TrackedEntity, true)
		cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", offsetStart, 0.0, 0.0, 0, 60.00, true, 0)
		cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", offsetEnd, 0.0, 0.0, 0, 60.00, false, 0)
		PointCamAtEntity(cam2, TrackedEntity, 0, 0, 0, true)
		SetCamFov(cam2, 20.0)
		SetCamActiveWithInterp(cam2, cam, 0, true, true)

		RenderScriptCams(true, false, 1, true, true)

		CreateThread(function()
			Wait(400)
			if DoesCamExist(cam) then
				DestroyCam(cam, true)
			end
		end)
	else
		if DoesCamExist(cam) then
			DestroyCam(cam, true)
		end

		if DoesCamExist(cam2) then
			DestroyCam(cam2, true)
		end

		RenderScriptCams(false, false, 1, true, true)
		FreezeEntityPosition(TrackedEntity, false)
	end

	if Status then
		Wait(400)
	end
end

-- NUI Callbacks
RegisterNUICallback("close", function(data)
	SetNuiFocus(false, false)
	RenderCamMode(false)
end)

RegisterNUICallback("getCamsData", function(_, cb)
	Wait(1000)
	local Screenshots = GetResourceKvpString("CreativeFreecam")
	if Screenshots then
		SavedPictures = json.decode(Screenshots)
	end
	local data = {
		Settings = Shared,
		Pictures = SavedPictures,
	}
	cb(data)
end)

RegisterNUICallback("CameraMode", function() end)

RegisterNUICallback("SetUpCameraMovement", function(data)
	TriggerScreenblurFadeOut()
	CameraMoviments = { x = 0, y = 0, z = 0, fov = 0 }
	camera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", offsetEnd, 0.0, 40.0, 0, 20.00 + CameraMoviments["fov"], false, 0)
	SetCamActiveWithInterp(camera)
	PointCamAtEntity(camera, TrackedEntity, 0, 0, 0, true)
	RenderScriptCams(1, 1, 0, 0, 0)
	ClearTimecycleModifier("helicamfirst", 4.2)
end)

RegisterNUICallback("Movecamera", function(data)
	DestroyAllCams(true)
	local move = data["move"]
	CameraMoviments[move["type"]] = move["value"]
	camera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA",
		offsetEnd["x"] + (CameraMoviments["x"] or 0),
		offsetEnd["y"] + (CameraMoviments["y"] or 0),
		offsetEnd["z"] + (CameraMoviments["z"] or 0),
		0.0, 0.0, 0,
		20.00 + (CameraMoviments["fov"] or 0),
		false, 0
	)
	SetCamActiveWithInterp(camera)
	PointCamAtEntity(camera, TrackedEntity, 0, 0, 0, true)
	RenderScriptCams(1, 1, 0, 0, 0)
end)

RegisterNUICallback("Blurcamera", function(data)
	if data["blur"] then
		TriggerScreenblurFadeIn()
	else
		TriggerScreenblurFadeOut()
	end
end)

RegisterNUICallback("SetFilterStrength", function(data)
	FilterStrength = json.decode(data["Strength"])
	SetTimecycleModifierStrength(FilterStrength)
end)

RegisterNUICallback("SetFilter", function(data)
	if not data["filter"] then
		ClearTimecycleModifier("", 4.2)
	else
		SetTransitionTimecycleModifier(data["filter"], 0)
		SetTimecycleModifierStrength(FilterStrength)
	end
end)

RegisterNUICallback("SavePicture", function(data)
	SavedPictures[tostring(data["Saving"]["id"])] = {
		id = data["Saving"]["id"],
		image = data["Saving"]["image"],
		name = data["Saving"]["name"]
	}
	SetResourceKvp("CreativeFreecam", json.encode(SavedPictures))
end)

RegisterNUICallback("DeletePicture", function(data)
	SavedPictures[tostring(data["SelectedId"])] = nil
	SetResourceKvp("CreativeFreecam", json.encode(SavedPictures))
end)

RegisterNUICallback("TakeScreenShot", function()
	local Webhook = "https://discord.com/api/webhooks/1331250857160999023/Z7U4XV9PaJaNKwPr0oQ3kEI0Blo8lJk3wmnf7Wwot38yZIjrBmyQa-mYSdNmnIGvMGNe"
	exports["screenshot"]:requestScreenshotUpload(Webhook, "files[]", function(data)
		local image = json.decode(data)
		SendNUIMessage({
			action = "CopyScreenshotUrl",
			url = image["attachments"][1]["proxy_url"]
		})
	end)
end)

RegisterNetEvent("freecam:Active", function()
	OpenCameraMode()
end)
