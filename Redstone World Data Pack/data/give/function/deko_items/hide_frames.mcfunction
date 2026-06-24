execute as @e[type=minecraft:item_frame,nbt={Invisible:1b},distance=..40] if data entity @s {Glowing:1b} run data merge entity @s {Glowing:0b,Fixed:1b}
