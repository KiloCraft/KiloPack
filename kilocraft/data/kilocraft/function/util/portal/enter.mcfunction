attribute @s minecraft:jump_strength modifier add kilocraft:in_portal -1024 add_value
attribute @s minecraft:movement_speed modifier add kilocraft:in_portal -1024 add_value

execute store result score rtp ke_var run rtp

# If rtp failed, try rtpback
execute if score rtp ke_var matches ..0 store result score rtpback ke_var run rtpback

# If rtp and rtpback failed, teleport to spawn
execute if score rtp ke_var matches ..0 if score rtpback ke_var matches ..0 in kilocraft:mighty_highlands run tp @s 1013.5 150 1169.5 -180 0
tag @s add kilocraft_in_portal