##Check for the temp item
execute store result score @s kecrate_entry8 run clear @s stone_button{kecrate.entry:8b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate_entry8=1..}] elytra 1

#Tellraw Message
tellraw @s[scores={kecrate_entry8=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"1 Elytra","color":"aqua","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate.entry:8b}
