clear @s *[custom_data={sapaceSuit:1}]

item replace entity @s armor.feet with diamond_boots[custom_model_data={strings:["space_suit_boots"]},custom_name={"bold":true,"color":"dark_red","italic":false,"text":"Space Suit Boots"},equippable={slot:"feet",equip_sound:"item.armor.equip_netherite",asset_id:"minecraft:space_suit"},unbreakable={},custom_data={sapaceSuit:1}] 1
item replace entity @s armor.legs with diamond_leggings[custom_model_data={strings:["space_suit_leggings"]},custom_name={"bold":true,"color":"dark_red","italic":false,"text":"Space Suit Leggings"},equippable={slot:"legs",equip_sound:"item.armor.equip_netherite",asset_id:"minecraft:space_suit"},unbreakable={},custom_data={sapaceSuit:1}] 1
item replace entity @s armor.chest with diamond_chestplate[custom_model_data={strings:["space_suit_chestplate"]},custom_name={"bold":true,"color":"dark_red","italic":false,"text":"Space Suit Chestplate"},equippable={slot:"chest",equip_sound:"item.armor.equip_netherite",asset_id:"minecraft:space_suit"},unbreakable={},custom_data={sapaceSuit:1}] 1
item replace entity @s armor.head with gray_stained_glass[custom_model_data={strings:["space_helmet_open"]},custom_name={"bold":true,"color":"dark_red","italic":false,"text":"Space Suit Helmet"},unbreakable={},equippable={slot:"head",equip_sound:"item.armor.equip_netherite"},max_stack_size=1,custom_data={sapaceSuit:1}] 1

#Space Suit Elytra
give @p elytra[custom_model_data={strings:["space_suit_elytra"]},equippable={slot:"chest",asset_id:"minecraft:space_suit_elytra"},custom_name={"bold":true,"color":"dark_red","italic":false,"text":"Space Suit Elytra"},custom_data={sapaceSuit:1}] 1

#fly-fule
execute unless score @s space_fly_sneak-fule matches 1000.. run scoreboard players set @s space_fly_sneak-fule 1000