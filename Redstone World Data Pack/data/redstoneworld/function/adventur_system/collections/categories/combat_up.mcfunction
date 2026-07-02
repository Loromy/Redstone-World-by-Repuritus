playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1

# Level erhöhen
scoreboard players add @s lvl_combat 1

# Nachricht senden
tellraw @s [{"color":"dark_red","text":"Level Up! Dein Combat Level ist jetzt: "},{"color":"red","score":{"name":"@s","objective":"lvl_combat"}}]

# XP abziehen
scoreboard players operation @s collections_combat -= @s lvl_next_combat

# Rekursion
function redstoneworld:adventur_system/collections/categories/combat_check