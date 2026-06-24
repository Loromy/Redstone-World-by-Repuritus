
execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 1..399 run scoreboard players remove @s wapon_loading_orbital_stiker 1
execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 300.. run execute if block ~ ~-1 ~ minecraft:air run execute align xz run teleport @s ~0.5 ~-1 ~0.5
execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 400.. run execute unless block ~ ~-1 ~ minecraft:air run scoreboard players set @s wapon_loading_orbital_stiker 399

execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 299..400 run particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:1,to_color:[0.490,0.000,0.000]} ~ ~2 ~ 0.2 2 0.2 1 800 force


execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 1..400 run execute unless entity @e[type=armor_stand,tag=orbital_strike_beam,dy=-300] run execute as @a[distance=..100] run title @s times 1t 1s 1t
execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 1..400 run execute unless entity @e[type=armor_stand,tag=orbital_strike_beam,dy=-300] run execute as @a[distance=..100] run title @s title {"color":"dark_red","italic":false,"shadow_color":-10616832,"text":"!!! Attention!!!"}
execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 1..400 run execute unless entity @e[type=armor_stand,tag=orbital_strike_beam,dy=-300] run execute as @a[distance=..100] run title @s subtitle {"color":"dark_red","italic":false,"shadow_color":-10616832,"text":"!The orbital laser will strike soon!"}


execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 299 run execute positioned ~ 319 ~ run summon item_display ~ ~ ~ {view_range:4f,item_display:"head",Tags:["orbital_strike","orbital_strike_circel","orbital_strike_circel_L"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[300,300,300f]},item:{id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":{strings:["magical_circel_red"]}}}}
execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 299 run execute positioned ~ 281 ~ run summon item_display ~ ~ ~ {view_range:4f,item_display:"head",Tags:["orbital_strike","orbital_strike_circel","orbital_strike_circel_L"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[100,100,100f]},item:{id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":{strings:["magical_circel_red"]}}}}
execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 1..400 run execute align xyz run execute as @e[type=item_display,tag=orbital_strike_circel_L,dy=400] at @s run teleport @s ~ ~ ~ ~1 ~

execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 299 run execute positioned ~ 300 ~ run summon item_display ~ ~ ~ {view_range:4f,item_display:"head",Tags:["orbital_strike","orbital_strike_circel","orbital_strike_circel_R"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[200f,200f,200f]},item:{id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":{strings:["magical_circel_red"]}}}}
execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 299 run execute positioned ~ 262 ~ run summon item_display ~ ~ ~ {view_range:4f,item_display:"head",Tags:["orbital_strike","orbital_strike_circel","orbital_strike_circel_R"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[50f,50f,50f]},item:{id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":{strings:["magical_circel_red"]}}}}
execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 1..400 run execute align xyz run execute as @e[type=item_display,tag=orbital_strike_circel_R,dy=400] at @s run teleport @s ~ ~ ~ ~-1 ~


execute as @e[tag=orbital_strike_target] at @s if score @s wapon_loading_orbital_stiker matches 299 run execute as @a[distance=..200] run playsound block.beacon.activate master @s ~ ~ ~ 100 0 0
execute as @e[tag=orbital_strike_target] at @s if score @s wapon_loading_orbital_stiker matches 50..298 run execute as @a[distance=..200] run playsound block.beacon.ambient master @s ~ ~ ~ 100 0 0
execute as @e[tag=orbital_strike_target] at @s if score @s wapon_loading_orbital_stiker matches 0..50 run execute as @a[distance=..200] run stopsound @s master block.beacon.ambient
execute as @e[tag=orbital_strike_target] at @s if score @s wapon_loading_orbital_stiker matches 49 run execute as @a[distance=..200] run playsound block.beacon.deactivate master @s ~ ~ ~ 100 0 0


execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 251..299 run particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:1,to_color:[0.490,0.000,0.000]} ~ ~2 ~ 0.5 200 0.5 1 800 force
execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 251..299 run particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:1,to_color:[0.490,0.000,0.000]} ~ ~2 ~ 0 200 0 1 1000 force

execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 1..250 run particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:1,to_color:[0.490,0.000,0.000]} ~ ~2 ~ 1 200 1 1 1000 force
execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 1..250 run particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:1,to_color:[0.490,0.000,0.000]} ~ ~2 ~ 0.2 200 0.2 0 8000 force


execute as @e[tag=orbital_strike_target] at @s run execute if dimension minecraft:overworld run execute if score @s wapon_loading_orbital_stiker matches 250 run summon armor_stand ~ 319 ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["orbital_strike","orbital_strike_beam"]}
execute as @e[tag=orbital_strike_target] at @s run execute unless dimension minecraft:overworld run execute if score @s wapon_loading_orbital_stiker matches 250 run summon armor_stand ~ 255 ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["orbital_strike","orbital_strike_beam"]}

execute as @e[tag=orbital_strike_target] at @s run execute if dimension minecraft:overworld run execute if score @s wapon_loading_orbital_stiker matches 1..20 run execute positioned ~ ~ ~ run execute as @e[type=armor_stand,tag=orbital_strike_beam,y=-64,dy=400] at @s run execute unless block ~ ~-1 ~ bedrock run teleport @s ~ ~-2 ~
execute as @e[tag=orbital_strike_target] at @s run execute if dimension minecraft:overworld run execute if score @s wapon_loading_orbital_stiker matches 20..249 run execute positioned ~ ~ ~ run execute as @e[type=armor_stand,tag=orbital_strike_beam,y=-64,dy=400] at @s run teleport @s ~ ~-2 ~

execute as @e[tag=orbital_strike_target] at @s run execute unless dimension minecraft:overworld run execute if score @s wapon_loading_orbital_stiker matches 1..100 run execute positioned ~ ~ ~ run execute as @e[type=armor_stand,tag=orbital_strike_beam,y=-64,dy=400] at @s run execute unless block ~ ~-1 ~ bedrock run teleport @s ~ ~-2 ~
execute as @e[tag=orbital_strike_target] at @s run execute unless dimension minecraft:overworld run execute if score @s wapon_loading_orbital_stiker matches 100..249 run execute positioned ~ ~ ~ run execute as @e[type=armor_stand,tag=orbital_strike_beam,y=-64,dy=400] at @s run teleport @s ~ ~-2 ~

#execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 1..249 run execute positioned ~ ~ ~ run execute at @e[type=armor_stand,tag=orbital_strike_beam,y=-64,dy=400] run execute if block ~ ~-1 ~ bedrock run scoreboard players set @s wapon_loading_orbital_stiker 1
execute as @e[tag=orbital_strike_beam] at @s run execute unless block ~ ~-1 ~ bedrock run summon creeper ~1 ~ ~ {Invulnerable:1b,PersistenceRequired:1b,powered:1b,ExplosionRadius:30b,Fuse:0,ignited:1b}
execute as @e[tag=orbital_strike_beam] at @s run execute unless block ~ ~-1 ~ bedrock run summon creeper ~-1 ~ ~ {Invulnerable:1b,PersistenceRequired:1b,powered:1b,ExplosionRadius:30b,Fuse:0,ignited:1b}
execute as @e[tag=orbital_strike_beam] at @s run execute unless block ~ ~-1 ~ bedrock run summon creeper ~ ~ ~1 {Invulnerable:1b,PersistenceRequired:1b,powered:1b,ExplosionRadius:30b,Fuse:0,ignited:1b}
execute as @e[tag=orbital_strike_beam] at @s run execute unless block ~ ~-1 ~ bedrock run summon creeper ~ ~ ~-1 {Invulnerable:1b,PersistenceRequired:1b,powered:1b,ExplosionRadius:30b,Fuse:0,ignited:1b}
execute as @e[tag=orbital_strike_beam] at @s run execute unless block ~ ~-1 ~ bedrock run fill ~40 ~ ~40 ~-40 ~ ~-40 fire replace air


execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 1..249 run execute positioned ~ ~ ~ run execute as @e[type=armor_stand,tag=orbital_strike_beam,y=-64,dy=400] at @s run particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:1,to_color:[0.490,0.000,0.000]} ~ ~2 ~ 2 5 2 1 1000 force


execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 1 run execute positioned ~ ~ ~ run execute as @e[type=armor_stand,tag=orbital_strike_beam,y=-64,dy=400] at @s run kill @s
execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 1..10 run execute align xyz run execute positioned ~ ~ ~ run execute as @e[type=item_display,tag=orbital_strike_circel,y=-64,dy=400] at @s run kill @s
execute as @e[tag=orbital_strike_target] at @s run execute if score @s wapon_loading_orbital_stiker matches 1 run kill @s

