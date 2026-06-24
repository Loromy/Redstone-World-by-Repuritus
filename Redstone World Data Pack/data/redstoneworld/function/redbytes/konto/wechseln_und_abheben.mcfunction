# 1. Ziehe das aktuelle Redbytes-Konto von der Temp-Eingabe ab
scoreboard players operation @s rb_temp_eingabe -= @s Redbytes

# 2. Das bisherige Redbytes-Konto aufbrauchen (ist ja jetzt 0)
scoreboard players set @s Redbytes 0

# 3. Eine Milliarde anbrechen
scoreboard players remove @s Redbytes_2 1
scoreboard players set @s Redbytes 1000000000

# 4. Wir aktualisieren das originale Auszahl-Scoreboard mit dem verbleibenden Restbetrag
scoreboard players operation @s Redbytes_auszahlen_amount = @s rb_temp_eingabe


# ========================================================
# DIE REKURSIONS-SCHLEIFE
# ========================================================
# Da wir den neuen Betrag jetzt im Scoreboard haben, rufen wir einfach wieder 'auszahlen' auf.
# Da 'auszahlen' ein Macro ist, füttern wir es diesmal direkt aus dem Scoreboard via Speicher!
execute store result storage redstoneworld:ram amount int 1 run scoreboard players get @s Redbytes_auszahlen_amount

function redstoneworld:redbytes/konto/auszahlen with storage redstoneworld:ram