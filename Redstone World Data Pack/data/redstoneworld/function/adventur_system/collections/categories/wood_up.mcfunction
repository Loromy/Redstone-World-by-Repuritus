# A. Sound abspielen
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1

# B. Level erhöhen (Wechselt von 0 auf 1)
scoreboard players add @s lvl_wood 1

# C. Nachricht senden (zeigt das neue Level 1 an)
tellraw @s [{"color":"dark_green","text":"Level Up! Dein Wood Level ist jetzt: "},{"color":"green","score":{"name":"@s","objective":"lvl_wood"}}]

# D. Verbrauchte XP abziehen
scoreboard players operation @s collections_wood -= @s lvl_next_wood

# --- REKURSIONS-SCHLEIFE ---
# Ruft den Check erneut auf, falls die XP für NOCH ein Level reichen
function redstoneworld:adventur_system/collections/categories/wood_check