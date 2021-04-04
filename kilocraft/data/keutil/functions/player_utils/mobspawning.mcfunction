#Tells the player if mobspawning gamerule is on/off
execute store result score mobspawning var run gamerule doMobSpawning
execute if score mobspawning var matches 1..1 run tellraw @s [{"text":"Mobspawning is ","color":"gray"},{"text":"enabled","color":"green"},{"text":"!","color":"gray"}]
execute if score mobspawning var matches 0..0 run tellraw @s [{"text":"Mobspawning is ","color":"gray"},{"text":"disabled","color":"red"},{"text":"!","color":"gray"}]

#Gives the player an entity count
execute store result score totale var run execute if entity @e
execute if score mobspawning var matches 0..0 run tellraw @s [{"text":"There are a total of ","color":"gray"},{"score":{"name":"totale","objective":"var"},"color":"red"},{"text":"/3000","color":"red"},{"text":" entities!","color":"gray"}]
execute if score mobspawning var matches 1..1 run tellraw @s [{"text":"There are a total of ","color":"gray"},{"score":{"name":"totale","objective":"var"},"color":"green"},{"text":"/3000","color":"green"},{"text":" entities!","color":"gray"}]

#reset
scoreboard players reset totale var
scoreboard players reset mobspawning var
