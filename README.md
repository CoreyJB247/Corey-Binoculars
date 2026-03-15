# Corey-Binoculars
A simple binoculars item for ND Core utilising RP Emotes

# Requirements:

https://github.com/alberttheprince/rpemotes-reborn/releases

https://github.com/ND-Framework/ND_Core/releases

https://github.com/CommunityOx/ox_inventory/releases/tag/v2.45.0

# Installation:

Add this to ox inventory items.lua:

    ['binoculars'] = {
    label = 'Binoculars',
    weight = 800,
    stack = false,
    close = true,
    client = {
            event = 'nd_binoculars:client:itemUsed',
      },
    },
