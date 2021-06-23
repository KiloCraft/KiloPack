#Clear the temp item, and increment to the scoreboard
execute store result score @s kecrate.entry2 run clear @s stone_button{kecrate.entry:2b}

#Provide the Reward
give @s[scores={kecrate.entry2=1..}] diamond 1

#Tellraw Message
tellraw @s ["",{"text":"You obtained ","color":"yellow"},{"text":"1 Diamond","color":"green","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]
