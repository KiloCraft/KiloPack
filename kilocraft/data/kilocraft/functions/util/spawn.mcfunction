effect give @a[distance=0..] minecraft:resistance 3 4 true
effect give @a[distance=0..] minecraft:saturation 1 0 true
# spawn portal
particle minecraft:dust 0 1 0 1 143.0 90 126 0.1 3.5 1.5 0 2 normal @a
particle minecraft:dust 0.4 1 0.4 1 143.0 90 126 0.1 3.5 1.5 0 3 normal @a
execute as @a[x=142,y=87,z=124,dx=0,dy=9,dz=4] at @s run function kilocraft:util/wilderness