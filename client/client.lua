local QBCore = exports['qb-core']:GetCoreObject()

function SpawnPoliceped()

    RequestModel(GetHashKey('s_m_y_blackops_01'))
    while not HasModelLoaded(GetHashKey('s_m_y_blackops_01')) do
        Wait(0)
    end
    
    policeped = CreatePed(0, GetHashKey('s_m_y_blackops_01') , Config.Coords.x,  Config.Coords.y,  Config.Coords.z,  Config.Coords.w, false, false)

    SetEntityAsMissionEntity(policeped)
    SetPedFleeAttributes(policeped, 0, 0)
    SetBlockingOfNonTemporaryEvents(policeped, true)
    SetEntityInvincible(policeped, true)
    FreezeEntityPosition(policeped, true)
end

function DeletePoliceped()
    if DoesEntityExist(policeped) then
        DeletePed(policeped)
    end
end

RegisterNetEvent('prspre:client:openmenu', function()
    exports['qb-menu']:openMenu({
        {
            header = "Police - Packsystem",
            icon = 'fas fa-building-shield', 
            isMenuHeader = true,
        },
        {
            id = 1,
            header = "Starterpack - Police",
            txt = "Contains: Handcuffs x1, Pistol x1, Stungun x1, Radio x1, Ammo for pistol x8, Sandwhich x15 and waterbottle x15. ",
            params = {
                isServer = true,
                event = 'prs-policerefill:starter'
            }
        },
        {
            id = 2,
            header = "Advancedpack - Police",
            txt = "Contains: Handcuffs x1, Pistol x1, Stungun x1, Advancedrifle x1, Flashlight x1, Radio x1, Pistol Ammo x12, Rifle Ammo x15, Sandwhich x25 and waterbottle x25.",
            params = {
                isServer = true,
                event = 'prs-policerefill:advanced'
            }
        },
        {
            id = 3,
            header = "Healingpack - Police/EMS",
            txt = "Contains: Bandages x5, Painkillers x5, Medical IFaks x3 and Firstaid x1.",
            params = {
                isServer = true,
                event = 'prs-policerefill:healing'
            }
        },
        {
            id = 4,
            header = "< Close menu",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    })
end)

CreateThread(function()
    exports['qb-target']:AddBoxZone("policezone", vector3(487.13, -995.75, 29.69), 0.7, 0.6,  { 
      name = "policezone",
      heading = 0,
      debugPoly = false,
    }, {
      options = {
        {
          type = "client",
          event = "prspre:client:openmenu",
          icon = 'fas fa-shield-halved',
          targeticon = "fas fa-building-shield", -- Remove this line to get the normal eye when using third eye.
          label = 'Policepack - System',
          job = "police",
        }
      },
      distance = 1.5,
    })
  end)


AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        SpawnPoliceped()
    end
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    SpawnPoliceped()
end)

AddEventHandler('onResourceStop', function(resourceName) 
	if GetCurrentResourceName() == resourceName then
        DeletePoliceped()
	end 
end)

AddEventHandler('QBCore:Client:OnPlayerUnload', function()
    DeletePoliceped()
end)
