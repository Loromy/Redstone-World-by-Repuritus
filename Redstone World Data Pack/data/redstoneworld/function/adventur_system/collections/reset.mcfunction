#Collections System - Reset/Uninstall
scoreboard objectives remove collections_mining
scoreboard objectives remove collections_wood
scoreboard objectives remove collections_farming
scoreboard objectives remove collections_archaeology
scoreboard objectives remove stat_ore_iron
scoreboard objectives remove stat_ore_coal
scoreboard objectives remove stat_ore_diamond
scoreboard objectives remove stat_ore_gold
scoreboard objectives remove stat_ore_copper
scoreboard objectives remove stat_ore_redstone
scoreboard objectives remove stat_ore_lapis
scoreboard objectives remove stat_ore_emerald
scoreboard objectives remove stat_pale_oak_wood
scoreboard objectives remove stat_wheat
scoreboard objectives remove stat_resin_block
scoreboard objectives remove stat_cactus

tellraw @a [{"text":"[Collections]","color":"gold"},{"text":" Collection System deaktiviert","color":"gray"}]
