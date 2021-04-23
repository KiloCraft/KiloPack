#Set Target
scoreboard players set #target kegoal 5000

#Set Current
scoreboard players operation #total kevote_month += * kevote_month
scoreboard players operation #current kegoal = #total kevote_month

execute as @s run function kilocraft:util/goal/status
execute if score #kevote_message ke_var matches 1..1 run tellraw @s [{"text":"Ultimate (1 Month)","color":"green"},{"text":" - ","color":"dark_gray"},{"text":"(","color":"gray"},{"score":{"name":"#current","objective":"kegoal"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"#target","objective":"kegoal"},"color":"gray"},{"text":")","color":"gray"},{"text":" "},{"score":{"name":"#percent","objective":"kegoal"},"color":"gray"},{"text":"%","color":"gray"}]
execute as @s if score #kevote_message ke_var matches 1..1 run function kilocraft:util/goal/bar

#reset
scoreboard players reset #total kevote_month
