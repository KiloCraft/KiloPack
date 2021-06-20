effect give @a[distance=0..] minecraft:resistance 3 4 true
particle minecraft:soul -248 31 155 0.1 2 2 0 2 normal @a
execute as @a[x=-248,y=28,z=152,dx=0,dy=5,dz=5] run scoreboard players add portal_used kestats_global 0
execute as @a[x=-248,y=28,z=152,dx=0,dy=5,dz=5] run function kilocraft:util/wilderness