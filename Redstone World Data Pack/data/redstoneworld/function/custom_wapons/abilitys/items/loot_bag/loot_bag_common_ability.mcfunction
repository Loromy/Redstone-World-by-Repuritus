loot give @s loot redstoneworld:redstoneworld/loot_bag/bag_common_loot

scoreboard players add @s stat_loot_bag_use_common 1

execute at @s run playsound minecraft:item.bundle.drop_contents player @s ~ ~ ~ 1 1.2
execute at @s run playsound minecraft:entity.sniffer.drop_seed player @s ~ ~ ~ 1 1.2
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 30

clear @s minecraft:warped_fungus_on_a_stick[item_model="minecraft:green_bundle",custom_data={ability:11}] 1
