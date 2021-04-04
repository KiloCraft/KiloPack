effect clear @s minecraft:night_vision 
tellraw @s ["",{"text":"Night Vision toggled ","color":"gray"},{"text":"OFF","bold":true,"color":"red"}]
execute at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~
tag @s add nv

scoreboard players set @s kemod_nv 0
