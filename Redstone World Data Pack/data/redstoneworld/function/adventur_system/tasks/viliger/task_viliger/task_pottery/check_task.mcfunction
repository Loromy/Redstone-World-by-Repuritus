# --- 1/6: INITIALER DIALOG ---
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute unless score @s task_pottery matches 0.. run tellraw @s ["",{"text":"[Alehjandro]: ","bold":true,"color":"gold"},{"text":"1/7 ","bold":true,"color":"dark_green"},{"text":"Ah, Willkommen, mene tohn Töpfe sehen noch so langweilig aus!"}]
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute unless score @s task_pottery matches 0.. run scoreboard players set @s task_pottery 0

# --- 2/6: DER AUFTRAG ---
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 1 run tellraw @s ["",{"text":"[Alehjandro]: ","bold":true,"color":"gold"},{"text":"2/7 ","bold":true,"color":"dark_green"},{"text":"Es fehlen mir für meinen ganz besonderes Prachtstücke noch die passenden Verzierungen. Ich möchte die alten Geschichten der Welt auf meinen Ton bringen."}]
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 1 run scoreboard players set @s task_pottery 2

# --- 3/6: DIE ANWEISUNG ---
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 3 run tellraw @s ["",{"text":"[Alehjandro]: ","bold":true,"color":"gold"},{"text":"3/7 ","bold":true,"color":"dark_green"},{"text":"Man sagt, dass in der alten Mine bei der Oase noch wahre Schätze im Sand verborgen liegen. Wenn du dort vorsichtig mit einem Pinsel den Sand freilegst, kannst du diese uralten, seltenen Tonscherben finden."}]
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 3 run scoreboard players set @s task_pottery 4

# --- 4/6: DIE ANWEISUNG ---
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 5 run tellraw @s ["",{"text":"[Alehjandro]: ","bold":true,"color":"gold"},{"text":"4/7 ","bold":true,"color":"dark_green"},{"text":"Sie sind mit den Geschichten der Welt verziert, die ich so gerne auf meinen Töpfen verewigen möchte. Bring mir doch bitte 3 dieser Tonscherben, damit ich meine Kunstwerke vervollständigen kann."}]
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 5 run scoreboard players set @s task_pottery 6

# --- 6/6: ABGABE (Checkt Item in der Haupthand) ---
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 9 run execute if items entity @s weapon.mainhand minecraft:snort_pottery_sherd[count=3] run tellraw @s ["",{"text":"[Alehjandro]: ","bold":true,"color":"gold"},{"text":"6/7 ","bold":true,"color":"dark_green"},{"text":"Oh, vielen danke, du hast die Tonscherben gefunden! Hier ist deine Belohnung."}]
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 9 run execute if items entity @s weapon.mainhand minecraft:snort_pottery_sherd[count=3] run scoreboard players set @s task_pottery 10
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 10 run execute if items entity @s weapon.mainhand minecraft:snort_pottery_sherd[count=3] run clear @s minecraft:snort_pottery_sherd 3
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 10 run function redstoneworld:redbytes/give_redbyte {count:50}

# --- 5/6: ERINNERUNG (Wenn Staub noch fehlt) ---
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 7..9 run tellraw @s ["",{"text":"[Alehjandro]: ","bold":true,"color":"gold"},{"text":"5/7 ","bold":true,"color":"dark_green"},{"text":"Hast du schon Pottery sherds gefunden, in der Mine?"}]
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 7..9 run scoreboard players set @s task_pottery 8

# --- 7/6: ABSCHLUSS & QUEST-COUNTER ---
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 11.. run tellraw @s ["",{"text":"[Alehjandro]: ","bold":true,"color":"gold"},{"text":"7/7 ","bold":true,"color":"dark_green"},{"text":"Vielen Dank, dass du mir geholfen hast, meine Kunstwerke zu vervollständigen! Es war mir eine Freude, mit dir zu sprechen."}]
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 11 run scoreboard players add @s completed_quests_count 1
#execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 11 run advancement grant @s only redstoneworld:redstoneworld/task/pottery/compleated
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 11 run function redstoneworld:adventur_system/tasks/viliger/task_viliger/show_completed
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 11.. run scoreboard players set @s task_pottery 11

# --- LOGIK: SCORE ERHÖHEN & INTERACTION RESET ---
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] on target at @s run execute if score @s task_pottery matches 0.. run scoreboard players add @s task_pottery 1
execute as @e[type=minecraft:interaction,tag=rw_task_pottery_interaction] run data remove entity @s interaction