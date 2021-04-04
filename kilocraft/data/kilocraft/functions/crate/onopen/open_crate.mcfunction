tellraw @s [{"text":"You have used a ","color":"#96EEEE"}, {"text":"Vote Crate Key","color":"#7AF631"}, {"text":"!","color":"#96EEEE"}]

#Give the Loot
loot give @s loot kilocraft:votes

#Play Sound
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1

#Display Particles
execute as @e[tag=kecrate_particle] at @s rotated as @s run particle minecraft:end_rod ^ ^0.3 ^ 0.5 0.001 -0.5 0.03 2

#Remove the Key
clear @s[gamemode=!creative, nbt={Inventory:[{id:"minecraft:firework_star",tag:{VoteKey:1b}}]}] minecraft:firework_star{VoteKey:1b} 1

function kilocraft:crate/shulker_animated/onopened