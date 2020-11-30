ESX = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)
  
RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)
    
function ShowInfo(text, state)
      SetTextComponentFormat("STRING")
      AddTextComponentString(text)DisplayHelpTextFromStringLabel(0, state, 0, -1)
end

function vehicleType(using)
  local cars = Config.Vehicles

  for i=1, #cars, 1 do
    if IsVehicleModel(using, GetHashKey(cars[i])) then
      return true
    end
  end
end 

function LoadingPrompt(loadingText, spinnerType)

    if IsLoadingPromptBeingDisplayed() then
        RemoveLoadingPrompt()
    end

    if (loadingText == nil) then
        BeginTextCommandBusyString(nil)
    else
        BeginTextCommandBusyString("STRING");
        AddTextComponentSubstringPlayerName(loadingText);
    end

    EndTextCommandBusyString(spinnerType)
end


local mobLSPDMenu = {
	Base = { Header = {"3dtextures", "mpgroundlogo_cops"}, Color = {color_black}, HeaderColor = {255, 255, 255}, Title = "LSPD Mégaphone Véhicule" },
	Data = { currentMenu = "LSPD Mégaphone Véhicule", "Test" },
	Events = {
		onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result, slide)
			PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
			local btn = btn.name
			if btn == "Arrêtez-vous!" then
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 200.0, "stop_vehicle-2", 0.6)
			elseif btn == "Conducteur,STOP!" then
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 200.0, "stop_the_f_car", 0.6)
			elseif btn == "Ne bougez pas d'un pouce!" then
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 200.0, "stop_dont_move", 0.6)
			elseif btn == "Allez-vous en!" then 
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 200.0, "this_is_the_lspd", 0.6)
			elseif btn == "Allez-vous en d'ici!" then
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 200.0, "get_out_of_here_now", 0.6)
			elseif btn == "Circulez!" then
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 200.0, "disperse_now", 0.6)
			elseif btn == "Je vais tirer.." then
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 200.0, "shoot_to_kill", 0.6)
			elseif btn == "Vous êtes fini!" then
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 200.0, "you_are_finished_dhead", 0.6)
            end
	end,
},
	Menu = {
		["LSPD Mégaphone Véhicule"] = {
			b = {
				{name = "Arrêtez-vous!", ask = "🔊", askX = true},
				{name = "Conducteur,STOP!", ask = "🔊", askX = true},
				{name = "Ne bougez pas d'un pouce!", ask = "🔊", askX = true},
				{name = "Allez-vous en!", ask = "🔊", askX = true},
				{name = "Allez-vous en d'ici!", ask = "🔊", askX = true}, --
				{name = "Circulez!", ask = "🔊", askX = true},
				{name = "Je vais tirer..", ask = "🔊", askX = true},
				{name = "Vous êtes fini!", ask = "🔊", askX = true},

			}
		}
	}
}


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
		if IsControlJustPressed(1,246) then
			if vehicleType(GetVehiclePedIsUsing(GetPlayerPed(-1))) then
			    if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
				   CreateMenu(mobLSPDMenu)
				else
					ESX.ShowNotification('Vous devez être memebre de la LSPD') -- :')
				end
			end
		end
    end
end)

