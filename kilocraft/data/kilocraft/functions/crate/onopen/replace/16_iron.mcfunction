##Check for the temp item
execute store result score @s kecrate.entry1 run clear @s stone_button{kecrate.entry:1b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate.entry1=1..}] iron_ingot 16

#Tellraw Message
tellraw @s[scores={kecrate.entry1=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"16 Iron Ingots","color":"green","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate.entry:1b}
