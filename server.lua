local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Server-side initialization
print('FiveMScript server initialized')

-- Example server event
RegisterNetEvent('fivemscript:server:exampleEvent')
AddEventHandler('fivemscript:server:exampleEvent', function(data)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        -- Process data and send back to client
        TriggerClientEvent('fivemscript:client:exampleEvent', source, data)
    else
        print('Player not found')
    end
end)

-- Example server command
ESX.RegisterCommand('fivemscript', 'admin', function(xPlayer, args, showError)
    xPlayer.showNotification('FiveMScript command executed')
end, false, {help = 'FiveMScript command'})