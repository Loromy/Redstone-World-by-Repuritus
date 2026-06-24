# --- 1/6: INITIALER DIALOG ---
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute unless score @s task_ores matches 0.. run tellraw @s ["",{"text":"[Bruno]: ","bold":true,"color":"gold"},{"text":"1/6 ","bold":true,"color":"dark_green"},{"text":"Hallo Fremder! Ich bin Bruno. In dieser Stadt wirst du keine besseren Erze finden als bei mir."}]
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute unless score @s task_ores matches 0.. run scoreboard players set @s task_ores 0

# --- 2/6: DER AUFTRAG ---
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 1 run tellraw @s ["",{"text":"[Bruno]: ","bold":true,"color":"gold"},{"text":"2/6 ","bold":true,"color":"dark_green"},{"text":"Mein Kollege Hans kümmert sich um den Verkauf, aber mir gehen die Vorräte aus. Hättest du kurz Zeit, mir zu helfen?"}]
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 1 run scoreboard players set @s task_ores 2

# --- 3/6: DIE ANWEISUNG ---
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 3 run tellraw @s ["",{"text":"[Bruno]: ","bold":true,"color":"gold"},{"text":"3/6 ","bold":true,"color":"dark_green"},{"text":"Bring mir 20 Einheiten 'Compressed Ore Dust'. Du findest den Staub in der Mine direkt hinter dem Haus. Ich bezahle dich auch gut!"}]
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 3 run scoreboard players set @s task_ores 4

# --- 5/6: ABGABE (Checkt Item in der Haupthand) ---
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 7 run execute if items entity @s weapon.mainhand glowstone_dust[custom_model_data={strings:["compressed_ore_dust"]},custom_name={"bold":true,"color":"dark_aqua","italic":false,"text":"Compressed Ore Dust"},count=20] run tellraw @s ["",{"text":"[Bruno]: ","bold":true,"color":"gold"},{"text":"5/6 ","bold":true,"color":"dark_green"},{"text":"Hervorragend, du hast den Staub gefunden! Hier ist deine Belohnung, wie versprochen."}]
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 7 run execute if items entity @s weapon.mainhand glowstone_dust[custom_model_data={strings:["compressed_ore_dust"]},custom_name={"bold":true,"color":"dark_aqua","italic":false,"text":"Compressed Ore Dust"},count=20] run scoreboard players set @s task_ores 8
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 8 run execute if items entity @s weapon.mainhand glowstone_dust[custom_model_data={strings:["compressed_ore_dust"]},custom_name={"bold":true,"color":"dark_aqua","italic":false,"text":"Compressed Ore Dust"},count=20] run clear @s glowstone_dust[custom_model_data={strings:["compressed_ore_dust"]},custom_name={"bold":true,"color":"dark_aqua","italic":false,"text":"Compressed Ore Dust"}] 20
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 8 run function redstoneworld:redbytes/give_redbyte {count:10}

# --- 4/6: ERINNERUNG (Wenn Staub noch fehlt) ---
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 5..7 run tellraw @s ["",{"text":"[Bruno]: ","bold":true,"color":"gold"},{"text":"4/6 ","bold":true,"color":"dark_green"},{"text":"Hast du die 20 Einheiten 'Compressed Ore Dust' aus der Mine schon gefunden? Ich warte dringend darauf!"}]
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 5..7 run scoreboard players set @s task_ores 6

# --- 6/6: ABSCHLUSS & QUEST-COUNTER ---
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 9.. run tellraw @s ["",{"text":"[Bruno]: ","bold":true,"color":"gold"},{"text":"6/6 ","bold":true,"color":"dark_green"},{"text":"Danke nochmal für deine Hilfe! Schau jederzeit vorbei, wenn du Erze suchst."}]
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 9 run scoreboard players add @s completed_quests_count 1
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 9 run advancement grant @s only redstoneworld:redstoneworld/task/ores/compleated
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 9 run function redstoneworld:adventur_system/tasks/viliger/task_viliger/show_completed
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 9.. run scoreboard players set @s task_ores 9

# --- LOGIK: SCORE ERHÖHEN & INTERACTION RESET ---
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] on target at @s run execute if score @s task_ores matches 0.. run scoreboard players add @s task_ores 1
execute as @e[type=minecraft:interaction,tag=rw_task_ores_interaction] run data remove entity @s interaction