execute as @e[type=minecraft:item_frame,nbt={Invisible:1b},distance=..40] run data merge entity @s {Glowing:1b,Fixed:0b}

execute as @e[type=minecraft:item_frame,nbt={Invisible:1b},nbt=!{Item:{}},distance=..40] run data merge entity @s {Item:{id:"minecraft:barrier"}}


