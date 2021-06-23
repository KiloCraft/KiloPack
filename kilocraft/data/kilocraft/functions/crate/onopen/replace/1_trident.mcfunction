##Check for the temp item
execute store result score @s kecrate.entry9 run clear @s stone_button{kecrate.entry:9b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate.entry9=1..}] trident

#Tellraw Message
tellraw @s[scores={kecrate.entry=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"1 Trident","color":"aqua","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate.entry:9b}
