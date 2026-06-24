scoreboard objectives add redstone_world_board dummy {"color":"dark_red","text":"REDSTONE WORLD","bold":true}

scoreboard objectives setdisplay sidebar redstone_world_board
scoreboard objectives modify redstone_world_board numberformat blank

function redstoneworld:server_scorboard/create