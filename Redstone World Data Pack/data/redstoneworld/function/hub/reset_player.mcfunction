#Tag reset
tag Repuritus remove gamemode
tag Repuritus remove geheimgaenge
tag Repuritus remove no_join_tp
tag Repuritus remove OP
tag Repuritus remove Player1
tag Repuritus remove Player2
tag Repuritus remove Player3
tag Repuritus remove Player4
tag Repuritus remove Player5
tag Repuritus remove ShowMarker

scoreboard players reset @s

advancement revoke @s from redstoneworld:redstoneworld/join

tellraw @s ["",{"text":"[Redstone World Datapack]:","bold":true,"color":"dark_red"},{"text":"\nplayer resetted.\nalle tags,... wurden geresetted.","color":"dark_green"}]
