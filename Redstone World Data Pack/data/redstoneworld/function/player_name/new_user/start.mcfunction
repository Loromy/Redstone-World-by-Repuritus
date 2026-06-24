scoreboard players set @s rw_player.left 0
function redstoneworld:player_name/get_name
data modify storage rw_player args set value {UUID:[I;0,0,0,0],name:"null"}
data modify storage rw_player args.UUID set from entity @s UUID
data modify storage rw_player args.name set from storage rw_player temp

function redstoneworld:player_name/new_user/append with storage rw_player args