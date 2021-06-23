##Check for the temp item
execute store result score @s kecrate.entry3 run clear @s stone_button{kecrate.entry:3b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate.entry3=1..}] gold_ingot 8

#Tellraw Message
tellraw @s[scores={kecrate.entry3=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"8 Gold Ingot","color":"green","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate.entry:3b}
