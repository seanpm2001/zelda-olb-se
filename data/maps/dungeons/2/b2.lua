local map = ...
local game = map:get_game()

local door_manager = require("scripts/maps/door_manager")
door_manager:manage_map(map)
local separator_manager = require("scripts/maps/separator_manager")
separator_manager:manage_map(map)

function map:on_started()

  if game:has_item("bombs_counter") then
    final_npc:remove()
  end
end
