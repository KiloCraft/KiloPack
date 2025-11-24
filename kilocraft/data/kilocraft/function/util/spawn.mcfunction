# Effects at spawn
effect give @a[distance=0..] minecraft:resistance 3 4 true
effect give @a[distance=0..] minecraft:saturation 1 0 true

# Portal logic
particle minecraft:electric_spark 9344.5 150.5 9893.5 0.8 1.8 0.2 0 3 normal @a
execute as @a[x=9342,y=146,z=9893,dx=4,dy=7,dz=0] run tag @s add kilocraft_in_portal_tmp
execute as @a[tag=!kilocraft_in_portal_tmp,tag=kilocraft_in_portal] run function kilocraft:util/portal/leave
tag @a[tag=!kilocraft_in_portal_tmp,tag=kilocraft_in_portal] remove kilocraft_in_portal
execute as @a[tag=kilocraft_in_portal_tmp,tag=!kilocraft_in_portal] at @s run function kilocraft:util/portal/enter

tag @a[tag=kilocraft_in_portal_tmp] remove kilocraft_in_portal_tmp

execute positioned 9344.5 146.00 9908.5 as @a[distance=500..] at @s run tp @s 9344.5 146.00 9908.5 180 0