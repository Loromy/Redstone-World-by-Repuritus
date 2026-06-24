#Redstone Elytra
execute if items entity @s armor.chest * run give @p elytra[custom_model_data={strings:["redstone_elytra"]},equippable={slot:"chest",asset_id:"minecraft:redstone_elytra"},custom_name={"bold":true,"color":"dark_red","italic":false,"text":"Redstone Elytra"},enchantments={"minecraft:mending":1,"minecraft:unbreaking":3}] 1

execute unless items entity @s armor.chest * run item replace entity @p armor.chest with elytra[custom_model_data={strings:["redstone_elytra"]},equippable={slot:"chest",asset_id:"minecraft:redstone_elytra"},custom_name={"bold":true,"color":"dark_red","italic":false,"text":"Redstone Elytra"},enchantments={"minecraft:mending":1,"minecraft:unbreaking":3}] 1


