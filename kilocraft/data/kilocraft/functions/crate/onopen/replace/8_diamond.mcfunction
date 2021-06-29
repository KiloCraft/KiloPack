##Check for the temp item
execute store result score @s kecrate_entry14 run clear @s stone_button{kecrate.entry:14b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate_entry14=1..}] diamond 8

#Tellraw Message
tellraw @s[scores={kecrate_entry14=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"8 Diamonds","color":"green","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate.entry:14b}

#fix
