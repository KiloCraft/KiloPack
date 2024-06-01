# Portal logic
particle minecraft:reverse_portal 143.0 90 126 0.1 2.5 1.5 0 10 normal @a
execute as @a[x=142,y=87,z=124,dx=0,dy=7,dz=4] run tag @s add kilocraft_in_portal_tmp
execute as @a[tag=!kilocraft_in_portal_tmp,tag=kilocraft_in_portal] run function kilocraft:util/portal/leave
tag @a[tag=!kilocraft_in_portal_tmp,tag=kilocraft_in_portal] remove kilocraft_in_portal
execute as @a[tag=kilocraft_in_portal_tmp,tag=!kilocraft_in_portal] at @s run function kilocraft:util/portal/enter

tag @a[tag=kilocraft_in_portal_tmp] remove kilocraft_in_portal_tmp