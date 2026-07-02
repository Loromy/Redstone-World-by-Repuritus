#page 0 (home)
execute store result score @s shop_chest_item run data get entity @s Inventory[{components:{"minecraft:custom_data":{}}}].components.minecraft:custom_data.hub_chest

execute if score @s shop_chest_item matches 1 run scoreboard players set @s enderchest_page 1
execute if score @s shop_chest_item matches 2 run scoreboard players set @s enderchest_page 2
execute if score @s shop_chest_item matches 3 run scoreboard players set @s enderchest_page 3
execute if score @s shop_chest_item matches 4 run execute in minecraft:overworld run tp @s -4.50 0.00 34.50 90 0
#execute if score @s shop_chest_item matches 5 run
execute if score @s shop_chest_item matches 6 run scoreboard players set @s enderchest_page 6
execute if score @s shop_chest_item matches 7 run scoreboard players set @s enderchest_page 7
execute if score @s shop_chest_item matches 8 run scoreboard players set @s enderchest_page 8
execute if score @s shop_chest_item matches 9 run function redstoneworld:hub/stats/show_my_stats
execute if score @s shop_chest_item matches 10 run function give:item/redstone_book

#back to home(0)
execute if score @s shop_chest_item matches 50 run scoreboard players set @s enderchest_page 0
execute if score @s shop_chest_item matches 57 run scoreboard players set @s enderchest_page 7

#page potions
execute if score @s shop_chest_item matches 101 run execute unless score @s Redbytes matches 10.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 101 run execute if score @s Redbytes matches 10.. run function redstoneworld:mana/potions/max_mana/give_mana_potion_10
execute if score @s shop_chest_item matches 101 run execute if score @s Redbytes matches 10.. run scoreboard players remove @s Redbytes 10

execute if score @s shop_chest_item matches 102 run execute unless score @s Redbytes matches 100.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 102 run execute if score @s Redbytes matches 100.. run function redstoneworld:mana/potions/max_mana/give_mana_potion_100
execute if score @s shop_chest_item matches 102 run execute if score @s Redbytes matches 100.. run scoreboard players remove @s Redbytes 100

execute if score @s shop_chest_item matches 103 run execute unless score @s Redbytes matches 1000.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 103 run execute if score @s Redbytes matches 1000.. run function redstoneworld:mana/potions/max_mana/give_mana_potion_1000
execute if score @s shop_chest_item matches 103 run execute if score @s Redbytes matches 1000.. run scoreboard players remove @s Redbytes 1000

execute if score @s shop_chest_item matches 104 run execute unless score @s Redbytes matches 10000.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 104 run execute if score @s Redbytes matches 10000.. run function redstoneworld:mana/potions/max_mana/give_mana_potion_10000
execute if score @s shop_chest_item matches 104 run execute if score @s Redbytes matches 10000.. run scoreboard players remove @s Redbytes 10000

execute if score @s shop_chest_item matches 105 run execute unless score @s Redbytes matches 100000.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 105 run execute if score @s Redbytes matches 100000.. run function redstoneworld:mana/potions/max_mana/give_mana_potion_100000
execute if score @s shop_chest_item matches 105 run execute if score @s Redbytes matches 100000.. run scoreboard players remove @s Redbytes 100000

execute if score @s shop_chest_item matches 106 run execute unless score @s Redbytes matches 1000000.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 106 run execute if score @s Redbytes matches 1000000.. run function redstoneworld:mana/potions/max_mana/give_mana_potion_1000000
execute if score @s shop_chest_item matches 106 run execute if score @s Redbytes matches 1000000.. run scoreboard players remove @s Redbytes 1000000

#Weapons
execute if score @s shop_chest_item matches 201 run function give:custom_wapons/speed_sword
execute if score @s shop_chest_item matches 202 run function give:custom_wapons/teleport_sword
execute if score @s shop_chest_item matches 203 run function give:custom_wapons/lightning_sword
execute if score @s shop_chest_item matches 204 run function give:custom_wapons/fire_sword


#armor
execute if score @s shop_chest_item matches 301 run execute unless score @s Redbytes matches 1000000.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 301 run execute if score @s Redbytes matches 1000000.. run function give:armor/op_armor
execute if score @s shop_chest_item matches 301 run execute if score @s Redbytes matches 1000000.. run give @s totem_of_undying
execute if score @s shop_chest_item matches 301 run execute if score @s Redbytes matches 1000000.. run scoreboard players remove @s Redbytes 1000000


