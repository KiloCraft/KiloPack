execute store result score #pearl ke_var run kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}}]

tellraw @s [{"text":"Killed ","color":"gray"},{"score":{"name":"#pearl","objective":"ke_var"},"color":"red"},{"text":" ender pearl items!","color":"gray"}]

#reset score
scoreboard players reset #pearl ke_var
