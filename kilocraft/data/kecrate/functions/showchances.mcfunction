# kill @e[tag=kecrate_displayitem]
# execute if score #kecrate_chanceid var matches 0 run summon item 720.5 86.50 -19.5 {CustomName:'{"text":"16 Iron (15%)","color":"#96EEEE"}',Item:{id:"minecraft:iron_ingot",Count:16b}}
# execute if score #kecrate_chanceid var matches 1 run summon item 720.5 86.50 -19.5 {CustomName:'{"text":"16 XP Bottles (15%)","color":"#96EEEE"}',Item:{id:"minecraft:experience_bottle",Count:16b}}
# execute if score #kecrate_chanceid var matches 2 run summon item 720.5 86.50 -19.5 {CustomName:'{"text":"8 Gold (15%)","color":"#96EEEE"}',Item:{id:"minecraft:gold_ingot",Count:8b}}
# execute if score #kecrate_chanceid var matches 3 run summon item 720.5 86.50 -19.5 {CustomName:'{"text":"1 Diamond (10%)","color":"#96EEEE"}',Item:{id:"minecraft:diamond",Count:1b}}
# execute if score #kecrate_chanceid var matches 4 run summon item 720.5 86.50 -19.5 {CustomName:'{"text":"4 Emerald (10%)","color":"#96EEEE"}',Item:{id:"minecraft:emerald",Count:4b}}
# execute if score #kecrate_chanceid var matches 5 run summon item 720.5 86.50 -19.5 {CustomName:'{"text":"16 Steak (10%)","color":"#96EEEE"}',Item:{id:"minecraft:cooked_beef",Count:16b}}
# execute if score #kecrate_chanceid var matches 6 run summon item 720.5 86.50 -19.5 {CustomName:'{"text":"1 Totem (5%)","color":"#96EEEE"}',Item:{id:"minecraft:totem_of_undying",Count:1b}}
# execute if score #kecrate_chanceid var matches 7 run summon item 720.5 86.50 -19.5 {CustomName:'{"text":"2 Nautilius Shells (5%)","color":"#96EEEE"}',Item:{id:"minecraft:nautilus_shell",Count:2b}}
# execute if score #kecrate_chanceid var matches 8 run summon item 720.5 86.50 -19.5 {CustomName:'{"text":"1 Wither Skull (3%)","color":"#96EEEE"}',Item:{id:"minecraft:wither_skeleton_skull",Count:1b}}
# execute if score #kecrate_chanceid var matches 9 run summon item 720.5 86.50 -19.5 {CustomName:'{"text":"1 Netherite Ingot (3%)","color":"#96EEEE"}',Item:{id:"minecraft:netherite_ingot",Count:1b}}
# execute if score #kecrate_chanceid var matches 10 run summon item 720.5 86.50 -19.5 {CustomName:'{"text":"16 Emeralds (2%)","color":"#96EEEE"}',Item:{id:"minecraft:emerald",Count:16b}}
# execute if score #kecrate_chanceid var matches 11 run summon item 720.5 86.50 -19.5 {CustomName:'{"text":"32 Gold (2%)","color":"#96EEEE"}',Item:{id:"minecraft:gold_ingot",Count:32b}}
# execute if score #kecrate_chanceid var matches 12 run summon item 720.5 86.50 -19.5 {CustomName:'{"text":"8 Diamonds (2%)","color":"#96EEEE"}',Item:{id:"minecraft:diamond",Count:8b}}
# execute if score #kecrate_chanceid var matches 13 run summon item 720.5 86.50 -19.5 {CustomName:'{"text":"1 Elytra (2%)","color":"#96EEEE"}',Item:{id:"minecraft:elytra",Count:1b}}
# execute if score #kecrate_chanceid var matches 14 run summon item 720.5 86.50 -19.5 {CustomName:'{"text":"1 Trident (1%)","color":"#96EEEE"}',Item:{id:"minecraft:trident",Count:1b}}

execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid var matches 0 run data merge entity @s {CustomName:'{"text":"16 Iron (15%)","color":"#96EEEE"}',Item:{id:"minecraft:iron_ingot",Count:16b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid var matches 1 run data merge entity @s {CustomName:'{"text":"16 XP Bottles (15%)","color":"#96EEEE"}',Item:{id:"minecraft:experience_bottle",Count:16b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid var matches 2 run data merge entity @s {CustomName:'{"text":"8 Gold (15%)","color":"#96EEEE"}',Item:{id:"minecraft:gold_ingot",Count:8b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid var matches 3 run data merge entity @s {CustomName:'{"text":"1 Diamond (10%)","color":"#96EEEE"}',Item:{id:"minecraft:diamond",Count:1b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid var matches 4 run data merge entity @s {CustomName:'{"text":"4 Emerald (10%)","color":"#96EEEE"}',Item:{id:"minecraft:emerald",Count:4b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid var matches 5 run data merge entity @s {CustomName:'{"text":"16 Steak (10%)","color":"#96EEEE"}',Item:{id:"minecraft:cooked_beef",Count:16b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid var matches 6 run data merge entity @s {CustomName:'{"text":"1 Totem (5%)","color":"#96EEEE"}',Item:{id:"minecraft:totem_of_undying",Count:1b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid var matches 7 run data merge entity @s {CustomName:'{"text":"2 Nautilius Shells (5%)","color":"#96EEEE"}',Item:{id:"minecraft:nautilus_shell",Count:2b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid var matches 8 run data merge entity @s {CustomName:'{"text":"1 Wither Skull (3%)","color":"#96EEEE"}',Item:{id:"minecraft:wither_skeleton_skull",Count:1b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid var matches 9 run data merge entity @s {CustomName:'{"text":"1 Netherite Ingot (3%)","color":"#96EEEE"}',Item:{id:"minecraft:netherite_ingot",Count:1b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid var matches 10 run data merge entity @s {CustomName:'{"text":"16 Emeralds (2%)","color":"#96EEEE"}',Item:{id:"minecraft:emerald",Count:16b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid var matches 11 run data merge entity @s {CustomName:'{"text":"32 Gold (2%)","color":"#96EEEE"}',Item:{id:"minecraft:gold_ingot",Count:32b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid var matches 12 run data merge entity @s {CustomName:'{"text":"8 Diamonds (2%)","color":"#96EEEE"}',Item:{id:"minecraft:diamond",Count:8b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid var matches 13 run data merge entity @s {CustomName:'{"text":"1 Elytra (2%)","color":"#96EEEE"}',Item:{id:"minecraft:elytra",Count:1b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid var matches 14 run data merge entity @s {CustomName:'{"text":"1 Trident (1%)","color":"#96EEEE"}',Item:{id:"minecraft:trident",Count:1b}}
execute at @e[tag=kecrate_displayitem] run particle minecraft:enchant ~ ~0.2 ~ 0.2 0.2 0.2 0 10 force @a

scoreboard players add #kecrate_chanceid var 1

execute if score #kecrate_chanceid var matches 5 run scoreboard players set #kecrate_chanceid var 0

schedule function kecrate:showchances 30t replace