#food
execute if score @s shop_chest_item matches 601 run execute unless score @s Redbytes matches 30.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 601 run execute if score @s Redbytes matches 30.. run give @s bread 10
execute if score @s shop_chest_item matches 601 run execute if score @s Redbytes matches 30.. run scoreboard players remove @s Redbytes 30

execute if score @s shop_chest_item matches 602 run execute unless score @s Redbytes matches 8.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 602 run execute if score @s Redbytes matches 8.. run give @s pumpkin_pie 1
execute if score @s shop_chest_item matches 602 run execute if score @s Redbytes matches 8.. run scoreboard players remove @s Redbytes 8

execute if score @s shop_chest_item matches 603 run execute unless score @s Redbytes matches 10.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 603 run execute if score @s Redbytes matches 10.. run give @s golden_carrot 1
execute if score @s shop_chest_item matches 603 run execute if score @s Redbytes matches 10.. run scoreboard players remove @s Redbytes 10

execute if score @s shop_chest_item matches 604 run execute unless score @s Redbytes matches 50.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 604 run execute if score @s Redbytes matches 50.. run give @s golden_apple 1
execute if score @s shop_chest_item matches 604 run execute if score @s Redbytes matches 50.. run scoreboard players remove @s Redbytes 50

execute if score @s shop_chest_item matches 605 run execute unless score @s Redbytes matches 100.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 605 run execute if score @s Redbytes matches 100.. run give @s enchanted_golden_apple 1
execute if score @s shop_chest_item matches 605 run execute if score @s Redbytes matches 100.. run scoreboard players remove @s Redbytes 100


#redgiga_block
execute if score @s shop_chest_item matches 701 run scoreboard players set @s enderchest_page 701

execute if score @s shop_chest_item matches 711 run execute unless score @s Redbytes matches 100.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 711 run execute if score @s Redbytes matches 100.. run function redstoneworld:redbytes/give_redgiga_block {count:1}
execute if score @s shop_chest_item matches 711 run execute if score @s Redbytes matches 100.. run scoreboard players remove @s Redbytes 100

execute if score @s shop_chest_item matches 712 run execute unless score @s Redbytes matches 1000.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 712 run execute if score @s Redbytes matches 1000.. run function redstoneworld:redbytes/give_redgiga_block {count:10}
execute if score @s shop_chest_item matches 712 run execute if score @s Redbytes matches 1000.. run scoreboard players remove @s Redbytes 100

execute if score @s shop_chest_item matches 713 run execute unless score @s Redbytes matches 3200.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 713 run execute if score @s Redbytes matches 3200.. run function redstoneworld:redbytes/give_redgiga_block {count:32}
execute if score @s shop_chest_item matches 713 run execute if score @s Redbytes matches 3200.. run scoreboard players remove @s Redbytes 3200

execute if score @s shop_chest_item matches 714 run execute unless score @s Redbytes matches 6400.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 714 run execute if score @s Redbytes matches 6400.. run function redstoneworld:redbytes/give_redgiga_block {count:64}
execute if score @s shop_chest_item matches 714 run execute if score @s Redbytes matches 6400.. run scoreboard players remove @s Redbytes 6400

#redgiga
execute if score @s shop_chest_item matches 702 run scoreboard players set @s enderchest_page 702

execute if score @s shop_chest_item matches 721 run execute unless score @s Redbytes matches 10.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 721 run execute if score @s Redbytes matches 10.. run function redstoneworld:redbytes/give_redgiga {count:1}
execute if score @s shop_chest_item matches 721 run execute if score @s Redbytes matches 10.. run scoreboard players remove @s Redbytes 10

execute if score @s shop_chest_item matches 722 run execute unless score @s Redbytes matches 100.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 722 run execute if score @s Redbytes matches 100.. run function redstoneworld:redbytes/give_redgiga {count:10}
execute if score @s shop_chest_item matches 722 run execute if score @s Redbytes matches 100.. run scoreboard players remove @s Redbytes 100

