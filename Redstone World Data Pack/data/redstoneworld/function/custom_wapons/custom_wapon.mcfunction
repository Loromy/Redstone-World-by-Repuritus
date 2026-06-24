execute as @a at @s run execute if score @s cw_wfoas matches 1.. run function redstoneworld:custom_wapons/abilitys/load_abilitys
#execute as @a at @s run execute if score @s cw_damageDealt matches 1.. run say d_h1

scoreboard players reset @a[scores={cw_wfoas=1..}] cw_wfoas
scoreboard players reset @a[scores={cw_damageDealt=1..}] cw_damageDealt

function redstoneworld:custom_wapons/abilitys/orbital_strike/ckeck_orbital_load
