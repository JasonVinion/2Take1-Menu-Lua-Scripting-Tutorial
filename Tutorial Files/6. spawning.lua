-- spawn_functions.lua

-- === Spawn Functions Features === --

-- Create a parent menu in the 'Player' section of the mod menu.
-- This "Spawn Functions" menu will show up under the "Online Players" menu in the mod interface.
-- It will hold features related to spawning functions.
local SpawnFunctionsMenu = menu.add_player_feature("Spawn Functions", "parent", 0, function(feat, pid)
    -- Your code can go here if needed.
    -- 'feat' refers to the feature that was triggered.
    -- 'pid' is the Player ID of the selected player.
  end).id
  
  -- Create an 'action' feature to spawn an object.
  -- This "Spawn Object" feature will be under the "Spawn Functions" submenu.
  local SpawnObject = menu.add_player_feature("Spawn Object", "action", SpawnFunctionsMenu, function(feat, pid)
    local model = 0x12345678  -- Replace with the desired object hash
    local coords = v3(0, 0, 0)  -- Replace with desired coordinates
    Object.create_object(model, coords, true, true)
    print("Object spawned.")  -- This will print the action status to the console.
  end)
  
  -- Create an 'action' feature to spawn a vehicle.
  -- This "Spawn Vehicle" feature will also be under the "Spawn Functions" submenu.
  local SpawnVehicle = menu.add_player_feature("Spawn Vehicle", "action", SpawnFunctionsMenu, function(feat, pid)
    local model = 0x12345678  -- Replace with the desired vehicle hash
    local coords = v3(0, 0, 0)  -- Replace with desired coordinates
    Vehicle.create_vehicle(model, coords, 0.0, true, false)
    print("Vehicle spawned.")  -- This will print the action status to the console.
  end)
  
  -- Create an 'action' feature to spawn a ped.
  -- This "Spawn Ped" feature will also be under the "Spawn Functions" submenu.
  local SpawnPed = menu.add_player_feature("Spawn Ped", "action", SpawnFunctionsMenu, function(feat, pid)
    local type = 1  -- Replace with the desired ped type
    local model = 0x12345678  -- Replace with the desired ped hash
    local coords = v3(0, 0, 0)  -- Replace with desired coordinates
    Ped.create_ped(type, model, coords, 0.0, false, false)
    print("Ped spawned.")  -- This will print the action status to the console.
  end)
  
  -- === Important Notes === --
  
  -- 1. The 'Spawn Functions' menu and its features will be located under the 'Online Players' menu in the mod interface.
  -- 2. 'pid' stands for Player ID, and it's used to identify the selected player. It is passed automatically by the mod menu framework when a player-specific feature is triggered.
  -- 3. hashes for object, vehicles, peds, etc. can be found at https://gtahash.ru/ or on data dumps such as https://github.com/DurtyFree/gta-v-data-dumps/tree/master 
  