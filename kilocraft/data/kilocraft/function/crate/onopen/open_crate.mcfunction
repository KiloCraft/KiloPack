
#Give the Loot
loot spawn ~ ~ ~ loot kilocraft:votes
execute as @e[type=item,sort=nearest,limit=1] store result score count ke_var run data get entity @s Item.count
tellraw @s ["",{"text":"You opened a ","color":"#96EEEE"},{"text":"Vote Crate","color":"#7AF631"},{"text":" and received ","color":"#96EEEE"},{"score":{"name":"count","objective":"ke_var"},"color":"#7AF631"}," ",{"selector":"@e[type=item,sort=nearest,limit=1]","color":"#7AF631"},{"text":"!","color":"#96EEEE"}]
data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute as @e[type=item,sort=nearest,limit=1] run data merge entity @s {PickupDelay:0}

#Play Sound
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1

#Display Particles
execute as e48b1142-8994-4226-8a4e-3cb4882b9219 at @s rotated as @s run particle minecraft:end_rod ^ ^0.3 ^ 0.5 0.001 -0.5 0.03 2

#Remove the Key
clear @s[gamemode=!creative, nbt={Inventory:[{id:"minecraft:firework_star", components:{"minecraft:custom_data":{VoteKey: 1b}}}]}] minecraft:firework_star[minecraft:custom_data={VoteKey:1b}] 1

# Give advancement
advancement grant @s only kilocraft:spawn/votecrate