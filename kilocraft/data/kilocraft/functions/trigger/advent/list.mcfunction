tellraw @s ["",{"text":"======== ","color":"yellow"},{"text":"Kilocraft ","bold":true,"color":"green"},{"text":"Advent ","bold":true,"color":"red"},{"text":"Calendar ","bold":true,"color":"green"},{"text":"========","color":"yellow","clickEvent":{"action":"run_command","value":"tag @s remove full_list"}},"\n",{"text":"Today is December ","color":"gold"},{"score":{"name":"#advent_date","objective":"ke_var"},"color":"gold"},{"text":" You have ","color":"aqua"},{"score":{"name":"@s","objective":"advent_total"},"color":"aqua"},{"text":" total days collected.","color":"aqua"},"\n",{"text":"[Click to show progress - Warning: Spammy]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger advent set 100"}}]

#Will have to make this work as a trigger command
#execute if entity @s[tag=!full_list] run tellraw @s {"text":"[Turn on Full List (Spammy)]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s add full_list"}}
#execute if entity @s[tag=full_list] run tellraw @s {"text":"[Turn off Full List]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove full_list"}}

scoreboard players add @s advent_total 0

#Day 1
execute if score #advent_date ke_var matches 1..2 if entity @s[tag=!day1] run tellraw @s ["",{"text":"[Dec 1st] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 101"}}]
execute if score #advent_date ke_var matches 1..2 if entity @s[tag=day1] run tellraw @s ["",{"text":"[Dec 1st] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 2
execute if score #advent_date ke_var matches 2..3 if entity @s[tag=!day2] run tellraw @s ["",{"text":"[Dec 2nd] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 102"}}]
execute if score #advent_date ke_var matches 2..3 if entity @s[tag=day2] run tellraw @s ["",{"text":"[Dec 2nd] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 3
execute if score #advent_date ke_var matches 3..4 if entity @s[tag=!day3] run tellraw @s ["",{"text":"[Dec 3rd] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 103"}}]
execute if score #advent_date ke_var matches 3..4 if entity @s[tag=day3] run tellraw @s ["",{"text":"[Dec 3rd] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 4
execute if score #advent_date ke_var matches 4..5 if entity @s[tag=!day4] run tellraw @s ["",{"text":"[Dec 4th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 104"}}]
execute if score #advent_date ke_var matches 4..5 if entity @s[tag=day4] run tellraw @s ["",{"text":"[Dec 4th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 5
execute if score #advent_date ke_var matches 5..6 if entity @s[tag=!day5] run tellraw @s ["",{"text":"[Dec 5th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 105"}}]
execute if score #advent_date ke_var matches 5..6 if entity @s[tag=day5] run tellraw @s ["",{"text":"[Dec 5th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 6
execute if score #advent_date ke_var matches 6..7 if entity @s[tag=!day6] run tellraw @s ["",{"text":"[Dec 6th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 106"}}]
execute if score #advent_date ke_var matches 6..7 if entity @s[tag=day6] run tellraw @s ["",{"text":"[Dec 6th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 7
execute if score #advent_date ke_var matches 7..8 if entity @s[tag=!day7] run tellraw @s ["",{"text":"[Dec 7th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 107"}}]
execute if score #advent_date ke_var matches 7..8 if entity @s[tag=day7] run tellraw @s ["",{"text":"[Dec 7th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 8
execute if score #advent_date ke_var matches 8..9 if entity @s[tag=!day8] run tellraw @s ["",{"text":"[Dec 8th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 108"}}]
execute if score #advent_date ke_var matches 8..9 if entity @s[tag=day8] run tellraw @s ["",{"text":"[Dec 8th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 9
execute if score #advent_date ke_var matches 9..10 if entity @s[tag=!day9] run tellraw @s ["",{"text":"[Dec 9th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 109"}}]
execute if score #advent_date ke_var matches 9..10 if entity @s[tag=day9] run tellraw @s ["",{"text":"[Dec 9th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 10
execute if score #advent_date ke_var matches 10..11 if entity @s[tag=!day10] run tellraw @s ["",{"text":"[Dec 10th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 110"}}]
execute if score #advent_date ke_var matches 10..11 if entity @s[tag=day10] run tellraw @s ["",{"text":"[Dec 10th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 11
execute if score #advent_date ke_var matches 11..12 if entity @s[tag=!day11] run tellraw @s ["",{"text":"[Dec 11th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 111"}}]
execute if score #advent_date ke_var matches 11..12 if entity @s[tag=day11] run tellraw @s ["",{"text":"[Dec 11th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 12
execute if score #advent_date ke_var matches 12..13 if entity @s[tag=!day12] run tellraw @s ["",{"text":"[Dec 12th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 112"}}]
execute if score #advent_date ke_var matches 12..13 if entity @s[tag=day12] run tellraw @s ["",{"text":"[Dec 12th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 13
execute if score #advent_date ke_var matches 13..14 if entity @s[tag=!day13] run tellraw @s ["",{"text":"[Dec 13th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 113"}}]
execute if score #advent_date ke_var matches 13..14 if entity @s[tag=day13] run tellraw @s ["",{"text":"[Dec 13th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 14
execute if score #advent_date ke_var matches 14..15 if entity @s[tag=!day14] run tellraw @s ["",{"text":"[Dec 14th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 114"}}]
execute if score #advent_date ke_var matches 14..15 if entity @s[tag=day14] run tellraw @s ["",{"text":"[Dec 14th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 15
execute if score #advent_date ke_var matches 15..16 if entity @s[tag=!day15] run tellraw @s ["",{"text":"[Dec 15th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 115"}}]
execute if score #advent_date ke_var matches 15..16 if entity @s[tag=day15] run tellraw @s ["",{"text":"[Dec 15th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 16
execute if score #advent_date ke_var matches 16..17 if entity @s[tag=!day16] run tellraw @s ["",{"text":"[Dec 16th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 116"}}]
execute if score #advent_date ke_var matches 16..17 if entity @s[tag=day16] run tellraw @s ["",{"text":"[Dec 16th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 17
execute if score #advent_date ke_var matches 17..18 if entity @s[tag=!day17] run tellraw @s ["",{"text":"[Dec 17th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 117"}}]
execute if score #advent_date ke_var matches 17..18 if entity @s[tag=day17] run tellraw @s ["",{"text":"[Dec 17th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 18
execute if score #advent_date ke_var matches 18..19 if entity @s[tag=!day18] run tellraw @s ["",{"text":"[Dec 18th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 118"}}]
execute if score #advent_date ke_var matches 18..19 if entity @s[tag=day18] run tellraw @s ["",{"text":"[Dec 18th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 19
execute if score #advent_date ke_var matches 19..20 if entity @s[tag=!day19] run tellraw @s ["",{"text":"[Dec 19th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 119"}}]
execute if score #advent_date ke_var matches 19..20 if entity @s[tag=day19] run tellraw @s ["",{"text":"[Dec 19th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 20
execute if score #advent_date ke_var matches 20..21 if entity @s[tag=!day20] run tellraw @s ["",{"text":"[Dec 20th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 120"}}]
execute if score #advent_date ke_var matches 20..21 if entity @s[tag=day20] run tellraw @s ["",{"text":"[Dec 20th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 21
execute if score #advent_date ke_var matches 21..22 if entity @s[tag=!day21] run tellraw @s ["",{"text":"[Dec 21st] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 121"}}]
execute if score #advent_date ke_var matches 21..22 if entity @s[tag=day21] run tellraw @s ["",{"text":"[Dec 21st] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 22
execute if score #advent_date ke_var matches 22..23 if entity @s[tag=!day22] run tellraw @s ["",{"text":"[Dec 22nd] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 122"}}]
execute if score #advent_date ke_var matches 22..23 if entity @s[tag=day22] run tellraw @s ["",{"text":"[Dec 22nd] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 23
execute if score #advent_date ke_var matches 23..24 if entity @s[tag=!day23] run tellraw @s ["",{"text":"[Dec 23rd] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 123"}}]
execute if score #advent_date ke_var matches 23..24 if entity @s[tag=day23] run tellraw @s ["",{"text":"[Dec 23rd] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 24
execute if score #advent_date ke_var matches 24..25 if entity @s[tag=!day24] run tellraw @s ["",{"text":"[Dec 24th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 124"}}]
execute if score #advent_date ke_var matches 24..25 if entity @s[tag=day24] run tellraw @s ["",{"text":"[Dec 24th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]
#Day 25
execute if score #advent_date ke_var matches 25 if entity @s[tag=!day25] run tellraw @s ["",{"text":"[Dec 25th] ","color":"gray"},{"text":"[Click to claim]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger advent set 125"}}]
execute if score #advent_date ke_var matches 25 if entity @s[tag=day25] run tellraw @s ["",{"text":"[Dec 25th] ","color":"gray"},{"text":"[Claimed]","bold":true,"color":"green"}]


#Trigger stuff
scoreboard players set @s advent 0
scoreboard players enable @s advent
