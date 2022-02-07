--Load QB-Core
QBCore = exports['qb-core']:GetCoreObject()

--Useable Item
QBCore.Functions.CreateUseableItem('skateboard', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
		Player.Functions.RemoveItem("skateboard", 1, item.slot) 
		TriggerClientEvent('skateboard:Spawn', source)
    end
end)

--Add item back after picking it up
RegisterServerEvent('skateboard:pick')
AddEventHandler('skateboard:pick', function(item, amount)	
	local Player = QBCore.Functions.GetPlayer(source)
	Player.Functions.AddItem("skateboard", 1)
	TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["skateboard"], "add")
end)



