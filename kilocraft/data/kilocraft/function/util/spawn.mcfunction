# Effects at spawn
effect give @a[distance=0..] minecraft:resistance 3 4 true
effect give @a[distance=0..] minecraft:saturation 1 0 true

# Portal logic
particle minecraft:reverse_portal 218.0 112 -251.0 0.1 3 2 0 10 normal @a
execute as @a[x=218,y=108,z=-254,dx=0,dy=8,dz=6] run tag @s add kilocraft_in_portal_tmp
execute as @a[tag=!kilocraft_in_portal_tmp,tag=kilocraft_in_portal] run function kilocraft:util/portal/leave
tag @a[tag=!kilocraft_in_portal_tmp,tag=kilocraft_in_portal] remove kilocraft_in_portal
execute as @a[tag=kilocraft_in_portal_tmp,tag=!kilocraft_in_portal] at @s run function kilocraft:util/portal/enter

tag @a[tag=kilocraft_in_portal_tmp] remove kilocraft_in_portal_tmp