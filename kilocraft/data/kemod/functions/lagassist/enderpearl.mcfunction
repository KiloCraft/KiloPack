execute store result score pearl kemod_constant run kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}}]

tellraw @s [{"text":"Killed ","color":"gray"},{"score":{"name":"pearl","objective":"kemod_constant"},"color":"red"},{"text":" ender pearl items!","color":"gray"}]

#reset score
scoreboard players reset pearl kemod_constant
