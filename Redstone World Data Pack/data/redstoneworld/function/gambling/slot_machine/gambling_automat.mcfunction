playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1

scoreboard players add Casino Redbytes 10
clear @s minecraft:gold_nugget[custom_data={redbyte:2}] 10

execute store result score @s gambling_automat run random value 1..10000
execute if score @s gambling_automat matches 1 run title @s times 10t 5s 10t
execute if score @s gambling_automat matches 1 run title @s title [{"text":"\u2582","color":"#003a00"},{"text":"\u2583","color":"#004700"},{"text":"\u2585","color":"#005400"},{"text":"\u2586 ","color":"#006100"},{"text":"Y","color":"#006e00"},{"text":"o","color":"#007b00"},{"text":"u ","color":"#008800"},{"text":"W","color":"#009500"},{"text":"o","color":"#00a200"},{"text":"n ","color":"#00af00"},{"text":"t","color":"#00bc00"},{"text":"he ","color":"#00c900"},{"text":"J","color":"#00bc00"},{"text":"a","color":"#00b000"},{"text":"c","color":"#00a300"},{"text":"k","color":"#009600"},{"text":"p","color":"#008a00"},{"text":"o","color":"#007d00"},{"text":"t ","color":"#007000"},{"text":"\u2586","color":"#006400"},{"text":"\u2585","color":"#005700"},{"text":"\u2583","color":"#004a00"},{"text":"\u2582","color":"#003e00"}]
execute if score @s gambling_automat matches 1 run scoreboard players add @s Redbytes 10000
execute if score @s gambling_automat matches 1 run scoreboard players remove Casino Redbytes 10000
execute if score @s gambling_automat matches 1 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1
execute if score @s gambling_automat matches 1 run advancement grant @s only redstoneworld:redstoneworld/arcade/casino/slot__mashine/win
execute if score @s gambling_automat matches 1 run summon firework_rocket ~ ~0.6 ~ {Life:1,LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[I;46336],fade_colors:[I;1270016]}]}}}}


execute if score @s gambling_automat matches 2..10000 run summon firework_rocket ~ ~0.6 ~ {Life:1,LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[I;13565952,8847360],fade_colors:[I;7995392,5373952]}]}}}}


