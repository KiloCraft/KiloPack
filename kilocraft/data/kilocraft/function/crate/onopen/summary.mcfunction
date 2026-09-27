execute as @e[type=item,tag=kecrate_reward,limit=1] store result score #count kecrate run data get entity @s Item.count
tellraw @s ["",{"text":"- ","color":"#96EEEE"},{"score":{"name":"#count","objective":"kecrate"},"color":"#7AF631"}," ",{"selector":"@e[type=item,tag=kecrate_reward,limit=1]","color":"#7AF631"}]
tag @e[type=item,tag=kecrate_reward,limit=1] remove kecrate_reward
execute if entity @e[type=item,tag=kecrate_reward] run function kilocraft:crate/onopen/summary
