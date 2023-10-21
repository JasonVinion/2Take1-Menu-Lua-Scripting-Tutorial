-- player_functions.lua

-- === Player Functions Features === --

-- Create a parent menu in the 'Player' section of the mod menu.
-- This "Player Functions" menu will show up under the "Online Players" menu in the mod interface.
-- It will hold features related to player functions.
local PlayerFunctionsMenu = menu.add_player_feature("Player Functions", "parent", 0, function(feat, pid)
    -- Your code can go here if needed.
    -- 'feat' refers to the feature that was triggered.
    -- 'pid' is the Player ID of the selected player.
  end).id
  
  -- Create an 'action' feature to get the player's Ped.
  -- This "Get Player Ped" feature will be under the "Player Functions" submenu.
  -- When triggered, it retrieves and prints the Ped ID of the selected player.
  local GetPlayerPed = menu.add_player_feature("Get Player Ped", "action", PlayerFunctionsMenu, function(feat, pid)
    -- 'pid' stands for Player ID, and it's the ID of the selected player in the mod menu.
    local ped = player.get_player_ped(pid)
    print("Player Ped ID: " .. tostring(ped))  -- This will print the Ped ID to the console.
  end)
  
  -- Create an 'action' feature to check if the player is female.
  -- This "Is Player Female?" feature will also be under the "Player Functions" submenu.
  -- When triggered, it checks if the selected player's character model is female and prints the result.
  local CheckGender = menu.add_player_feature("Is Player Female?", "action", PlayerFunctionsMenu, function(feat, pid)
    -- 'pid' stands for Player ID, and it's the ID of the selected player in the mod menu.
    local isFemale = player.is_player_female(pid)
    if isFemale then
      print("True")  -- Player is female.
    else
      print("False")  -- Player is not female.
    end
  end)
  
  -- === Important Notes === --
  
  -- 1. The 'Player Functions' menu and its features will be located under the 'Online Players' menu in the mod interface.
  -- 2. 'pid' stands for Player ID, and it's used to identify the selected player. It is passed automatically by the mod menu framework when a player-specific feature is triggered.
  -- 3. Features like 'Get Player Ped' and 'Is Player Female?' are 'action' features, which means they execute a specific action when selected.
  