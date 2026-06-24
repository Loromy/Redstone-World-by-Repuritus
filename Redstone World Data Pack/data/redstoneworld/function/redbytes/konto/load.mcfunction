# ========================================================
# REALS KONTOSYSTEM (Haupt-Scoreboards)
# ========================================================

# Das Hauptkonto (0 bis 999.999.999)
scoreboard objectives add Redbytes dummy

# Das Milliarden-Konto (1 = 1.000.000.000)
scoreboard objectives add Redbytes_2 dummy

# Der Auszahlungsbetrag (Wird für die Macro-Rekursion benötigt)
scoreboard objectives add Redbytes_auszahlen_amount dummy


# ========================================================
# TEMPORÄRER ARBEITSSPEICHER (Rechen-Scoreboards)
# ========================================================

# Zwischenspeicher für den aktuellen Wunschbetrag
scoreboard objectives add rb_temp_eingabe dummy

# Sicherheitskopie von Redbytes während der Berechnung
scoreboard objectives add rb_temp_1 dummy

# Sicherheitskopie von Redbytes_2 während der Berechnung
scoreboard objectives add rb_temp_2 dummy
