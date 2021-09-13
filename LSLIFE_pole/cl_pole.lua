ESX = nil



poleemploi = {   
	Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_Green}, HeaderColor = {255, 255, 255}, Title = "Pole Emploi"},
	Data = { currentMenu = "Action", GetPlayerName()},
    Events = {
		onSelected = function(self, _, btn, PMenu, Data, menuData, currentMenu, currentButton, currentBtn, currentSlt, result, slide)

        end,     
	}, 
	Menu = { 
		["Action"] = {b = {}},
	}
}  
 

----
Citizen.CreateThread( function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	while true do time = 0

	local playerpos = GetEntityCoods(playerPedId())
	local point = Vdist(playerpos, -267.897, -957.933, 31.223)

	if point <= 1 then
		ESX.ShowHelpNotification('Press E pour acceder au pole emploi')
		if IsControlJustPressed(0, 51) then
			CreatMenu(poleemloi)
		end
	end
	Citizen.wait(time)
end
end)

