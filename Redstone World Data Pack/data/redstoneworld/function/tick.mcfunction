#general-------------------------------------------------
function redstoneworld:clock/clock
function redstoneworld:time/tick_time
function redstoneworld:timer/tick_time

execute as @a at @s run function redstoneworld:player

function redstoneworld:anti_gamemode_switch/check
function redstoneworld:enderchest_inventar/chest/update
function redstoneworld:gambling/tick
function redstoneworld:redbytes/tick

#ores / mine / tasks-------------------------------------------------
function redstoneworld:ore_spawner/ore_spawner
function redstoneworld:tasks/viliger/tick_viliger
execute as @a[nbt={Dimension:"redstoneworld:dungeon"}] run function redstoneworld:mob_spawner/spawn/spawn_cooldown

#weapons-------------------------------------------------
function redstoneworld:custom_wapons/custom_wapon

function redstoneworld:red_station/space_suit/space_suit_fly_check

#dialog-------------------------------------------------
function redstoneworld:dialog/tick_dialog_page





execute if score show_board redstone_world_board matches 1 run function redstoneworld:server_scorboard/update
