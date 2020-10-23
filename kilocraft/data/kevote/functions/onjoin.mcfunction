#Set Target
scoreboard players set #target kegoal 5000

#Set Current
scoreboard players operation #total kevote_month += * kevote_month
scoreboard players operation #current kegoal = #total kevote_month

execute as @s run function kegoal:status
tellraw @s [{"text":"Ultimate (1 Month)","color":"green"},{"text":" - ","color":"dark_gray"},{"text":"(","color":"gray"},{"score":{"name":"#current","objective":"kegoal"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"#target","objective":"kegoal"},"color":"gray"},{"text":")","color":"gray"},{"text":" "},{"score":{"name":"#percent","objective":"kegoal"},"color":"gray"},{"text":"%","color":"gray"}]
execute as @s run function kegoal:bar

#reset
scoreboard players reset #total kevote_month
