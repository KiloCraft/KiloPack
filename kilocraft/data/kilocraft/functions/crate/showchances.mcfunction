execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid ke_var matches 0 run data merge entity @s {CustomName:'{"text":"16 Iron Ingots (15.3%)","color":"#96EEEE"}',Item:{id:"minecraft:iron_ingot",Count:16b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid ke_var matches 1 run data merge entity @s {CustomName:'{"text":"2 Diamonds (3.8%)","color":"#96EEEE"}',Item:{id:"minecraft:diamond",Count:2b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid ke_var matches 2 run data merge entity @s {CustomName:'{"text":"8 Gold Ingots (11.5%)","color":"#96EEEE"}',Item:{id:"minecraft:gold_ingot",Count:8b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid ke_var matches 3 run data merge entity @s {CustomName:'{"text":"4 Emeralds (7.6%)","color":"#96EEEE"}',Item:{id:"minecraft:emerald",Count:4b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid ke_var matches 4 run data merge entity @s {CustomName:'{"text":"16 Steak (15.3%)","color":"#96EEEE"}',Item:{id:"minecraft:cooked_beef",Count:16b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid ke_var matches 5 run data merge entity @s {CustomName:'{"text":"6 Golden Carrots (11.5%)","color":"#96EEEE"}',Item:{id:"minecraft:golden_carrot",Count:6b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid ke_var matches 6 run data merge entity @s {CustomName:'{"text":"16 Experience Bottles (7.6%)","color":"#96EEEE"}',Item:{id:"minecraft:experience_bottle",Count:16b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid ke_var matches 7 run data merge entity @s {CustomName:'{"text":"32 Oak Logs (15.3%)","color":"#96EEEE"}',Item:{id:"minecraft:oak_log",Count:32b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid ke_var matches 8 run data merge entity @s {CustomName:'{"text":"2 Nautilus Shell (3.8%)","color":"#96EEEE"}',Item:{id:"minecraft:nautilus_shell",Count:2b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid ke_var matches 9 run data merge entity @s {CustomName:'{"text":"1 Totem of Undying (1.5%)","color":"#96EEEE"}',Item:{id:"minecraft:totem_of_undying",Count:1b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid ke_var matches 10 run data merge entity @s {CustomName:'{"text":"1 Wither Skeleton Skull (3.1%)","color":"#96EEEE"}',Item:{id:"minecraft:wither_skeleton_skull",Count:1b}}
execute as @e[tag=kecrate_displayitem] if score #kecrate_chanceid ke_var matches 11 run data merge entity @s {CustomName:'{"text":"1 Ancient Debris (3.1%)","color":"#96EEEE"}',Item:{id:"minecraft:ancient_debris",Count:1b}}

execute at @e[tag=kecrate_displayitem] run particle minecraft:enchant ~ ~0.2 ~ 0.2 0.2 0.2 0 10 force @a

scoreboard players add #kecrate_chanceid ke_var 1

execute if score #kecrate_chanceid ke_var matches 12.. run scoreboard players set #kecrate_chanceid ke_var 0

schedule function kilocraft:crate/showchances 30t replace
