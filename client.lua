local ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    -- Client-side initialization
    print('FiveMScript client initialized')
end)

-- Example client event
RegisterNetEvent('fivemscript:client:exampleEvent')
AddEventHandler('fivemscript:client:exampleEvent', function(data)
    ESX.ShowNotification('Received data: ' .. data)
end)

-- Example client command
RegisterCommand('fivemscript', function(source, args, rawCommand)
    TriggerServerEvent('fivemscript:server:exampleEvent', 'test data')
end, false)