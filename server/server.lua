local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('prs-policerefill:starter') --Starterpack
AddEventHandler('prs-policerefill:starter', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
        
    if Config.ChargeOfficer then
        if Player.PlayerData.money[Config.TakeMyMoney] >= Config.StarterCost then
            Player.Functions.RemoveMoney(Config.TakeMyMoney, Config.StarterCost)
            exports['qb-management']:AddMoney("police", Config.StarterCost)

            TriggerClientEvent('QBCore:Notify', source, 'You gear is being sorted, please wait..', 'primary', 5000)
            Wait(5000)
            Player.Functions.AddItem('handcuffs', 1)
            Player.Functions.AddItem('weapon_pistol', 1)
            Player.Functions.AddItem('weapon_stungun', 1)
            Player.Functions.AddItem('weapon_flashlight', 1)
            Player.Functions.AddItem('radio', 1)
            Player.Functions.AddItem('pistol_ammo', 8)
            Player.Functions.AddItem('sandwich', 15)
            Player.Functions.AddItem('water_bottle', 15)
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['handcuffs'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['sandwich'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['water_bottle'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['weapon_flashlight'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['weapon_stungun'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['weapon_pistol'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['radio'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['pistol_ammo'], "add")
            Wait(2000)
            TriggerClientEvent('QBCore:Notify', source, 'Heres your gear', 'success', 2000)
        else
            TriggerClientEvent('QBCore:Notify', source, 'Come back when you have enough money', 'error', 2000)
        end
    else
        TriggerClientEvent('QBCore:Notify', source, 'You gear is being sorted, please wait..', 'primary', 5000)
        Wait(5000)
        Player.Functions.AddItem('handcuffs', 1)
        Player.Functions.AddItem('weapon_pistol', 1)
        Player.Functions.AddItem('weapon_stungun', 1)
        Player.Functions.AddItem('weapon_flashlight', 1)
        Player.Functions.AddItem('radio', 1)
        Player.Functions.AddItem('pistol_ammo', 8)
        Player.Functions.AddItem('sandwich', 15)
        Player.Functions.AddItem('water_bottle', 15)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['handcuffs'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['sandwich'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['water_bottle'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['weapon_flashlight'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['weapon_stungun'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['weapon_pistol'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['radio'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['pistol_ammo'], "add")
        Wait(2000)
        TriggerClientEvent('QBCore:Notify', source, 'Heres your gear', 'success', 2000)
     end
end)


RegisterNetEvent('prs-policerefill:advanced') -- Advancedpacks
AddEventHandler('prs-policerefill:advanced', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
        
    if Config.ChargeOfficer then
        if Player.PlayerData.money[Config.TakeMyMoney] >= Config.AdvancedCost then
            Player.Functions.RemoveMoney(Config.TakeMyMoney, Config.AdvancedCost)
            exports['qb-management']:AddMoney("police", Config.AdvancedCost)

            TriggerClientEvent('QBCore:Notify', source, 'You gear is being sorted, please wait..', 'primary', 5000)
            Wait(5000)
            Player.Functions.AddItem('handcuffs', 1)
            Player.Functions.AddItem('weapon_pistol', 1)
            Player.Functions.AddItem('weapon_stungun', 1)
            Player.Functions.AddItem('weapon_advancedrifle', 1)
            Player.Functions.AddItem('weapon_flashlight', 1)
            Player.Functions.AddItem('radio', 1)
            Player.Functions.AddItem('pistol_ammo', 12)
            Player.Functions.AddItem('rifle_ammo', 15)
            Player.Functions.AddItem('sandwich', 25)
            Player.Functions.AddItem('water_bottle', 25)
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['handcuffs'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['weapon_pistol'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['weapon_stungun'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['weapon_advancedrifle'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['weapon_flashlight'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['radio'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['pistol_ammo'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['rifle_ammo'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['sandwich'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['water_bottle'], "add")
            Wait(2000)
            TriggerClientEvent('QBCore:Notify', source, 'Heres your gear', 'success', 2000)
        else
            TriggerClientEvent('QBCore:Notify', source, 'Come back when you have enough money', 'error', 2000)
        end
    else
        TriggerClientEvent('QBCore:Notify', source, 'You gear is being sorted, please wait..', 'primary', 5000)
        Wait(5000)
        Player.Functions.AddItem('handcuffs', 1)
        Player.Functions.AddItem('weapon_pistol', 1)
        Player.Functions.AddItem('weapon_stungun', 1)
        Player.Functions.AddItem('weapon_advancedrifle', 1)
        Player.Functions.AddItem('weapon_flashlight', 1)
        Player.Functions.AddItem('radio', 1)
        Player.Functions.AddItem('pistol_ammo', 12)
        Player.Functions.AddItem('rifle_ammo', 15)
        Player.Functions.AddItem('sandwich', 25)
        Player.Functions.AddItem('water_bottle', 25)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['handcuffs'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['weapon_pistol'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['weapon_stungun'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['weapon_advancedrifle'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['weapon_flashlight'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['radio'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['pistol_ammo'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['rifle_ammo'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['sandwich'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['water_bottle'], "add")
        Wait(2000)
        TriggerClientEvent('QBCore:Notify', source, 'Heres your gear', 'success', 2000)
    end
end)


RegisterNetEvent('prs-policerefill:healing') -- Healingpack
AddEventHandler('prs-policerefill:healing', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
        
    if Config.ChargeOfficer then
        if Player.PlayerData.money[Config.TakeMyMoney] >= Config.HealingCost then
            Player.Functions.RemoveMoney(Config.TakeMyMoney, Config.HealingCost)
            exports['qb-management']:AddMoney("police", Config.HealingCost)

            TriggerClientEvent('QBCore:Notify', source, 'You gear is being sorted, please wait..', 'primary', 5000)
            Wait(5000)
            Player.Functions.AddItem('bandage', 5)
            Player.Functions.AddItem('painkillers', 5)
            Player.Functions.AddItem('ifaks', 3)
            Player.Functions.AddItem('firstaid', 1)
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['bandage'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['painkillers'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['ifaks'], "add")
            TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['firstaid'], "add")
            Wait(2000)
            TriggerClientEvent('QBCore:Notify', source, 'Heres your gear', 'success', 2000)
        else
            TriggerClientEvent('QBCore:Notify', source, 'Come back when you have enough money', 'error', 2000)
        end
    else
        TriggerClientEvent('QBCore:Notify', source, 'You gear is being sorted, please wait..', 'primary', 5000)
        Wait(5000)
        Player.Functions.AddItem('bandage', 5)
        Player.Functions.AddItem('painkillers', 5)
        Player.Functions.AddItem('ifaks', 3)
        Player.Functions.AddItem('firstaid', 1)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['bandage'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['painkillers'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['ifaks'], "add")
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['firstaid'], "add")
        Wait(2000)
        TriggerClientEvent('QBCore:Notify', source, 'Heres your gear', 'success', 2000)
    end
end)
