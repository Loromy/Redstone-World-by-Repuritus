# ========================================================
# SCHECK-ITEM SPAWNER (DYNAMISCHES MACRO)
# Pfad: data/redstoneworld/function/redbytes/konto/spawn_scheck_item.mcfunction
# ========================================================

# Das '$' am Anfang markiert diese Zeile als Makro, wodurch $(wert) live ersetzt wird
$give @p paper[custom_name={"bold":true,"color":"gold","italic":false,"text":"Redbytes check"},lore=[{"color":"dark_red","text":"worth: $(wert) \uE3E8"}]] 1

# Den temporären Speicherplatz nach der Ausgabe wieder aufräumen
data remove storage redstoneworld:ram scheck