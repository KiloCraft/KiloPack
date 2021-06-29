##Check for the temp item
execute store result score @s kecrate_entry5 run clear @s stone_button{kecrate.entry:5b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate_entry5=1..}] netherite_ingot

#Tellraw Message
tellraw @s[scores={kecrate_entry5=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"1 Netherite Ingot","color":"aqua","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate.entry:5b}
