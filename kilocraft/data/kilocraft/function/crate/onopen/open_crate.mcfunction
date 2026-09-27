
scoreboard players reset @s kecrate
tag @e[type=item,tag=kecrate_reward] remove kecrate_reward
execute store result score @s kecrate run clear @s minecraft:firework_star[minecraft:custom_data={VoteKey:1b}] 0
execute if score @s kecrate matches 0 run return run function kilocraft:crate/onopen/error/no_key
execute if score @s votecrate matches ..-1 run scoreboard players operation @s votecrate = @s kecrate
scoreboard players operation @s kecrate = @s votecrate
tag @s add kecrate_opener
function kilocraft:crate/onopen/roll
tag @s remove kecrate_opener

execute if score @s kecrate matches 1 run tellraw @s {"text":"You received:","color":"#96EEEE"}
execute if score @s kecrate matches 2.. run tellraw @s ["",{"text":"You opened ","color":"#96EEEE"},{"score":{"name":"@s","objective":"kecrate"},"color":"#7AF631"},{"text":" Vote Crates and received:","color":"#96EEEE"}]
function kilocraft:crate/onopen/summary

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1
execute as e48b1142-8994-4226-8a4e-3cb4882b9219 at @s rotated as @s run particle minecraft:end_rod ^ ^0.3 ^ 0.5 0.001 -0.5 0.03 2
advancement grant @s only kilocraft:spawn/votecrate
