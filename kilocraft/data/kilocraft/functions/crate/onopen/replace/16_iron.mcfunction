#Clear the temp item, and increment to the scoreboard
execute store result score @s kecrate.entry1 run clear @s stone_button{kecrate.entry:1b}

#Provide the Reward
give @s[scores={kecrate.entry1=1..}] iron_ingot 16

#Tellraw Message
tellraw @s ["",{"text":"You obtained ","color":"yellow"},{"text":"16 Iron Ingots","color":"green","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]
