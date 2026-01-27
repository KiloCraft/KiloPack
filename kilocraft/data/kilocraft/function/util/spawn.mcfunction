# Effects at spawn
effect give @a[distance=0..] minecraft:resistance 3 4 true
effect give @a[distance=0..] minecraft:saturation 1 0 true

# Portal logic
particle minecraft:electric_spark 0.5 104.5 24.5 0.8 1.8 0.2 0 3 normal @a
particle minecraft:electric_spark 0.5 104.5 -23.5 0.8 1.8 0.2 0 3 normal @a
execute as @a[x=-2,y=100,z=24,dx=4,dy=8,dz=0] run tag @s add kilocraft_in_portal_tmp
execute as @a[x=-2,y=100,z=-24,dx=4,dy=8,dz=0] run tag @s add kilocraft_in_portal_tmp
execute as @a[tag=!kilocraft_in_portal_tmp,tag=kilocraft_in_portal] run function kilocraft:util/portal/leave
tag @a[tag=!kilocraft_in_portal_tmp,tag=kilocraft_in_portal] remove kilocraft_in_portal
execute as @a[tag=kilocraft_in_portal_tmp,tag=!kilocraft_in_portal] at @s run function kilocraft:util/portal/enter

tag @a[tag=kilocraft_in_portal_tmp] remove kilocraft_in_portal_tmp

execute positioned 0.5 100.00 0.5 as @a[distance=500..] at @s run tp @s 0.5 100.00 0.5 0 0
