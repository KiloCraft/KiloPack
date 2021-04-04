#execute kill command and store value
execute store result score stone kemod_constant run kill @e[type=item,nbt={Item:{id:"minecraft:stone"}}]
execute store result score cobblestone kemod_constant run kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone"}}]
execute store result score andesite kemod_constant run kill @e[type=item,nbt={Item:{id:"minecraft:andesite"}}]
execute store result score granite kemod_constant run kill @e[type=item,nbt={Item:{id:"minecraft:granite"}}]
execute store result score diorite kemod_constant run kill @e[type=item,nbt={Item:{id:"minecraft:diorite"}}]
execute store result score dirt kemod_constant run kill @e[type=item,nbt={Item:{id:"minecraft:dirt"}}]
execute store result score gravel kemod_constant run kill @e[type=item,nbt={Item:{id:"minecraft:gravel"}}]

scoreboard players operation mining kemod_constant += stone kemod_constant
scoreboard players operation mining kemod_constant += cobblestone kemod_constant
scoreboard players operation mining kemod_constant += andesite kemod_constant
scoreboard players operation mining kemod_constant += granite kemod_constant
scoreboard players operation mining kemod_constant += diorite kemod_constant
scoreboard players operation mining kemod_constant += dirt kemod_constant
scoreboard players operation mining kemod_constant += gravel kemod_constant

tellraw @s [{"text":"Killed ","color":"gray"},{"score":{"name":"mining","objective":"kemod_constant"},"color":"red"},{"text":" mining items!","color":"gray"}]

#reset score
scoreboard players reset stone kemod_constant
scoreboard players reset cobblestone kemod_constant
scoreboard players reset andesite kemod_constant
scoreboard players reset granite kemod_constant
scoreboard players reset diorite kemod_constant
scoreboard players reset dirt kemod_constant
scoreboard players reset gravel kemod_constant
scoreboard players reset mining kemod_constant
