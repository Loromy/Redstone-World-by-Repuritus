# ========================================================
# SCHECK-AUSGABE (HOLT DEN WERT AUS DEM SCOREBOARD)
# Pfad: data/redstoneworld/function/redbytes/konto/give_scheck.mcfunction
# ========================================================

# Wir holen uns den genauen Abhebungsbetrag aus dem Scoreboard und schreiben ihn in den NBT-Speicher
execute store result storage redstoneworld:ram scheck.wert int 1 run scoreboard players get @s Redbytes_auszahlen_amount

# Wir rufen die Makro-Funktion auf und übergeben ihr den gespeicherten Wert
function redstoneworld:redbytes/konto/spawn_scheck_item with storage redstoneworld:ram scheck