playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1

# Level erhöhen
scoreboard players add @s lvl_mining 1

# Nachricht senden
tellraw @s [{"color":"dark_aqua","text":"Level Up! Dein Mining Level ist jetzt: "},{"color":"aqua","score":{"name":"@s","objective":"lvl_mining"}}]

# XP abziehen
scoreboard players operation @s collections_mining -= @s lvl_next_mining

# Rekursion
function redstoneworld:adventur_system/collections/categories/mining_check