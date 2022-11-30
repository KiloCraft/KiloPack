#Day1
execute if entity @s[tag=day1] if score #advent_date ke_var matches 1..2 if score @s advent matches 101 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day1] if score #advent_date ke_var matches 1..2 if score @s advent matches 101 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day1] if score #advent_date ke_var matches 1..2 if score @s advent matches 101 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day1] if score #advent_date ke_var matches 1..2 if score @s advent matches 101 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day1] if score #advent_date ke_var matches 1..2 if score @s advent matches 101 run give @s minecraft:pumpkin_pie{display:{Name:'[{"text":"Apple Pie","italic":false,"color":"red"}]',Lore:['[{"text":"Perfect for a christmas dinner!","italic":false,"color":"red"}]']}} 4
execute if entity @s[tag=!day1] if score #advent_date ke_var matches 1..2 if score @s advent matches 101 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day1] if score #advent_date ke_var matches 1..2 if score @s advent matches 101 run tag @s add day1
#Day2
execute if entity @s[tag=day2] if score #advent_date ke_var matches 2..3 if score @s advent matches 102 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day2] if score #advent_date ke_var matches 2..3 if score @s advent matches 102 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day2] if score #advent_date ke_var matches 2..3 if score @s advent matches 102 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day2] if score #advent_date ke_var matches 2..3 if score @s advent matches 102 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day2] if score #advent_date ke_var matches 2..3 if score @s advent matches 102 run give @s minecraft:iron_ingot 4
execute if entity @s[tag=!day2] if score #advent_date ke_var matches 2..3 if score @s advent matches 102 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day2] if score #advent_date ke_var matches 2..3 if score @s advent matches 102 run tag @s add day2
#Day3
execute if entity @s[tag=day3] if score #advent_date ke_var matches 3..4 if score @s advent matches 103 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day3] if score #advent_date ke_var matches 3..4 if score @s advent matches 103 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day3] if score #advent_date ke_var matches 3..4 if score @s advent matches 103 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day3] if score #advent_date ke_var matches 3..4 if score @s advent matches 103 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day3] if score #advent_date ke_var matches 3..4 if score @s advent matches 103 run give @s minecraft:red_shulker_box{display:{Name:'[{"text":"Holiday Present","italic":false,"color":"dark_red"}]',Lore:['[{"text":"To store all your presents!","italic":false,"color":"red"}]']}} 1
execute if entity @s[tag=!day3] if score #advent_date ke_var matches 3..4 if score @s advent matches 103 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day3] if score #advent_date ke_var matches 3..4 if score @s advent matches 103 run tag @s add day3
#Day4
execute if entity @s[tag=day4] if score #advent_date ke_var matches 4..5 if score @s advent matches 104 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day4] if score #advent_date ke_var matches 4..5 if score @s advent matches 104 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day4] if score #advent_date ke_var matches 4..5 if score @s advent matches 104 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day4] if score #advent_date ke_var matches 4..5 if score @s advent matches 104 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day4] if score #advent_date ke_var matches 4..5 if score @s advent matches 104 run give @s minecraft:diamond 1
execute if entity @s[tag=!day4] if score #advent_date ke_var matches 4..5 if score @s advent matches 104 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day4] if score #advent_date ke_var matches 4..5 if score @s advent matches 104 run tag @s add day4
#Day5
execute if entity @s[tag=day5] if score #advent_date ke_var matches 5..6 if score @s advent matches 105 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day5] if score #advent_date ke_var matches 5..6 if score @s advent matches 105 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day5] if score #advent_date ke_var matches 5..6 if score @s advent matches 105 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day5] if score #advent_date ke_var matches 5..6 if score @s advent matches 105 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day5] if score #advent_date ke_var matches 5..6 if score @s advent matches 105 run give @s minecraft:powder_snow_bucket{display:{Name:'[{"text":"Bucket of Snow","italic":false,"color":"white"}]',Lore:['[{"text":"Real snow from the North Pole","italic":false,"color":"light_gray"}]']}} 1
execute if entity @s[tag=!day5] if score #advent_date ke_var matches 5..6 if score @s advent matches 105 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day5] if score #advent_date ke_var matches 5..6 if score @s advent matches 105 run tag @s add day5
#Day6
execute if entity @s[tag=day6] if score #advent_date ke_var matches 6..7 if score @s advent matches 106 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day6] if score #advent_date ke_var matches 6..7 if score @s advent matches 106 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day6] if score #advent_date ke_var matches 6..7 if score @s advent matches 106 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day6] if score #advent_date ke_var matches 6..7 if score @s advent matches 106 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day6] if score #advent_date ke_var matches 6..7 if score @s advent matches 106 run give @s minecraft:gold_ingot 6
execute if entity @s[tag=!day6] if score #advent_date ke_var matches 6..7 if score @s advent matches 106 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day6] if score #advent_date ke_var matches 6..7 if score @s advent matches 106 run tag @s add day6
#Day7
execute if entity @s[tag=day7] if score #advent_date ke_var matches 7..8 if score @s advent matches 107 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day7] if score #advent_date ke_var matches 7..8 if score @s advent matches 107 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day7] if score #advent_date ke_var matches 7..8 if score @s advent matches 107 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day7] if score #advent_date ke_var matches 7..8 if score @s advent matches 107 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day7] if score #advent_date ke_var matches 7..8 if score @s advent matches 107 run give @s minecraft:leather_helmet{display:{color:207918,Name:'[{"text":"Frosty\'s Magic Hat","italic":false,"color":"dark_green","bold":true}]'}} 1
execute if entity @s[tag=!day7] if score #advent_date ke_var matches 7..8 if score @s advent matches 107 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day7] if score #advent_date ke_var matches 7..8 if score @s advent matches 107 run tag @s add day7
#Day8
execute if entity @s[tag=day8] if score #advent_date ke_var matches 8..9 if score @s advent matches 108 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day8] if score #advent_date ke_var matches 8..9 if score @s advent matches 108 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day8] if score #advent_date ke_var matches 8..9 if score @s advent matches 108 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day8] if score #advent_date ke_var matches 8..9 if score @s advent matches 108 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day8] if score #advent_date ke_var matches 8..9 if score @s advent matches 108 run give @s minecraft:cooked_chicken{display:{Name:'[{"text":"Christmas Turkey","italic":false,"color":"white"}]'}} 8
execute if entity @s[tag=!day8] if score #advent_date ke_var matches 8..9 if score @s advent matches 108 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day8] if score #advent_date ke_var matches 8..9 if score @s advent matches 108 run tag @s add day8
#Day9
execute if entity @s[tag=day9] if score #advent_date ke_var matches 9..10 if score @s advent matches 109 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day9] if score #advent_date ke_var matches 9..10 if score @s advent matches 109 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day9] if score #advent_date ke_var matches 9..10 if score @s advent matches 109 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day9] if score #advent_date ke_var matches 9..10 if score @s advent matches 109 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day9] if score #advent_date ke_var matches 9..10 if score @s advent matches 109 run give @s minecraft:coal{display:{Name:'[{"text":"Coal","italic":false,"color":"dark_gray"}]',Lore:['[{"text":"Seems like someone was on the naughty list!","italic":false,"color":"gray"}]']}} 16
execute if entity @s[tag=!day9] if score #advent_date ke_var matches 9..10 if score @s advent matches 109 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day9] if score #advent_date ke_var matches 9..10 if score @s advent matches 109 run tag @s add day9
#Day10
execute if entity @s[tag=day10] if score #advent_date ke_var matches 10..11 if score @s advent matches 110 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day10] if score #advent_date ke_var matches 10..11 if score @s advent matches 110 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day10] if score #advent_date ke_var matches 10..11 if score @s advent matches 110 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day10] if score #advent_date ke_var matches 10..11 if score @s advent matches 110 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day10] if score #advent_date ke_var matches 10..11 if score @s advent matches 110 run give @s minecraft:experience_bottle 16
execute if entity @s[tag=!day10] if score #advent_date ke_var matches 10..11 if score @s advent matches 110 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day10] if score #advent_date ke_var matches 10..11 if score @s advent matches 110 run tag @s add day10
#Day11
execute if entity @s[tag=day11] if score #advent_date ke_var matches 11..12 if score @s advent matches 111 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day11] if score #advent_date ke_var matches 11..12 if score @s advent matches 111 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day11] if score #advent_date ke_var matches 11..12 if score @s advent matches 111 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day11] if score #advent_date ke_var matches 11..12 if score @s advent matches 111 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day11] if score #advent_date ke_var matches 11..12 if score @s advent matches 111 run give @s minecraft:bell{display:{Name:'[{"text":"Sleigh Bell","italic":false,"color":"gold"}]'}} 2
execute if entity @s[tag=!day11] if score #advent_date ke_var matches 11..12 if score @s advent matches 111 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day11] if score #advent_date ke_var matches 11..12 if score @s advent matches 111 run tag @s add day11
#Day12
execute if entity @s[tag=day12] if score #advent_date ke_var matches 12..13 if score @s advent matches 112 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day12] if score #advent_date ke_var matches 12..13 if score @s advent matches 112 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day12] if score #advent_date ke_var matches 12..13 if score @s advent matches 112 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day12] if score #advent_date ke_var matches 12..13 if score @s advent matches 112 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day12] if score #advent_date ke_var matches 12..13 if score @s advent matches 112 run execute as @s run function kilocraft:crate/give
execute if entity @s[tag=!day12] if score #advent_date ke_var matches 12..13 if score @s advent matches 112 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day12] if score #advent_date ke_var matches 12..13 if score @s advent matches 112 run tag @s add day12
#Day13
execute if entity @s[tag=day13] if score #advent_date ke_var matches 13..14 if score @s advent matches 113 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day13] if score #advent_date ke_var matches 13..14 if score @s advent matches 113 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day13] if score #advent_date ke_var matches 13..14 if score @s advent matches 113 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day13] if score #advent_date ke_var matches 13..14 if score @s advent matches 113 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day13] if score #advent_date ke_var matches 13..14 if score @s advent matches 113 run give @s minecraft:iron_ingot 8
execute if entity @s[tag=!day13] if score #advent_date ke_var matches 13..14 if score @s advent matches 113 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day13] if score #advent_date ke_var matches 13..14 if score @s advent matches 113 run tag @s add day13
#Day14
execute if entity @s[tag=day14] if score #advent_date ke_var matches 14..15 if score @s advent matches 114 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day14] if score #advent_date ke_var matches 14..15 if score @s advent matches 114 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day14] if score #advent_date ke_var matches 14..15 if score @s advent matches 114 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day14] if score #advent_date ke_var matches 14..15 if score @s advent matches 114 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day14] if score #advent_date ke_var matches 14..15 if score @s advent matches 114 run give @s minecraft:snowball 16
execute if entity @s[tag=!day14] if score #advent_date ke_var matches 14..15 if score @s advent matches 114 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day14] if score #advent_date ke_var matches 14..15 if score @s advent matches 114 run tag @s add day14
#Day15
execute if entity @s[tag=day15] if score #advent_date ke_var matches 15..16 if score @s advent matches 115 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day15] if score #advent_date ke_var matches 15..16 if score @s advent matches 115 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day15] if score #advent_date ke_var matches 15..16 if score @s advent matches 115 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day15] if score #advent_date ke_var matches 15..16 if score @s advent matches 115 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day15] if score #advent_date ke_var matches 15..16 if score @s advent matches 115 run give @s minecraft:diamond 2
execute if entity @s[tag=!day15] if score #advent_date ke_var matches 15..16 if score @s advent matches 115 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day15] if score #advent_date ke_var matches 15..16 if score @s advent matches 115 run tag @s add day15
#Day16
execute if entity @s[tag=day16] if score #advent_date ke_var matches 16..17 if score @s advent matches 116 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day16] if score #advent_date ke_var matches 16..17 if score @s advent matches 116 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day16] if score #advent_date ke_var matches 16..17 if score @s advent matches 116 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day16] if score #advent_date ke_var matches 16..17 if score @s advent matches 116 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day16] if score #advent_date ke_var matches 16..17 if score @s advent matches 116 run give @s minecraft:rabbit_stew{display:{Name:'[{"text":"Turkey Soup","italic":false,"bold":true,"color":"gold"}]'}} 1
execute if entity @s[tag=!day16] if score #advent_date ke_var matches 16..17 if score @s advent matches 116 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day16] if score #advent_date ke_var matches 16..17 if score @s advent matches 116 run tag @s add day16
#Day17
execute if entity @s[tag=day17] if score #advent_date ke_var matches 17..18 if score @s advent matches 117 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day17] if score #advent_date ke_var matches 17..18 if score @s advent matches 117 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day17] if score #advent_date ke_var matches 17..18 if score @s advent matches 117 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day17] if score #advent_date ke_var matches 17..18 if score @s advent matches 117 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day17] if score #advent_date ke_var matches 17..18 if score @s advent matches 117 run give @s minecraft:gold_ingot 12
execute if entity @s[tag=!day17] if score #advent_date ke_var matches 17..18 if score @s advent matches 117 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day17] if score #advent_date ke_var matches 17..18 if score @s advent matches 117 run tag @s add day17
#Day18
execute if entity @s[tag=day18] if score #advent_date ke_var matches 18..19 if score @s advent matches 118 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day18] if score #advent_date ke_var matches 18..19 if score @s advent matches 118 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day18] if score #advent_date ke_var matches 18..19 if score @s advent matches 118 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day18] if score #advent_date ke_var matches 18..19 if score @s advent matches 118 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day18] if score #advent_date ke_var matches 18..19 if score @s advent matches 118 run give @s minecraft:sunflower{display:{Name:'[{"text":"Tree Ornament","italic":false,"color":"green","bold":true}]'}} 1
execute if entity @s[tag=!day18] if score #advent_date ke_var matches 18..19 if score @s advent matches 118 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day18] if score #advent_date ke_var matches 18..19 if score @s advent matches 118 run tag @s add day18
#Day19
execute if entity @s[tag=day19] if score #advent_date ke_var matches 19..20 if score @s advent matches 119 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day19] if score #advent_date ke_var matches 19..20 if score @s advent matches 119 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day19] if score #advent_date ke_var matches 19..20 if score @s advent matches 119 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day19] if score #advent_date ke_var matches 19..20 if score @s advent matches 119 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day19] if score #advent_date ke_var matches 19..20 if score @s advent matches 119 run give @s minecraft:baked_potato{display:{Lore:['[{"text":"Mashed Potatoes","italic":false,"color":"yellow"}]']}} 16
execute if entity @s[tag=!day19] if score #advent_date ke_var matches 19..20 if score @s advent matches 119 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day19] if score #advent_date ke_var matches 19..20 if score @s advent matches 119 run tag @s add day19
#Day20
execute if entity @s[tag=day20] if score #advent_date ke_var matches 20..21 if score @s advent matches 120 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day20] if score #advent_date ke_var matches 20..21 if score @s advent matches 120 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day20] if score #advent_date ke_var matches 20..21 if score @s advent matches 120 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day20] if score #advent_date ke_var matches 20..21 if score @s advent matches 120 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day20] if score #advent_date ke_var matches 20..21 if score @s advent matches 120 run give @s minecraft:leather_boots{display:{color:174121,Name:'[{"text":"Christmas Stockings","italic":false,"color":"dark_green","bold":true}]'}} 1
execute if entity @s[tag=!day20] if score #advent_date ke_var matches 20..21 if score @s advent matches 120 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day20] if score #advent_date ke_var matches 20..21 if score @s advent matches 120 run tag @s add day20
#Day21
execute if entity @s[tag=day21] if score #advent_date ke_var matches 21..22 if score @s advent matches 121 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day21] if score #advent_date ke_var matches 21..22 if score @s advent matches 121 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day21] if score #advent_date ke_var matches 21..22 if score @s advent matches 121 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day21] if score #advent_date ke_var matches 21..22 if score @s advent matches 121 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day21] if score #advent_date ke_var matches 21..22 if score @s advent matches 121 run give @s minecraft:diamond 4
execute if entity @s[tag=!day21] if score #advent_date ke_var matches 21..22 if score @s advent matches 121 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day21] if score #advent_date ke_var matches 21..22 if score @s advent matches 121 run tag @s add day21
#Day22
execute if entity @s[tag=day22] if score #advent_date ke_var matches 22..23 if score @s advent matches 122 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day22] if score #advent_date ke_var matches 22..23 if score @s advent matches 122 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day22] if score #advent_date ke_var matches 22..23 if score @s advent matches 122 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day22] if score #advent_date ke_var matches 22..23 if score @s advent matches 122 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day22] if score #advent_date ke_var matches 22..23 if score @s advent matches 122 run give @s minecraft:iron_ingot 16
execute if entity @s[tag=!day22] if score #advent_date ke_var matches 22..23 if score @s advent matches 122 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day22] if score #advent_date ke_var matches 22..23 if score @s advent matches 122 run tag @s add day22
#Day23
execute if entity @s[tag=day23] if score #advent_date ke_var matches 23..24 if score @s advent matches 123 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day23] if score #advent_date ke_var matches 23..24 if score @s advent matches 123 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day23] if score #advent_date ke_var matches 23..24 if score @s advent matches 123 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day23] if score #advent_date ke_var matches 23..24 if score @s advent matches 123 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day23] if score #advent_date ke_var matches 23..24 if score @s advent matches 123 run give @s minecraft:diamond_block 1
execute if entity @s[tag=!day23] if score #advent_date ke_var matches 23..24 if score @s advent matches 123 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day23] if score #advent_date ke_var matches 23..24 if score @s advent matches 123 run tag @s add day23
#Day24
execute if entity @s[tag=day24] if score #advent_date ke_var matches 24..25 if score @s advent matches 124 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day24] if score #advent_date ke_var matches 24..25 if score @s advent matches 124 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day24] if score #advent_date ke_var matches 24..25 if score @s advent matches 124 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day24] if score #advent_date ke_var matches 24..25 if score @s advent matches 124 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day24] if score #advent_date ke_var matches 24..25 if score @s advent matches 124 run give @s minecraft:firework_rocket{display:{Name:"\"Christmas Firework\"",Lore:["\"Merry Christmas Eve!\""]},Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;15790320]},{Type:0,Flicker:0,Trail:0,Colors:[I;3887386]}]}} 8
execute if entity @s[tag=!day24] if score #advent_date ke_var matches 24..25 if score @s advent matches 124 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day24] if score #advent_date ke_var matches 24..25 if score @s advent matches 124 run tag @s add day24
#Day25
execute if entity @s[tag=day25] if score #advent_date ke_var matches 25 if score @s advent matches 125 run title @s title {"text":"Prize Already Claimed!","color":"red"}
execute if entity @s[tag=day25] if score #advent_date ke_var matches 25 if score @s advent matches 125 run execute at @s run playsound minecraft:block.anvil.land master @s
execute if entity @s[tag=!day25] if score #advent_date ke_var matches 25 if score @s advent matches 125 run title @s title {"text":"Prize Claimed!","color":"gold"}
execute if entity @s[tag=!day25] if score #advent_date ke_var matches 25 if score @s advent matches 125 run execute at @s run playsound minecraft:block.note_block.bell master @s
execute if entity @s[tag=!day25] if score #advent_date ke_var matches 25 if score @s advent matches 125 run give @s minecraft:netherite_ingot{display:{Name:'[{"text":"Chocolate Bar","italic":false,"color":"#5B3419"}]'}} 1
execute if entity @s[tag=!day25] if score #advent_date ke_var matches 25 if score @s advent matches 125 run scoreboard players add @s advent_total 1
execute if entity @s[tag=!day25] if score #advent_date ke_var matches 25 if score @s advent matches 125 run tag @s add day25

scoreboard players set @s advent 0
scoreboard players enable @s advent
