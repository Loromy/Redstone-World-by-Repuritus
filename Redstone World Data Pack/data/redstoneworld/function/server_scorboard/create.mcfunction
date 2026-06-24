
scoreboard players set show_board redstone_world_board 1
scoreboard players set ip redstone_world_board 2
scoreboard players set space1 redstone_world_board 3
scoreboard players set time_played redstone_world_board 4
scoreboard players set space2 redstone_world_board 5
scoreboard players set days redstone_world_board 6
scoreboard players set time redstone_world_board 7
scoreboard players set online_player redstone_world_board 8
scoreboard players set - redstone_world_board 9

# Display Namen konfigurieren
scoreboard players display name show_board redstone_world_board {"color":"dark_red","text":"--------------------------------"}
scoreboard players display name ip redstone_world_board {"color":"dark_red","text":"redstoneworld.mcsh.io"}
scoreboard players display name space1 redstone_world_board " "
#line 3
scoreboard players display name space2 redstone_world_board "  "
#line 5
#line 6
#line 7
scoreboard players display name - redstone_world_board {"color":"dark_red","text":"--------------------------------"}