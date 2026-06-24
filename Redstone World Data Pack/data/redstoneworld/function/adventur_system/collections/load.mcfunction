#Collection System - Load und Initialisierung
#Erstellt alle Scoreboards für das Collection-Tracking-System

#Hauptscoeboard für Collections
scoreboard objectives add collections_mining dummy {"text":"Mining Collection","color":"gold"}
scoreboard objectives add collections_wood dummy {"text":"Wood Collection","color":"green"}
scoreboard objectives add collections_farming dummy {"text":"Farming Collection","color":"green"}
scoreboard objectives add collections_archaeology dummy {"text":"Archaeology Collection","color":"green"}

#Statistik-Tracker (für Mining) - nutzt Minecraft Statistiken
scoreboard objectives add stat_ore_iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add stat_ore_coal minecraft.mined:minecraft.coal_ore
scoreboard objectives add stat_ore_diamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add stat_ore_gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add stat_ore_copper minecraft.mined:minecraft.copper_ore
scoreboard objectives add stat_ore_redstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add stat_ore_lapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add stat_ore_emerald minecraft.mined:minecraft.emerald_ore
scoreboard objectives add stat_resin_block minecraft.mined:minecraft.resin_block

#Statistik-Tracker (für Holz) - nutzt Minecraft Statistiken
scoreboard objectives add stat_pale_oak_wood minecraft.mined:minecraft.pale_oak_wood
scoreboard objectives add stat_cactus minecraft.mined:minecraft.cactus

#Statistik-Tracker (für Holz) - nutzt Minecraft Statistiken
scoreboard objectives add stat_wheat minecraft.mined:minecraft.wheat

#Nachricht bei erfolgreichem Laden
tellraw @a [{"text":"[Collections]","color":"gold"},{"text":" Collection-System aktiviert","color":"gray"}]
