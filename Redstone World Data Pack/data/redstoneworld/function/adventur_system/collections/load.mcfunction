# GLOBALE HILFS-SCOREBOARDS
scoreboard objectives add col_vars dummy

# MINECRAFT STATISTIKEN (TRACKING)
scoreboard objectives add stat_spruce_wood minecraft.mined:minecraft.spruce_wood

scoreboard objectives add stat_crop_wheat minecraft.mined:minecraft.wheat
scoreboard objectives add stat_crop_cane minecraft.mined:minecraft.sugar_cane
scoreboard objectives add stat_cactus_farm minecraft.mined:minecraft.cactus

scoreboard objectives add stat_mob_kills minecraft.custom:minecraft.mob_kills

scoreboard objectives add stat_ore_coal minecraft.mined:minecraft.coal_ore
scoreboard objectives add stat_ore_iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add stat_ore_gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add stat_ore_lapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add stat_ore_diamond minecraft.mined:minecraft.diamond_ore


# SCOREBOARDS
scoreboard objectives add collections_wood dummy
scoreboard objectives add lvl_wood dummy
scoreboard objectives add lvl_next_wood dummy

scoreboard objectives add collections_farming dummy
scoreboard objectives add lvl_farming dummy
scoreboard objectives add lvl_next_farming dummy

scoreboard objectives add collections_combat dummy
scoreboard objectives add lvl_combat dummy
scoreboard objectives add lvl_next_combat dummy

scoreboard objectives add collections_mining dummy
scoreboard objectives add lvl_mining dummy
scoreboard objectives add lvl_next_mining dummy

tellraw @a [{"text":"[System] ","color":"green"},{"text":"Collection-System erfolgreich geladen!","color":"gray"}]
