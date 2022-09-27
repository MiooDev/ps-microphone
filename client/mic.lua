local QBCore = exports['qb-core']:GetCoreObject()

local prop = "v_club_roc_micstd"
local usingMic = false
local entity = {
    'prop_podium_mic',
    'prop_table_mic_01',
    'v_ilev_fos_mic',
    'v_club_roc_micstd'
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(7)
        inRange = false
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        for k,v in ipairs(Config.MicrophoneZones) do
            if v.spawnProp then
                local dist = #(pos - v.coords)
                if dist <= 100.0 then
                    if v.obj == nil then
                        local obj = CreateObject(GetHashKey(prop), vector3(v.coords.x, v.coords.y, v.coords.z - 1.0), false)
                        if v.data.heading ~= nil then
                            SetEntityHeading(obj, v.heading)
                        end
                        FreezeEntityPosition(obj, true)
                        v.obj = obj
                    end
                else
                    if v.obj then
                        DeleteEntity(v.obj)
                        v.obj = nil
                    end
                end
            end
        end

		if not inRange then
			Citizen.Wait(500)
		end
	end
end)

RegisterNetEvent('microphone:toggle', function()
	if not usingMic then
        exports["pma-voice"]:overrideProximityRange(60, true)
        usingMic = true
        QBCore.Functions.Notify('Microphone On', 'success')
    else
        exports["pma-voice"]:clearProximityOverride()
        usingMic = false
        QBCore.Functions.Notify('Microphone Off', 'error')
    end
end)

Citizen.CreateThread(function()
    exports['qb-target']:AddTargetModel(entity, {
        options = {
            {
                type = "client",
                event = "microphone:toggle",
                label = 'Use Mic',
                icon = 'fa-solid fa-microphone',
            },
        },
        distance = 2.5,
    })
end)

AddEventHandler('onResourceStop', function(resource)
	if (GetCurrentResourceName() ~= resource) then return end
    for k, v in pairs(Config.MicrophoneZones) do
        if v.obj then
            DeleteEntity(v.obj)
            v.obj = nil
        end
    end
end)
