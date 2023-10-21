-- ped_functions.lua

-- === Ped Functions Features === --

-- Create a parent menu in the 'Player' section of the mod menu.
-- This "Ped Functions" menu will show up under the "Online Players" menu in the mod interface.
-- It will hold features related to Ped functions.
local PedFunctionsMenu = menu.add_player_feature("Ped Functions", "parent", 0, function(feat, pid)
    -- Your code can go here if needed.
    -- 'feat' refers to the feature that was triggered.
    -- 'pid' is the Player ID of the selected player.
  end).id
  
  -- Create an 'action' feature to get the health of the Ped.
  -- This "Get Ped Health" feature will be under the "Ped Functions" submenu.
  local GetPedHealth = menu.add_player_feature("Get Ped Health", "action", PedFunctionsMenu, function(feat, pid)
    local ped = player.get_player_ped(pid)
    local health = ped.get_ped_health(ped)
    print("Ped Health: " .. tostring(health))  -- This will print the Ped's health to the console.
  end)
  
  -- Create an 'action' feature to kill the Ped.
  -- This "Kill Ped" feature will also be under the "Ped Functions" submenu.
  local KillPed = menu.add_player_feature("Kill Ped", "action", PedFunctionsMenu, function(feat, pid)
    local ped = player.get_player_ped(pid)
    ped.set_ped_health(ped, 0)  -- Setting health to 0 kills the Ped.
    print("Ped killed.")  -- This will print the Ped's status to the console.
  end)
  
  -- === Important Notes === --
  
  -- 1. The 'Ped Functions' menu and its features will be located under the 'Online Players' menu in the mod interface, and the KillPed will be under the Ped Functions.
  -- 2. This script assumes that you have a Ped to interact with. There are multiple ways to obtain a Ped, such as spawning one, which can be found under the API.
  -- 3. 'pid' stands for Player ID, and it's used to identify the selected player. It is passed automatically by the mod menu framework when a player-specific feature is triggered.
  