execute if score @s shop_chest_item matches 723 run execute unless score @s Redbytes matches 320.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 723 run execute if score @s Redbytes matches 320.. run function redstoneworld:redbytes/give_redgiga {count:32}
execute if score @s shop_chest_item matches 723 run execute if score @s Redbytes matches 320.. run scoreboard players remove @s Redbytes 320

execute if score @s shop_chest_item matches 724 run execute unless score @s Redbytes matches 640.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 724 run execute if score @s Redbytes matches 640.. run function redstoneworld:redbytes/give_redgiga {count:64}
execute if score @s shop_chest_item matches 724 run execute if score @s Redbytes matches 640.. run scoreboard players remove @s Redbytes 640

#redbyte
execute if score @s shop_chest_item matches 703 run scoreboard players set @s enderchest_page 703

execute if score @s shop_chest_item matches 731 run execute unless score @s Redbytes matches 1.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 731 run execute if score @s Redbytes matches 1.. run function redstoneworld:redbytes/give_redbyte {count:1}
execute if score @s shop_chest_item matches 731 run execute if score @s Redbytes matches 1.. run scoreboard players remove @s Redbytes 1

execute if score @s shop_chest_item matches 732 run execute unless score @s Redbytes matches 10.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 732 run execute if score @s Redbytes matches 10.. run function redstoneworld:redbytes/give_redbyte {count:10}
execute if score @s shop_chest_item matches 732 run execute if score @s Redbytes matches 10.. run scoreboard players remove @s Redbytes 10

execute if score @s shop_chest_item matches 733 run execute unless score @s Redbytes matches 32.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 733 run execute if score @s Redbytes matches 32.. run function redstoneworld:redbytes/give_redbyte {count:32}
execute if score @s shop_chest_item matches 733 run execute if score @s Redbytes matches 32.. run scoreboard players remove @s Redbytes 32

execute if score @s shop_chest_item matches 734 run execute unless score @s Redbytes matches 64.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 734 run execute if score @s Redbytes matches 64.. run function redstoneworld:redbytes/give_redbyte {count:64}
execute if score @s shop_chest_item matches 734 run execute if score @s Redbytes matches 64.. run scoreboard players remove @s Redbytes 64

#redbit
execute if score @s shop_chest_item matches 704 run scoreboard players set @s enderchest_page 704

execute if score @s shop_chest_item matches 741 run execute unless score @s Redbytes matches 1.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 741 run execute if score @s Redbytes matches 1.. run function redstoneworld:redbytes/give_redbit {count:10}
execute if score @s shop_chest_item matches 741 run execute if score @s Redbytes matches 1.. run scoreboard players remove @s Redbytes 1

execute if score @s shop_chest_item matches 742 run execute unless score @s Redbytes matches 3.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 742 run execute if score @s Redbytes matches 3.. run function redstoneworld:redbytes/give_redbit {count:30}
execute if score @s shop_chest_item matches 742 run execute if score @s Redbytes matches 3.. run scoreboard players remove @s Redbytes 3

execute if score @s shop_chest_item matches 743 run execute unless score @s Redbytes matches 6.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 743 run execute if score @s Redbytes matches 6.. run function redstoneworld:redbytes/give_redbit {count:60}
execute if score @s shop_chest_item matches 743 run execute if score @s Redbytes matches 6.. run scoreboard players remove @s Redbytes 6



#items
execute if score @s shop_chest_item matches 801 run execute if entity @s[tag=OP] run function redstoneworld:give_operator_key_card
execute if score @s shop_chest_item matches 801 run execute unless entity @s[tag=OP] run tellraw @s [{"bold":true,"color":"dark_red","italic":false,"text":"[Redstone World]: "},{"bold":false,"color":"dark_gray","italic":false,"text":"You neet to be an Operator to get this Key-Card"}]

execute if score @s shop_chest_item matches 802 run give @s minecraft:clock

execute if score @s shop_chest_item matches 803 run execute unless score @s Redbytes matches 10000.. run function redstoneworld:enderchest_inventar/not_enough_redbyts_message
execute if score @s shop_chest_item matches 803 run execute if score @s Redbytes matches 10000.. run function give:item/teleport_stone
execute if score @s shop_chest_item matches 803 run execute if score @s Redbytes matches 10000.. run scoreboard players remove @s Redbytes 10000












execute if score @s shop_chest_item matches 1.. run function redstoneworld:enderchest_inventar/chest/pages/load_page

