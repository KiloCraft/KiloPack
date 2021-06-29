##Check for the temp item
execute store result score @s kecrate_entry12 run clear @s stone_button{kecrate.entry:12b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate_entry12=1..}] nautilus_shell 2

#Tellraw Message
tellraw @s[scores={kecrate_entry12=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"2 Nautilus Shells","color":"green","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate.entry:12b}
