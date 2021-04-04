#execute kill command and store value
execute store result score netherrack kemod_constant run kill @e[type=item,nbt={Item:{id:"minecraft:netherrack"}}]

tellraw @s [{"text":"Killed ","color":"gray"},{"score":{"name":"netherrack","objective":"kemod_constant"},"color":"red"},{"text":" netherrack items!","color":"gray"}]

#reset score
scoreboard players reset netherrack kemod_constant
