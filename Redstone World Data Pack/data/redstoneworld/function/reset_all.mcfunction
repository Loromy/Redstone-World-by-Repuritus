#═══════════════════════════════════════════════════════════════════
# GLOBALE DATAPACK RESET-FUNKTION
# Ruft alle einzelnen Reset-Funktionen auf
#═══════════════════════════════════════════════════════════════════

tellraw @a [{"text":"\n","color":"white"}]
tellraw @a [{"text":"╔═══════════════════════════════════════╗","color":"red"}]
tellraw @a [{"text":"║  DATAPACK WIRD DEINSTALLIERT...     ║","color":"red"}]
tellraw @a [{"text":"╚═══════════════════════════════════════╝","color":"red"}]
tellraw @a [{"text":"\n","color":"white"}]

#Alle einzelnen System-Reset-Funktionen aufrufen
function redstoneworld:time/reset
function redstoneworld:timer/reset
function redstoneworld:clock/reset
function redstoneworld:redbytes/reset
function redstoneworld:mana/reset
function redstoneworld:enderchest_inventar/reset
function redstoneworld:gambling/reset
function redstoneworld:adventur_system/reset
function redstoneworld:custom_wapons/reset
function redstoneworld:red_station/reset
function redstoneworld:dialog/reset
function redstoneworld:bank/reset
function redstoneworld:bunker/reset
function redstoneworld:elytra/reset
function redstoneworld:hotel/reset
function redstoneworld:hub/reset
function redstoneworld:anti_gamemode_switch/reset


#═══════════════════════════════════════════════════════════════════

tellraw @a [{"text":"\n","color":"white"}]
tellraw @a [{"text":"╔═══════════════════════════════════════╗","color":"green"}]
tellraw @a [{"text":"║  DATAPACK ERFOLGREICH DEINSTALLIERT ║","color":"green"}]
tellraw @a [{"text":"║  Alle Systeme wurden gelöscht       ║","color":"green"}]
tellraw @a [{"text":"╚═══════════════════════════════════════╝","color":"green"}]
tellraw @a [{"text":"\n","color":"white"}]

