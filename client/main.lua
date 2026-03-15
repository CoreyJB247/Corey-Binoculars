-- ox_inventory fires this client event when the binoculars item is used
RegisterNetEvent('nd_binoculars:client:itemUsed', function()
    TriggerServerEvent('nd_binoculars:server:use')
end)

-- Server has validated the item — delegate entirely to rpemotes-reborn
RegisterNetEvent('nd_binoculars:client:use', function()
    SetTimeout(30, function()
        exports['rpemotes-reborn']:toggleBinoculars()
    end)
end)