execute as @a at @s run execute if score @s Mana < @s MaxMana run scoreboard players operation @s Mana += @s ManaPerSecond
execute as @a at @s run execute if score @s Mana > @s MaxMana run scoreboard players operation @s Mana = @s MaxMana
