# Spielername
data modify storage redstoneworld:macro name set from storage player:name name

# Scoreboard Werte in den Storage kopieren (int 1 sorgt für das richtige Format)
execute store result storage redstoneworld:macro deaths int 1 run scoreboard players get @s deathcount
execute store result storage redstoneworld:macro rb int 1 run scoreboard players get @s Redbytes
execute store result storage redstoneworld:macro mana int 1 run scoreboard players get @s Mana
execute store result storage redstoneworld:macro maxmana int 1 run scoreboard players get @s MaxMana
execute store result storage redstoneworld:macro mps int 1 run scoreboard players get @s ManaPerSecond
execute store result storage redstoneworld:macro hour int 1 run scoreboard players get hour Clock
execute store result storage redstoneworld:macro min int 1 run scoreboard players get digital_minute Clock
execute store result storage redstoneworld:macro day int 1 run scoreboard players get days Clock
execute store result storage redstoneworld:macro online int 1 run scoreboard players get PlayerOnline: Player
execute store result storage redstoneworld:macro p_day int 1 run scoreboard players get @s playtime_tracker_day
execute store result storage redstoneworld:macro p_hour int 1 run scoreboard players get @s playtime_tracker_hour
execute store result storage redstoneworld:macro p_min int 1 run scoreboard players get @s playtime_tracker_min
execute store result storage redstoneworld:macro p_sec int 1 run scoreboard players get @s playtime_tracker_sec

# Dialog aufrufen
function redstoneworld:dialog/files/stats with storage redstoneworld:macro