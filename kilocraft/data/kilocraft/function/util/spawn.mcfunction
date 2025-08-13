# Effects at spawn
effect give @a[distance=0..] minecraft:resistance 3 4 true
effect give @a[distance=0..] minecraft:saturation 1 0 true

# Portal logic
particle minecraft:electric_spark 1013.5 153.5 1148.5 0.8 1.8 0.2 0 3 normal @a
execute as @a[x=1011,y=150,z=1148,dx=4,dy=7,dz=0] run tag @s add kilocraft_in_portal_tmp
execute as @a[tag=!kilocraft_in_portal_tmp,tag=kilocraft_in_portal] run function kilocraft:util/portal/leave
tag @a[tag=!kilocraft_in_portal_tmp,tag=kilocraft_in_portal] remove kilocraft_in_portal
execute as @a[tag=kilocraft_in_portal_tmp,tag=!kilocraft_in_portal] at @s run function kilocraft:util/portal/enter

tag @a[tag=kilocraft_in_portal_tmp] remove kilocraft_in_portal_tmp

# Void / Parkour logic
execute as @a[x=1012,y=149,z=1168,dx=2,dy=1,dz=2] run scoreboard players reset @s parkour
execute as @a[x=1096,y=172,z=1059,dx=2,dy=1,dz=2] run scoreboard players reset @s parkour
execute as @a[x=1025,y=152,z=1174,dx=0,dy=1,dz=0] run scoreboard players reset @s parkour

execute as @a[x=1028,y=153,z=1176,dx=0,dy=1,dz=0] run scoreboard players set @s parkour 1

execute as @a[x=1085,y=175,z=1133,dx=2,dy=1,dz=2] run scoreboard players set @s parkour 3


execute as @a[distance=0..] at @s if entity @s[y=140,dy=-2147483647] if score @s parkour matches 1..1 run tp @s 1025.5 152 1174.5
execute as @a[distance=0..] at @s if entity @s[y=155,dy=-2147483647] if score @s parkour matches 3..3 run tp @s 1086.5 175 1134.5

execute as @a[distance=0..] at @s if entity @s[y=140,dy=-2147483647] at @s run effect give @s minecraft:levitation 1 13 true

execute positioned 1013.5 150 1169.5 as @a[distance=250..] at @s run tp @s 1013.5 150 1169.5 -180 0