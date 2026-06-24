# --- 1/6: INITIALER DIALOG (Begrüßung) ---
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute unless score @s task_forge matches 0.. run tellraw @s ["",{"text":"[Ambro]: ","bold":true,"color":"gold"},{"text":"1/6 ","bold":true,"color":"dark_green"},{"text":"Willkommen in meiner kleinen Schmiede, schau dich gerne mal um."}]
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute unless score @s task_forge matches 0.. run scoreboard players set @s task_forge 0

# --- 2/6: DER AUFTRAG (Die Verzögerung/Erklärung) ---
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 1 run tellraw @s ["",{"text":"[Ambro]: ","bold":true,"color":"gold"},{"text":"2/6 ","bold":true,"color":"dark_green"},{"text":"Hmmm... du siehst kräftig aus. Mein Schmelzofen ist leider kalt wie ein Eisbiom. Mir fehlt Glühender Obsidian aus den tiefen der Mine."}]
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 1 run scoreboard players set @s task_forge 2

# --- 3/6: DIE ANWEISUNG (Die konkrete Aufgabe) ---
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 3 run tellraw @s ["",{"text":"[Ambro]: ","bold":true,"color":"gold"},{"text":"3/6 ","bold":true,"color":"dark_green"},{"text":"Bring mir 10 Einheiten 'Burning Obsidian', damit ich das Feuer wieder entfachen kann. Ich werde dich gut bezahlen!"}]
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 3 run scoreboard players set @s task_forge 4

# --- 5/6: ABGABE (Checkt Burning Obsidian in der Haupthand) ---
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 7 run execute if items entity @s weapon.mainhand blaze_rod[custom_model_data={strings:["burning_obsidian"]},custom_name={"bold":true,"color":"gold","italic":false,"text":"Burning Obsidian"},count=10] run tellraw @s ["",{"text":"[Ambro]: ","bold":true,"color":"gold"},{"text":"5/6 ","bold":true,"color":"dark_green"},{"text":"Ah vielen Dank!, Genau das habe ich gebraucht. Hier sind deine verdiene Redbytes!"}]
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 7 run execute if items entity @s weapon.mainhand blaze_rod[custom_model_data={strings:["burning_obsidian"]},custom_name={"bold":true,"color":"gold","italic":false,"text":"Burning Obsidian"},count=10] run scoreboard players set @s task_forge 8

# BELOHNUNG & CLEAR
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 8 run execute if items entity @s weapon.mainhand blaze_rod[custom_model_data={strings:["burning_obsidian"]},custom_name={"bold":true,"color":"gold","italic":false,"text":"Burning Obsidian"},count=10] run clear @s blaze_rod[custom_model_data={strings:["burning_obsidian"]},custom_name={"bold":true,"color":"gold","italic":false,"text":"Burning Obsidian"}] 10
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 8 run function redstoneworld:redbytes/give_redbyte {count:100}

# --- 4/6: ERINNERUNG ---
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 5..7 run tellraw @s ["",{"text":"[Ambro]: ","bold":true,"color":"gold"},{"text":"4/6 ","bold":true,"color":"dark_green"},{"text":"Hast du die 10 Burning Obsidian schon in der Mine gefunden? Ohne die Hitze kann ich hier nichts hämmern!"}]
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 5..7 run scoreboard players set @s task_forge 6

# --- 6/6: ABSCHLUSS ---
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 9.. run tellraw @s ["",{"text":"[Ambro]: ","bold":true,"color":"gold"},{"text":"6/6 ","bold":true,"color":"dark_green"},{"text":"Dank dir brennt der Ofen wieder. Komm mal wieder vorbei!"}]
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 9 run scoreboard players add @s completed_quests_count 1
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 9 run advancement grant @s only redstoneworld:redstoneworld/task/forge/compleated
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 9 run function redstoneworld:tasks/viliger/task_viliger/show_completed
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 9.. run scoreboard players set @s task_forge 9

# --- LOGIK: SCORE ERHÖHEN & INTERACTION RESET ---
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] on target at @s run execute if score @s task_forge matches 0.. run scoreboard players add @s task_forge 1
execute as @e[type=minecraft:interaction,tag=rw_task_forge_interaction] run data remove entity @s interaction