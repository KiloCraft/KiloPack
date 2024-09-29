attribute @s minecraft:jump_strength modifier add kilocraft:in_portal -1024 add_value
attribute @s minecraft:movement_speed modifier add kilocraft:in_portal -1024 add_value

# Use the dummy marker to change the source to an entity different from the player being teleported (to remove the wait time)
execute at @s as 3e7a967b-05d5-4398-9dd2-95687a3a4b16 run rtp @p
tag @s add kilocraft_in_portal