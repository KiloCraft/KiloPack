##Check for the temp item
execute store result score @s kecrate_entry13 run clear @s stone_button{kecrate.entry:13b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate_entry13=1..}] gold_ingot 32

#Tellraw Message
tellraw @s[scores={kecrate_entry13=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"32 Gold Ingots","color":"green","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate.entry:13b}
