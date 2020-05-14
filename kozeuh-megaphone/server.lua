local ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem("megaphone", function(source) -- Si l'item mégaphone est utilisé ça ouvrira le menu
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('Koz:openmegaphone', source)
end)