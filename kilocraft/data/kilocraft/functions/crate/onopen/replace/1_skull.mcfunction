##Check for the temp item
execute store result score @s kecrate_entry11 run clear @s stone_button{kecrate.entry:11b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate_entry11=1..}] wither_skeleton_skull

#Tellraw Message
tellraw @s[scores={kecrate_entry11=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"1 Wither Skull","color":"aqua","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate.entry:11b}
