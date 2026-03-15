-- Server-side: validate the player has the binoculars item before triggering the client
RegisterNetEvent('nd_binoculars:server:use', function()
    local source = source
    local player = NDCore.getPlayer(source)

    if not player then return end

    -- Check that the player has the binoculars item in their ox_inventory
    local hasItem = exports.ox_inventory:Search(source, 'count', 'binoculars') > 0
    if not hasItem then
        player.notify('You don\'t have binoculars.', 'error')
        return
    end

    TriggerClientEvent('nd_binoculars:client:use', source)
end)
