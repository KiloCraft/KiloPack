execute as @e[tag=kecrate_particle] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[tag=kecrate_particle] at @s rotated as @s run particle minecraft:portal ^ ^ ^1 0.001 0.001 0.001 0 3 force @a[distance=..4]
execute as @e[tag=kecrate_particle] at @s rotated as @s run particle minecraft:portal ^ ^ ^-1 0.001 0.001 0.001 0 3 force @a[distance=..4]
# execute as @e[tag=kecrate_particle] at @s rotated as @s run particle minecraft:portal ^1 ^ ^ 0.001 0.001 0.001 0 3 force @a
# execute as @e[tag=kecrate_particle] at @s rotated as @s run particle minecraft:portal ^-1 ^ ^ 0.001 0.001 0.001 0 3 force @a
