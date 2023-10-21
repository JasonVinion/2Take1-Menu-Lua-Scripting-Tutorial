-- entity_functions.lua

-- === Entity Functions Features === --

-- Create a parent menu in the 'Player' section of the mod menu.
-- This "Entity Functions" menu will show up under the "Online Players" menu in the mod interface.
-- It will hold features related to entity functions.
local EntityFunctionsMenu = menu.add_player_feature("Entity Functions", "parent", 0, function(feat, pid)
    -- Your code can go here if needed.
    -- 'feat' refers to the feature that was triggered.
    -- 'pid' is the Player ID of the selected player.
  end).id
  
  -- Create an 'action' feature to get the coordinates of the entity.
  -- This "Get Entity Coords" feature will be under the "Entity Functions" submenu.
  local GetEntityCoords = menu.add_player_feature("Get Entity Coords", "action", EntityFunctionsMenu, function(feat, pid)
    local entity = player.get_player_ped(pid)
    local coords = entity.get_entity_coords(entity)
    print("Entity Coordinates: " .. tostring(coords))  -- This will print the entity's coordinates to the console.
  end)
  
  -- Create an 'action' feature to set the entity's coordinates.
  -- This "Set Entity Coords" feature will also be under the "Entity Functions" submenu.
  local SetEntityCoords = menu.add_player_feature("Set Entity Coords", "action", EntityFunctionsMenu, function(feat, pid)
    local entity = player.get_player_ped(pid)
    local newCoords = v3(0, 0, 0)  -- Replace with the desired coordinates
    entity.set_entity_coords_no_offset(entity, newCoords)
    print("Entity coordinates set.")  -- This will print the action status to the console.
  end)
  
  -- === Important Notes === --
  
  -- 1. The 'Entity Functions' menu and its features will be located under the 'Online Players' menu in the mod interface.
  -- 2. 'pid' stands for Player ID, and it's used to identify the selected player. It is passed automatically by the mod menu framework when a player-specific feature is triggered.
  
  