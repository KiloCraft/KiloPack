##Check for the temp item
execute store result score @s kecrate.entry7 run clear @s stone_button{kecrate.entry:7b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate.entry7=1..}] experience_bottle 16

#Tellraw Message
tellraw @s[scores={kecrate.entry7=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"16 EXP Bottles","color":"green","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate.entry:7b}
