title @s title ""
title @s times 2 18 5
title @s subtitle {"text":"You don't have a key to use!","color":"#ef3e40"}
title @s actionbar [{"text":"Do ","color":"#C7C7C7"}, {"text":"/vote ","color":"#7AF631"}, {"text":"for more info", "color":"#C7C7C7"}]
playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 0.2 1.85
execute as @e[tag=kecrate_particle] at @s rotated as @s run particle minecraft:ash ^ ^0.3 ^ 1 0.001 1 0.05 50
