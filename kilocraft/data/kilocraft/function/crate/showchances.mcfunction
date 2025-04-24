execute if score #kecrate_chanceid ke_var matches 0 run data merge entity @s {CustomName:{"text":"16 Iron Ingots (15.3%)","color":"#96EEEE"},Item:{id:"minecraft:iron_ingot",count:16b}}
execute if score #kecrate_chanceid ke_var matches 1 run data merge entity @s {CustomName:{"text":"2 Diamonds (3.8%)","color":"#96EEEE"},Item:{id:"minecraft:diamond",count:2b}}
execute if score #kecrate_chanceid ke_var matches 2 run data merge entity @s {CustomName:{"text":"8 Gold Ingots (11.5%)","color":"#96EEEE"},Item:{id:"minecraft:gold_ingot",count:8b}}
execute if score #kecrate_chanceid ke_var matches 3 run data merge entity @s {CustomName:{"text":"4 Emeralds (7.6%)","color":"#96EEEE"},Item:{id:"minecraft:emerald",count:4b}}
execute if score #kecrate_chanceid ke_var matches 4 run data merge entity @s {CustomName:{"text":"16 Steak (15.3%)","color":"#96EEEE"},Item:{id:"minecraft:cooked_beef",count:16b}}
execute if score #kecrate_chanceid ke_var matches 5 run data merge entity @s {CustomName:{"text":"6 Golden Carrots (11.5%)","color":"#96EEEE"},Item:{id:"minecraft:golden_carrot",count:6b}}
execute if score #kecrate_chanceid ke_var matches 6 run data merge entity @s {CustomName:{"text":"16 Experience Bottles (7.6%)","color":"#96EEEE"},Item:{id:"minecraft:experience_bottle",count:16b}}
execute if score #kecrate_chanceid ke_var matches 7 run data merge entity @s {CustomName:{"text":"32 Oak Logs (15.3%)","color":"#96EEEE"},Item:{id:"minecraft:oak_log",count:32b}}
execute if score #kecrate_chanceid ke_var matches 8 run data merge entity @s {CustomName:{"text":"2 Nautilus Shell (3.8%)","color":"#96EEEE"},Item:{id:"minecraft:nautilus_shell",count:2b}}
execute if score #kecrate_chanceid ke_var matches 9 run data merge entity @s {CustomName:{"text":"1 Totem of Undying (1.5%)","color":"#96EEEE"},Item:{id:"minecraft:totem_of_undying",count:1b}}
execute if score #kecrate_chanceid ke_var matches 10 run data merge entity @s {CustomName:{"text":"1 Wither Skeleton Skull (3.1%)","color":"#96EEEE"},Item:{id:"minecraft:wither_skeleton_skull",count:1b}}
execute if score #kecrate_chanceid ke_var matches 11 run data merge entity @s {CustomName:{"text":"1 Ancient Debris (3.1%)","color":"#96EEEE"},Item:{id:"minecraft:ancient_debris",count:1b}}

particle minecraft:enchant ~ ~0.2 ~ 0.2 0.2 0.2 0 10 force @a

scoreboard players add #kecrate_chanceid ke_var 1

execute if score #kecrate_chanceid ke_var matches 12.. run scoreboard players set #kecrate_chanceid ke_var 0
