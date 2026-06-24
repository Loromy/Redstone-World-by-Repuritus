# ========================================================
# HAUPTFUNKTION: AUSZAHLEN (MIT SCHECK-SYSTEM GEGEN LAGS)
# Pfad: data/redstoneworld/function/redbytes/konto/auszahlen.mcfunction
# ========================================================

# 1. Den eingegebenen Betrag im Scoreboard speichern
$scoreboard players set @s Redbytes_auszahlen_amount $(amount)

# Wir kopieren den Wert in den Arbeitsspeicher für die Berechnungen
scoreboard players operation @s rb_temp_eingabe = @s Redbytes_auszahlen_amount

# Aktuelle Kontostände in den Arbeitsspeicher laden
scoreboard players operation @s rb_temp_1 = @s Redbytes
scoreboard players operation @s rb_temp_2 = @s Redbytes_2


# ========================================================
# MILLIARDEN-LOGIK: VORAB-PRÜFUNG & WECHSELN
# ========================================================
execute if score @s rb_temp_eingabe > @s rb_temp_1 if score @s Redbytes_2 matches 1.. run scoreboard players remove @s Redbytes_2 1
execute if score @s rb_temp_eingabe > @s rb_temp_1 if score @s rb_temp_2 matches 1.. run scoreboard players add @s Redbytes 1000000000

# Arbeitsspeicher nach dem eventuellen Wechseln aktualisieren
scoreboard players operation @s rb_temp_1 = @s Redbytes

# Wenn danach IMMER NOCH zu wenig Geld da ist -> Abbrechen!
execute if score @s rb_temp_eingabe > @s rb_temp_1 run tellraw @s {"text":"Zu wenig Geld auf dem Konto!","color":"red"}
execute if score @s rb_temp_eingabe > @s rb_temp_1 run return 0

# Geld wird jetzt sicher vom echten Hauptkonto abgezogen
scoreboard players operation @s Redbytes -= @s rb_temp_eingabe


# ========================================================
# SCHECK-WEICHE: Ab 10.000 Redbytes gibt es einen Scheck!
# ========================================================
# Wenn der Betrag 10.000 oder höher ist, rufen wir die Scheck-Funktion auf und beenden diese Datei sofort (kein Lag!).
execute if score @s rb_temp_eingabe matches 10000.. run function redstoneworld:redbytes/konto/give_scheck
execute if score @s rb_temp_eingabe matches 10000.. run return 1


# ========================================================
# NORMALE AUSGABE (NUR FÜR KLEINE BETRÄGE UNTER 10.000)
# ========================================================

# Fixes 64er Objekt im Speicher vorbereiten
data modify storage redstoneworld:ram stack_64 set value {count:64}

# --- STUFE 4: REDGIGA BLOCK (Wert: 1000) ---
scoreboard players operation @s rb_temp_1 = @s rb_temp_eingabe
scoreboard players set @s rb_temp_2 1000
scoreboard players operation @s rb_temp_1 /= @s rb_temp_2
scoreboard players operation @s rb_temp_eingabe %= @s rb_temp_2

execute if score @s rb_temp_1 matches 64.. run function redstoneworld:redbytes/konto/loop_redgiga_block
execute store result storage redstoneworld:ram current.count int 1 run scoreboard players get @s rb_temp_1
execute if score @s rb_temp_1 matches 1..63 run function redstoneworld:redbytes/give_redgiga_block with storage redstoneworld:ram

# --- STUFE 3: REDGIGA (Wert: 100) ---
scoreboard players operation @s rb_temp_1 = @s rb_temp_eingabe
scoreboard players set @s rb_temp_2 100
scoreboard players operation @s rb_temp_1 /= @s rb_temp_2
scoreboard players operation @s rb_temp_eingabe %= @s rb_temp_2

execute if score @s rb_temp_1 matches 64.. run function redstoneworld:redbytes/konto/loop_redgiga
execute store result storage redstoneworld:ram current.count int 1 run scoreboard players get @s rb_temp_1
execute if score @s rb_temp_1 matches 1..63 run function redstoneworld:redbytes/give_redgiga with storage redstoneworld:ram

# --- STUFE 2: REDBYTE (Wert: 10) ---
scoreboard players operation @s rb_temp_1 = @s rb_temp_eingabe
scoreboard players set @s rb_temp_2 10
scoreboard players operation @s rb_temp_1 /= @s rb_temp_2
scoreboard players operation @s rb_temp_eingabe %= @s rb_temp_2

execute if score @s rb_temp_1 matches 64.. run function redstoneworld:redbytes/konto/loop_redbyte
execute store result storage redstoneworld:ram current.count int 1 run scoreboard players get @s rb_temp_1
execute if score @s rb_temp_1 matches 1..63 run function redstoneworld:redbytes/give_redbyte with storage redstoneworld:ram

# --- STUFE 1: REDBIT (Restwert: 1) ---
execute store result storage redstoneworld:ram current.count int 1 run scoreboard players get @s rb_temp_eingabe
execute if score @s rb_temp_eingabe matches 1..9 run function redstoneworld:redbytes/give_redbit with storage redstoneworld:ram

# Speicher säubern
data remove storage redstoneworld:ram stack_64
data remove storage redstoneworld:ram current