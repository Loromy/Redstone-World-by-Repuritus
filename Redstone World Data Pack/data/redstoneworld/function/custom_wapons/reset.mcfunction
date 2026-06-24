#Custom Weapons System - Reset/Uninstall
scoreboard objectives remove cw_wfoas
scoreboard objectives remove cw_damageDealt
scoreboard objectives remove cw_ability
scoreboard objectives remove wapon_cooldown_fire
scoreboard objectives remove wapon_cooldown_speed
scoreboard objectives remove wapon_cooldown_lightning
scoreboard objectives remove wapon_cooldown_teleport
scoreboard objectives remove wapon_cooldown_orbital_strike
scoreboard objectives remove wapon_loading_orbital_stiker
tellraw @a [{"text":"[Weapons]","color":"red"},{"text":" Custom Weapons System deaktiviert","color":"gray"}]

