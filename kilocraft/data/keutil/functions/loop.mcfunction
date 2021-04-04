execute as @e[type=item,tag=!MC-208666] run function keutil:bundle-shulker_dupe_fix
execute if score #end_open var matches 0..0 in minecraft:the_end as @a[distance=0..,name=!DrexHD] in minecraft:overworld run tp @s -133 65 6 0 0
function keutil:spawn/loop
schedule function keutil:loop 1t
