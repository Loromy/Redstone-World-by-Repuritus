execute as @s at @s align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["gambling_slotmachine","gambling_slotmachine_marker"]}
execute as @s at @s align xyz run summon text_display ~0.5 ~2 ~1 {default_background:0b,see_through:1b,alignment:"center",Tags:["gambling_slotmachine","gambling_slotmachine_display"],text:{"color":"dark_red","text":"10000 \uE3E8"},background:524288}

execute as @s at @s align xyz run summon interaction ~0.5 ~1 ~0.5 {Tags:["gambling_slotmachine","gambling_slotmachine_interaction"]}
execute as @s at @s align xyz run setblock ~ ~ ~ minecraft:stripped_mangrove_log[axis=z]
execute as @s at @s align xyz run setblock ~ ~1 ~ minecraft:mangrove_shelf[facing=south,powered=false,side_chain=unconnected,waterlogged=false]{Items:[{Slot:0b,components:{"minecraft:banner_patterns":[{color:"black",pattern:"minecraft:stripe_downleft"},{color:"black",pattern:"minecraft:stripe_top"},{color:"white",pattern:"minecraft:border"}]},count:1,id:"minecraft:white_banner"},{Slot:1b,components:{"minecraft:banner_patterns":[{color:"black",pattern:"minecraft:stripe_downleft"},{color:"black",pattern:"minecraft:stripe_top"},{color:"white",pattern:"minecraft:border"}]},count:1,id:"minecraft:white_banner"},{Slot:2b,components:{"minecraft:banner_patterns":[{color:"black",pattern:"minecraft:stripe_downleft"},{color:"black",pattern:"minecraft:stripe_top"},{color:"white",pattern:"minecraft:border"}]},count:1,id:"minecraft:white_banner"}],align_items_to_bottom:0b,components:{}}
execute as @s at @s align xyz run setblock ~ ~2 ~ minecraft:mangrove_trapdoor[facing=south]
execute as @s at @s align xyz run setblock ~1 ~ ~ minecraft:lever[face=wall,facing=east]
execute as @s at @s align xyz run setblock ~1 ~1 ~ minecraft:waxed_lightning_rod
