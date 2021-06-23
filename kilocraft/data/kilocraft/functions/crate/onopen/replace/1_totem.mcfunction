##Check for the temp item
execute store result score @s kecrate.entry10 run clear @s stone_button{kecrate.entry:10b} 0

##If item succeed
#Provide the Reward
give @s[scores={kecrate.entry10=1..}] 

#Tellraw Message
tellraw @s[scores={kecrate.entry10=1..}] ["",{"text":"You obtained ","color":"yellow"},{"text":"1 Totem of Undying","color":"green","underlined":true},{"text":" from the Vote Crate","color":"yellow"}]

##Clear temp
clear @s stone_button{kecrate.entry:10b}
