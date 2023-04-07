effect give @a[distance=0..] minecraft:resistance 3 4 true
# cave portal
particle minecraft:reverse_portal -30.5 29 -262 1.5 1.5 0.1 0 30 normal @a
execute as @a[x=-33,y=27,z=-262,dx=7,dy=7,dz=0] at @s run function kilocraft:util/wilderness
# temple portal
execute as @a[x=72,y=23,z=-80,dx=0,dy=4,dz=4] at @s run function kilocraft:util/wilderness
execute as @a[distance=0..] run function kilocraft:util/jnr