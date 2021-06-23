#Clear the temp item, and increment to the scoreboard
execute store result score @s kecrate.entry3 run clear @s stone_button{kecrate.entry:3b}

#Provide the Reward
give @s[scores={kecrate.entry3=1..}] gold_ingot 8

#Tellraw Message
tellraw @s ["",{"text":"You obtained ","color":"yellow"},{"text":"8 Gold Ingots","color":"green","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]
