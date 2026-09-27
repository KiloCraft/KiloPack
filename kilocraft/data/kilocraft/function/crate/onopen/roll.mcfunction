tag @e[type=item] add kecrate_existing
loot spawn ~ ~ ~ loot kilocraft:votes
tag @e[type=item,tag=!kecrate_existing] add kecrate_reward
execute as @e[type=item,tag=kecrate_reward,tag=!kecrate_existing] run data modify entity @s Owner set from entity @a[tag=kecrate_opener,limit=1] UUID
execute as @e[type=item,tag=kecrate_reward,tag=!kecrate_existing] run data merge entity @s {PickupDelay:0}
tag @e[type=item,tag=kecrate_existing] remove kecrate_existing
clear @s[gamemode=!creative] minecraft:firework_star[minecraft:custom_data={VoteKey:1b}] 1
scoreboard players remove @s votecrate 1
execute if score @s votecrate matches 1.. run function kilocraft:crate/onopen/roll