#99 = glass panee
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:99}}}] run clear @s *[minecraft:custom_data={hub_chest:99}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:1}}}] run clear @s *[minecraft:custom_data={hub_chest:1}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:2}}}] run clear @s *[minecraft:custom_data={hub_chest:2}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:3}}}] run clear @s *[minecraft:custom_data={hub_chest:3}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:4}}}] run clear @s *[minecraft:custom_data={hub_chest:4}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:6}}}] run clear @s *[minecraft:custom_data={hub_chest:6}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:7}}}] run clear @s *[minecraft:custom_data={hub_chest:7}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:8}}}] run clear @s *[minecraft:custom_data={hub_chest:8}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:9}}}] run clear @s *[minecraft:custom_data={hub_chest:9}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:10}}}] run clear @s *[minecraft:custom_data={hub_chest:10}]

execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:50}}}] run clear @s *[minecraft:custom_data={hub_chest:50}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:57}}}] run clear @s *[minecraft:custom_data={hub_chest:57}]


execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:101}}}] run clear @s *[minecraft:custom_data={hub_chest:101}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:102}}}] run clear @s *[minecraft:custom_data={hub_chest:102}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:103}}}] run clear @s *[minecraft:custom_data={hub_chest:103}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:104}}}] run clear @s *[minecraft:custom_data={hub_chest:104}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:105}}}] run clear @s *[minecraft:custom_data={hub_chest:105}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:106}}}] run clear @s *[minecraft:custom_data={hub_chest:106}]

execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:201}}}] run clear @s *[minecraft:custom_data={hub_chest:201}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:202}}}] run clear @s *[minecraft:custom_data={hub_chest:202}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:203}}}] run clear @s *[minecraft:custom_data={hub_chest:203}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:204}}}] run clear @s *[minecraft:custom_data={hub_chest:204}]

execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:301}}}] run clear @s *[minecraft:custom_data={hub_chest:301}]

execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:601}}}] run clear @s *[minecraft:custom_data={hub_chest:601}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:602}}}] run clear @s *[minecraft:custom_data={hub_chest:602}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:603}}}] run clear @s *[minecraft:custom_data={hub_chest:603}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:604}}}] run clear @s *[minecraft:custom_data={hub_chest:604}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:605}}}] run clear @s *[minecraft:custom_data={hub_chest:605}]

execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:701}}}] run clear @s *[minecraft:custom_data={hub_chest:701}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:702}}}] run clear @s *[minecraft:custom_data={hub_chest:702}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:703}}}] run clear @s *[minecraft:custom_data={hub_chest:703}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:704}}}] run clear @s *[minecraft:custom_data={hub_chest:704}]

execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:711}}}] run clear @s *[minecraft:custom_data={hub_chest:711}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:712}}}] run clear @s *[minecraft:custom_data={hub_chest:712}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:713}}}] run clear @s *[minecraft:custom_data={hub_chest:713}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:714}}}] run clear @s *[minecraft:custom_data={hub_chest:714}]

execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:721}}}] run clear @s *[minecraft:custom_data={hub_chest:721}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:722}}}] run clear @s *[minecraft:custom_data={hub_chest:722}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:723}}}] run clear @s *[minecraft:custom_data={hub_chest:723}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:724}}}] run clear @s *[minecraft:custom_data={hub_chest:724}]

execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:731}}}] run clear @s *[minecraft:custom_data={hub_chest:731}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:732}}}] run clear @s *[minecraft:custom_data={hub_chest:732}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:733}}}] run clear @s *[minecraft:custom_data={hub_chest:733}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:734}}}] run clear @s *[minecraft:custom_data={hub_chest:734}]

execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:741}}}] run clear @s *[minecraft:custom_data={hub_chest:741}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:742}}}] run clear @s *[minecraft:custom_data={hub_chest:742}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:743}}}] run clear @s *[minecraft:custom_data={hub_chest:743}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:744}}}] run clear @s *[minecraft:custom_data={hub_chest:744}]


execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:801}}}] run clear @s *[minecraft:custom_data={hub_chest:801}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:802}}}] run clear @s *[minecraft:custom_data={hub_chest:802}]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{hub_chest:803}}}] run clear @s *[minecraft:custom_data={hub_chest:803}]

