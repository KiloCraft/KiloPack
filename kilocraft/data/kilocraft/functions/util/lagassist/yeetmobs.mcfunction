#Execute and store score
execute store result score zombie ke_var run kill @e[type=minecraft:zombie,name="Zombie"]
execute store result score skeleton ke_var run kill @e[type=minecraft:skeleton,name="Skeleton"]
execute store result score creeper ke_var run kill @e[type=minecraft:creeper,name="Creeper"]
execute store result score spider ke_var run kill @e[type=minecraft:spider,name="Spider"]
execute store result score enderman ke_var run kill @e[type=minecraft:enderman,name="Enderman"]
execute store result score guardian ke_var run kill @e[type=minecraft:guardian,name="Guardian"]
execute store result score bat ke_var run kill @e[type=minecraft:bat,name="Bat"]


#Add together scores to get sum
scoreboard players operation yeetmobs ke_var += zombie ke_var
scoreboard players operation yeetmobs ke_var += skeleton ke_var
scoreboard players operation yeetmobs ke_var += creeper ke_var
scoreboard players operation yeetmobs ke_var += spider ke_var
scoreboard players operation yeetmobs ke_var += enderman ke_var
scoreboard players operation yeetmobs ke_var += guardian ke_var
scoreboard players operation yeetmobs ke_var += bat ke_var


#tellraw
tellraw @s [{"text":"Killed ","color":"gray"},{"score":{"name":"yeetmobs","objective":"ke_var"},"color":"red"},{"text":" mobs!","color":"gray"}]

#reset scores
scoreboard players reset zombie ke_var
scoreboard players reset skeleton ke_var
scoreboard players reset creeper ke_var
scoreboard players reset spider ke_var
scoreboard players reset enderman ke_var
scoreboard players reset guardian ke_var
scoreboard players reset bat ke_var
