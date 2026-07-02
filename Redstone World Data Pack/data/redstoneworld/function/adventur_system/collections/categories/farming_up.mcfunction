playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1

# Level erhöhen
scoreboard players add @s lvl_farming 1

# Nachricht senden
tellraw @s [{"color":"green","text":"Level Up! Dein Farming Level ist jetzt: "},{"color":"dark_green","score":{"name":"@s","objective":"lvl_farming"}}]

# XP abziehen
scoreboard players operation @s collections_farming -= @s lvl_next_farming

# Rekursion
function redstoneworld:adventur_system/collections/categories/farming_check