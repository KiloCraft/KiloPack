#Clear the temp item, and increment to the scoreboard
execute store result score @s kecrate.entry4 run clear @s stone_button{kecrate.entry:4b}

#Provide the Reward
give @s[scores={kecrate.entry4=1..}] emerald 4

#Tellraw Message
tellraw @s ["",{"text":"You obtained ","color":"yellow"},{"text":"4 Emeralds","color":"green","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]
