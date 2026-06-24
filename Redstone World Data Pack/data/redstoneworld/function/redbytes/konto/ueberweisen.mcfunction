# Betrag in den Temp-Score des Senders laden
$ scoreboard players set @s rb_temp_eingabe $(amount)

# Kontostände des Senders sichern
scoreboard players operation @s rb_temp_1 = @s Redbytes
scoreboard players operation @s rb_temp_2 = @s Redbytes_2

# ========================================================
# PRÜFUNG: Hat der Sender überhaupt genug Geld?
# ========================================================
execute if score @s rb_temp_eingabe > @s rb_temp_1 if score @s rb_temp_2 matches ..0 run tellraw @s {"text":"Überweisung fehlgeschlagen: Zu wenig Geld!","color":"red"}

# Wenn er wechseln muss, rufen wir die Wechsel-Logik auf
# HIER ANGEPASST: Neuer Pfad zur Wechsel-Hilfsfunktion
execute if score @s rb_temp_eingabe > @s rb_temp_1 if score @s rb_temp_2 matches 1.. run function redstoneworld:redbytes/konto/wechseln_und_abheben

# ========================================================
# GELD TRANSFERIEREN
# ========================================================
# 1. Geld beim Sender abziehen
execute if score @s Redbytes >= @s rb_temp_eingabe run scoreboard players operation @s Redbytes -= @s rb_temp_eingabe

# 2. Geld beim Empfänger hinzufügen
$ execute if score @s Redbytes >= @s rb_temp_eingabe run scoreboard players operation $(target) Redbytes += @s rb_temp_eingabe

# ========================================================
# ÜBERLAUFSCHUTZ BEIM EMPFÄNGER
# ========================================================
$ execute as $(target) if score @s Redbytes matches 1000000000.. run scoreboard players add @s Redbytes_2 1
$ execute as $(target) if score @s Redbytes matches 1000000000.. run scoreboard players remove @s Redbytes 1000000000

# Bestätigungen senden
$ tellraw @s [{"text":"Erfolgreich ","color":"green"},{"text":"$(amount)","color":"gold"},{"text":" Redbytes an ","color":"green"},{"text":"$(target)","color":"yellow"},{"text":" überwiesen!","color":"green"}]
$ tellraw $(target) [{"text":"Du hast ","color":"green"},{"text":"$(amount)","color":"gold"},{"text":" Redbytes von ","color":"green"},{"text":"@s","color":"yellow"},{"text":" erhalten!","color":"green"}]