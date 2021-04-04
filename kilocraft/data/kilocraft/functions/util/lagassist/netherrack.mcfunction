#execute kill command and store value
execute store result score #netherrack ke_var run kill @e[type=item,nbt={Item:{id:"minecraft:netherrack"}}]

tellraw @s [{"text":"Killed ","color":"gray"},{"score":{"name":"#netherrack","objective":"ke_var"},"color":"red"},{"text":" netherrack items!","color":"gray"}]

#reset score
scoreboard players reset #netherrack ke_var
