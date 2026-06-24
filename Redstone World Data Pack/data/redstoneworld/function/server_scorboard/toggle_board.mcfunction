# 1. Zuerst den Score umdrehen (0 -> 2, 1 -> 0)
execute if score show_board redstone_world_board matches 0 run scoreboard players set show_board redstone_world_board 2
execute if score show_board redstone_world_board matches 1 run scoreboard players set show_board redstone_world_board 0

# 2. Den Hilfswert 2 jetzt auf die finale 1 setzen
execute if score show_board redstone_world_board matches 2 run scoreboard players set show_board redstone_world_board 1

# 3. Visuelle Anzeige basierend auf dem neuen Score umschalten
# Ausschalten (wenn 0)
execute if score show_board redstone_world_board matches 0 run scoreboard objectives setdisplay sidebar
# Einschalten (wenn 1) - Ersetze 'NAME' durch dein anzuzeigendes Scoreboard
execute if score show_board redstone_world_board matches 1 run scoreboard objectives setdisplay sidebar redstone_world_board