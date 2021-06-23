##Check for the temp item
execute store result score @s kecrate.entry6 run clear @s stone_button{kecrate.entry:6b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate.entry6=1..}] 

#Tellraw Message
tellraw @s[scores={kecrate.entry6=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"16 Steaks","color":"green","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate.entry:6b}
