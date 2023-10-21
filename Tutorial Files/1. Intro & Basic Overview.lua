-- my_mod_menu.lua

-- === Main Menu Features === --

-- Create the main parent menu.
-- This is the starting point where your mod's features will live.
local MainScript = menu.add_feature("My Awesome Script", "parent", 0)

-- Create a Session submenu under the main parent menu.
-- This will hold features related to the game session.
local SessionMenu = menu.add_feature("Session Features", "parent", MainScript.id)

-- Create an 'action' feature under the "Session Features" submenu.
-- This will perform an action, like kicking all players from the session.
local KickAll = menu.add_feature("Kick All Players", "action", SessionMenu.id, function()
  -- Your code to kick all players goes here.
  print("Kicked all players!") -- This is just an example; replace with actual code.
end)

-- === Player-Specific Features === --

-- Create a parent menu in the 'Player' section of the mod menu.
-- This will hold features that affect specific players in the session.
local PlayerMenu = menu.add_player_feature("Player Options", "parent", 0, function(feat, pid)
  -- Your code can go here if needed.
end).id

-- Create a "Trolling" submenu under "Player Options".
-- This will hold features meant for trolling other players.
local TrollMenu = menu.add_player_feature("Trolling", "parent", PlayerMenu)

-- Create an 'action' feature to teleport a player to you.
-- This will appear under the "Trolling" submenu.
local TeleportToMe = menu.add_player_feature("Teleport to Me", "action", TrollMenu.id, function(feat, pid)
  -- Your teleportation code goes here.
  print("Teleported player to me!") -- This is just an example; replace with actual code.
end)

-- That's the end of the script.
-- Add your additional features, actions, or submenus as needed.

-- Important Notes:

-- to use a script insure it has .lua at the end of it and place it here: %appdata%\PopstarDevs\2Take1Menu\scripts\YOUR SCRIPT HERE.lua
-- check https://gta.2take1.menu/dev/lua-api/ for more info and use cases of the API.
-- You prefix everything with menu. because these functions are under the "Menu Functions" part of the api.
--  for example, menu.add_feature() is the way you call the add_feature() function in the api.
-- For both add_feature and add_player_feature, the parent ID can be nil or 0 if it doesn't have a parent.