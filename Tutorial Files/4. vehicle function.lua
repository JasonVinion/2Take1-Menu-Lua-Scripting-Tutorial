-- vehicle_functions.lua

-- === Vehicle Functions Features === --

-- Create a parent menu in the 'Player' section of the mod menu.
-- This "Vehicle Functions" menu will show up under the "Online Players" menu in the mod interface.
-- It will hold features related to vehicle functions.
local VehicleFunctionsMenu = menu.add_player_feature("Vehicle Functions", "parent", 0, function(feat, pid)
    -- Your code can go here if needed.
    -- 'feat' refers to the feature that was triggered.
    -- 'pid' is the Player ID of the selected player.
  end).id
  
  -- Create an 'action' feature to check if the vehicle is a convertible.
  -- This "Is Convertible?" feature will be under the "Vehicle Functions" submenu.
  local CheckConvertible = menu.add_player_feature("Is Convertible?", "action", VehicleFunctionsMenu, function(feat, pid)
    local veh = ped.get_vehicle_ped_is_using(player.get_player_ped(pid))
    local isConvertible = vehicle.is_vehicle_a_convertible(veh)
    print("Is Convertible: " .. tostring(isConvertible))  -- This will print the status to the console.
  end)
  
  -- Create an 'action' feature to get the convertible roof state.
  -- This "Roof State" feature will also be under the "Vehicle Functions" submenu.
  local RoofState = menu.add_player_feature("Roof State", "action", VehicleFunctionsMenu, function(feat, pid)
    local veh = ped.get_vehicle_ped_is_using(player.get_player_ped(pid))
    local roofState = vehicle.get_convertible_roof_state(veh)
    print("Roof State: " .. tostring(roofState))  -- This will print the roof state to the console.
  end)
  
  -- Create an 'action' feature to Set the convertible roof.
  -- This "Set Roof" feature will also be under the "Vehicle Functions" submenu.
  local ToggleRoof = menu.add_player_feature("Set Roof", "action", VehicleFunctionsMenu, function(feat, pid)
    local veh = ped.get_vehicle_ped_is_using(player.get_player_ped(pid))
    local roofState = vehicle.get_convertible_roof_state(veh)
    vehicle.set_convertible_roof(veh, not roofState)
    print("Roof Set.")  -- This will print the action status to the console.
  end)
  
  -- === Important Notes === --
  
  -- 1. The 'Vehicle Functions' menu and its features will be located under the 'Online Players' menu in the mod interface.
  -- 2. This script assumes that you have a vehicle to interact with. There are multiple ways to obtain a vehicle, such as spawning one, which can be found under the API.
  -- 3. 'pid' stands for Player ID, and it's used to identify the selected player. It is passed automatically by the mod menu framework when a player-specific feature is triggered.
  