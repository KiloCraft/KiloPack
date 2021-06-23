##Check for the temp item
execute store result score @s kecrate.entry4 run clear @s stone_button{kecrate.entry:4b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate.entry4=1..}] emerald 4

#Tellraw Message
tellraw @s[scores={kecrate.entry4=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"4 Emeralds","color":"green","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate.entry:4b}
