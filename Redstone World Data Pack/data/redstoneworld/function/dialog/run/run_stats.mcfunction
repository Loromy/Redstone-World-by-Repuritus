# Spielername
data modify storage redstoneworld:rw_dialog_stats name set from storage minecraft:rw_player args.name

# Scoreboard Werte in den Storage kopieren (int 1 sorgt für das richtige Format)
execute store result storage redstoneworld:rw_dialog_stats deaths int 1 run scoreboard players get @s deathcount
execute store result storage redstoneworld:rw_dialog_stats rb int 1 run scoreboard players get @s Redbytes
execute store result storage redstoneworld:rw_dialog_stats mana int 1 run scoreboard players get @s Mana
execute store result storage redstoneworld:rw_dialog_stats maxmana int 1 run scoreboard players get @s MaxMana
execute store result storage redstoneworld:rw_dialog_stats mps int 1 run scoreboard players get @s ManaPerSecond
execute store result storage redstoneworld:rw_dialog_stats hour int 1 run scoreboard players get hour Clock
execute store result storage redstoneworld:rw_dialog_stats min int 1 run scoreboard players get digital_minute Clock
execute store result storage redstoneworld:rw_dialog_stats day int 1 run scoreboard players get days Clock
execute store result storage redstoneworld:rw_dialog_stats online int 1 run scoreboard players get PlayerOnline: Player
execute store result storage redstoneworld:rw_dialog_stats p_day int 1 run scoreboard players get @s playtime_tracker_day
execute store result storage redstoneworld:rw_dialog_stats p_hour int 1 run scoreboard players get @s playtime_tracker_hour
execute store result storage redstoneworld:rw_dialog_stats p_min int 1 run scoreboard players get @s playtime_tracker_min
execute store result storage redstoneworld:rw_dialog_stats p_sec int 1 run scoreboard players get @s playtime_tracker_sec

# Dialog aufrufen
function redstoneworld:dialog/files/stats with storage redstoneworld:rw_dialog_stats