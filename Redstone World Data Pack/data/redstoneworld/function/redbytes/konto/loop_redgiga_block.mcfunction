# ========================================================
# SCHLEIFEN-FUNKTION: REDGIGA BLÖCKE IN 64er STACKS SPLITTEN
# Pfad: data/redstoneworld/function/redbytes/konto/loop_redgiga_block.mcfunction
# ========================================================

# 1. Einen perfekten, erlaubten 64er Stack ausgeben
function redstoneworld:redbytes/give_redgiga_block with storage redstoneworld:ram stack_64

# 2. 64 Stück von der To-Do-Liste abziehen
scoreboard players remove @s rb_temp_1 64

# 3. REKURSION: Wiederholen, solange der Rest immer noch 64 oder mehr beträgt
execute if score @s rb_temp_1 matches 64.. run function redstoneworld:redbytes/konto/loop_redgiga_block