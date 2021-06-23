##Check for the temp item
execute store result score @s kecrate.entry2 run clear @s stone_button{kecrate.entry:2b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate.entry2=1..}] 

#Tellraw Message
tellraw @s[scores={kecrate.entry2=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"1 Diamond","color":"green","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate.entry:2b}
