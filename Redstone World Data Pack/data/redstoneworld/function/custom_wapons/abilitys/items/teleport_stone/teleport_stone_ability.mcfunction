teleport @s -32 122 -5
playsound minecraft:entity.player.teleport player @s 13.00 118.00 14.00 1 0 0.1
clear @s warped_fungus_on_a_stick[custom_model_data={strings:["kristall"]},custom_data={ability:10,mana_item:1}] 1

scoreboard players set @s wapon_cooldown_teleport_stone 10
scoreboard players remove @s Mana 1000
