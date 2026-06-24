#Collection System - Info Display
#Zeigt den aktuellen Fortschritt aller Collections des Spielers an

tellraw @s [{"text":"\n","color":"white"}]
tellraw @s [{"text":"┌─────────────────────────────────┐","color":"gold"}]
tellraw @s [{"text":"      DEINE COLLECTIONS","color":"gold","bold":true}]
tellraw @s [{"text":"└─────────────────────────────────┘","color":"gold"}]

tellraw @s [{"text":"\n⛏ Mining Collection: ","color":"#FFD700"},{"score":{"name":"@s","objective":"collections_mining"},"color":"white"}]

tellraw @s [{"text":"🌲 Wood Collection: ","color":"#228B22"},{"score":{"name":"@s","objective":"collections_wood"},"color":"white"}]

tellraw @s [{"text":"F Farming Collection: ","color":"#228B22"},{"score":{"name":"@s","objective":"collections_farming"},"color":"white"}]


tellraw @s [{"text":"\n","color":"white"}]
