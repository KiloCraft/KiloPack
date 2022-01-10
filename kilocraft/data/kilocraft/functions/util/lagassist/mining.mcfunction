#execute kill command and store value
execute store result score #stone ke_var run kill @e[type=item,nbt={Item:{id:"minecraft:stone"}}]
execute store result score #cobblestone ke_var run kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone"}}]
execute store result score #andesite ke_var run kill @e[type=item,nbt={Item:{id:"minecraft:andesite"}}]
execute store result score #granite ke_var run kill @e[type=item,nbt={Item:{id:"minecraft:granite"}}]
execute store result score #diorite ke_var run kill @e[type=item,nbt={Item:{id:"minecraft:diorite"}}]
execute store result score #dirt ke_var run kill @e[type=item,nbt={Item:{id:"minecraft:dirt"}}]
execute store result score #gravel ke_var run kill @e[type=item,nbt={Item:{id:"minecraft:gravel"}}]
execute store result score #deepslate ke_var run kill @e[type=item,nbt={Item:{id:"minecraft:deepslate"}}]
execute store result score #cobbled_deepslate ke_var run kill @e[type=item,nbt={Item:{id:"minecraft:cobbled_deepslate"}}]

scoreboard players operation #mining ke_var += #stone ke_var
scoreboard players operation #mining ke_var += #cobblestone ke_var
scoreboard players operation #mining ke_var += #andesite ke_var
scoreboard players operation #mining ke_var += #granite ke_var
scoreboard players operation #mining ke_var += #diorite ke_var
scoreboard players operation #mining ke_var += #dirt ke_var
scoreboard players operation #mining ke_var += #gravel ke_var
scoreboard players operation #mining ke_var += #deepslate ke_var
scoreboard players operation #mining ke_var += #cobbled_deepslate ke_var

tellraw @s [{"text":"Killed ","color":"gray"},{"score":{"name":"#mining","objective":"ke_var"},"color":"red"},{"text":" mining items!","color":"gray"}]

#reset score
scoreboard players reset #stone ke_var
scoreboard players reset #cobblestone ke_var
scoreboard players reset #andesite ke_var
scoreboard players reset #granite ke_var
scoreboard players reset #diorite ke_var
scoreboard players reset #dirt ke_var
scoreboard players reset #gravel ke_var
scoreboard players reset #mining ke_var
scoreboard players reset #deepslate ke_var
scoreboard players reset #cobbled_deepslate ke_var
