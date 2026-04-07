execute as @n[type=danse:player_statue,distance=..8] run data remove entity @s PlayerUUID
execute as @n[type=danse:player_statue,distance=..8] run data modify entity @s Player set from entity @s CustomName
advancement revoke @s only kilocraft:event/use_nametag