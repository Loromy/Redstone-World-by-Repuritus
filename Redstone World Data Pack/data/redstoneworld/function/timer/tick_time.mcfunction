scoreboard players add clock_sec timer_data 1
execute if score clock_sec timer_data matches 20 run function redstoneworld:timer/per_sec
execute if score clock_sec timer_data matches 20.. run scoreboard players set clock_sec timer_data 0
scoreboard players add wave timer_data 1
execute if score wave timer_data matches 22.. run scoreboard players set wave timer_data 1
execute if entity @a[tag=show_timer] run function redstoneworld:timer/playtime_d_h_m_s/show_play_time
