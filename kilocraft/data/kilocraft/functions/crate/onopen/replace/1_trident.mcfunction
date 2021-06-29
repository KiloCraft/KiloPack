##Check for the temp item
execute store result score @s kecrate_entry9 run clear @s stone_button{kecrate.entry:9b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate_entry9=1..}] trident

#Tellraw Message
tellraw @s[scores={kecrate_entry=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"1 Trident","color":"aqua","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate.entry:9b}
