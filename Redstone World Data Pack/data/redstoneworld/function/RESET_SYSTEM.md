# Reset-System Dokumentation

## Übersicht

Das Redstone World Datapack bietet ein modulares Reset-System, mit dem du:
- **Einzelne Systeme** einzeln deaktivieren kannst
- **Das gesamte Datapack** auf einmal resetten kannst

---

## Globales Reset (Alles auf einmal)

### Befehl
```
/function redstoneworld:reset_all
```

Ruft ALLE einzelnen Reset-Funktionen der Systeme auf und entfernt komplett das Datapack.

---

## Einzelne System-Resets

Du kannst auch nur einzelne Systeme deaktivieren:

### ⏰ Time Systems
```
/function redstoneworld:time/reset              # Zeit-System
/function redstoneworld:timer/reset             # Timer-System
/function redstoneworld:clock/reset             # Uhr-System
```

### 💰 Player Systems
```
/function redstoneworld:redbytes/reset          # Redbytes
/function redstoneworld:mana/reset              # Mana
/function redstoneworld:enderchest_inventar/reset  # Enderchest
/function redstoneworld:custom_wapons/reset     # Waffen
/function redstoneworld:red_station/reset       # Red Station
```

### 🌍 World Systems
```
/function redstoneworld:gambling/reset          # Glücksspiele
/function redstoneworld:ore_spawner/reset       # Erz-Spawner
/function redstoneworld:mob_spawner/reset       # Mob-Spawner
/function redstoneworld:tasks/reset             # Aufgaben/Quests
/function redstoneworld:dialog/reset            # Dialog-System
/function redstoneworld:bank/reset              # Bank
/function redstoneworld:bunker/reset            # Bunker
/function redstoneworld:elytra/reset            # Elytra
/function redstoneworld:hotel/reset             # Hotel
/function redstoneworld:hub/reset               # Hub
/function redstoneworld:anti_gamemode_switch/reset  # Anti-Gamemode
```

### 📊 Collections
```
/function redstoneworld:collections/reset       # Collection-System
```

---

## Was wird gelöscht?

### Scoreboards
- Alle Tracking-Scoreboards (stat_*, temp_*, collections_*, etc.)
- Alle Spiel-Daten
- Alle System-Objectives

### Spieler-Daten
- Alle gespeicherten Werte
- Alle Counter und Timer
- Alle Collection-Punkte

---

## Hinweise

✓ Saubere Deinstallation - keine Rückstände  
✓ Jedes System kann einzeln gelöscht werden  
✓ Globales Reset ruft alle auf  
✓ Generierte Strukturen bleiben (müssen manuell gelöscht werden)

---

## Beispiele

**Nur Collections löschen:**
```
/function redstoneworld:collections/reset
```

**Nur Waffen und Mana löschen:**
```
/function redstoneworld:custom_wapons/reset
/function redstoneworld:mana/reset
```

**Alles auf einmal löschen:**
```
/function redstoneworld:reset_all
```

