#Execute and store score
execute store result score zombie kemod_constant run kill @e[type=minecraft:zombie,name=Zombie]
execute store result score skeleton kemod_constant run kill @e[type=minecraft:skeleton,name=Skeleton]
execute store result score creeper kemod_constant run kill @e[type=minecraft:creeper,name=Creeper]
execute store result score spider kemod_constant run kill @e[type=minecraft:spider,name=Spider]
execute store result score enderman kemod_constant run kill @e[type=minecraft:enderman,name=Enderman]
execute store result score guardian kemod_constant run kill @e[type=minecraft:guardian,name=Guardian]
execute store result score bat kemod_constant run kill @e[type=minecraft:bat,name=Bat]


#Add together scores to get sum
scoreboard players operation yeetmobs kemod_constant += zombie kemod_constant
scoreboard players operation yeetmobs kemod_constant += skeleton kemod_constant
scoreboard players operation yeetmobs kemod_constant += creeper kemod_constant
scoreboard players operation yeetmobs kemod_constant += spider kemod_constant
scoreboard players operation yeetmobs kemod_constant += enderman kemod_constant
scoreboard players operation yeetmobs kemod_constant += guardian kemod_constant
scoreboard players operation yeetmobs kemod_constant += bat kemod_constant

function kilocraft:main/util/lagassist

#tellraw
tellraw @s [{"text":"Killed ","color":"gray"},{"score":{"name":"yeetmobs","objective":"kemod_constant"},"color":"red"},{"text":" mobs!","color":"gray"}]

#reset scores
scoreboard players reset zombie kemod_constant
scoreboard players reset skeleton kemod_constant
scoreboard players reset creeper kemod_constant
scoreboard players reset spider kemod_constant
scoreboard players reset enderman kemod_constant
scoreboard players reset guardian kemod_constant
scoreboard players reset bat kemod_constant
