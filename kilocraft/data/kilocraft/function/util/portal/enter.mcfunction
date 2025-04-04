attribute @s minecraft:jump_strength modifier add kilocraft:in_portal -1024 add_value
attribute @s minecraft:movement_speed modifier add kilocraft:in_portal -1024 add_value

# Use the dummy marker to change the source to an entity different from the player being teleported (to remove the wait time)

execute store result score rtp ke_var run rtp

# If rtp failed, try rtpback
execute if score rtp ke_var matches ..0 store result score rtpback ke_var run rtpback

# If rtp and rtpback failed, teleport to spawn
execute if score rtp ke_var matches ..0 if score rtpback ke_var matches ..0 in kilocraft:mighty_highlands run tp @s 245.5 109 -249.5 90 0

tag @s add kilocraft_in_portal