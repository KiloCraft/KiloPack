#read target goal and current kegoal
scoreboard players set 100 kegoal 100
execute if score #current kegoal matches ..-1 run tellraw @s [{"text":"Current score invalid.","color":"red"}]
execute if score #target kegoal matches ..0 run tellraw @s [{"text":"Target score invalid.","color":"red"}]

scoreboard players operation #tempcurrent kegoal = #current kegoal
scoreboard players operation #temptarget kegoal = #target kegoal

scoreboard players operation #tempcurrent kegoal *= 100 kegoal

scoreboard players operation #tempcurrent kegoal /= #temptarget kegoal
scoreboard players operation #percent kegoal = #tempcurrent kegoal

#reset
scoreboard players reset #tempcurrent kegoal
scoreboard players reset #temptarget kegoal
scoreboard players reset 100 kegoal
