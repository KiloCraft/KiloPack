effect give @s minecraft:night_vision 1000000 0 true
tellraw @s ["",{"text":"Night Vision toggled ","color":"gray"},{"text":"ON","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~
tag @s add nv

scoreboard players set @s kemod_nv 1
