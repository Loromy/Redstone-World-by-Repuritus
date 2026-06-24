execute positioned ~ ~2 ~ run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["orbital_strike","orbital_strike_target"]}

execute as @e[tag=orbital_strike_target] at @s run execute unless score @s wapon_loading_orbital_stiker matches 0..400 run scoreboard players set @s wapon_loading_orbital_stiker 400


scoreboard players set @s wapon_cooldown_orbital_strike 60

scoreboard players remove @s Mana 10000
