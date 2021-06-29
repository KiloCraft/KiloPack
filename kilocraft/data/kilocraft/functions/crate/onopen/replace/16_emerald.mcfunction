##Check for the temp item
execute store result score @s kecrate_entry15 run clear @s stone_button{kecrate.entry:15b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate_entry15=1..}] emerald 16

#Tellraw Message
tellraw @s[scores={kecrate_entry15=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"16 Emeralds","color":"green","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate_entry:15b}
