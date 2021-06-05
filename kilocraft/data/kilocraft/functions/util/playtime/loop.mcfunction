scoreboard players add @a keutil_minutes 1
execute as @a at @s if score @s keutil_minutes matches 10..10 run function kilocraft:util/start_help/check
execute as @a at @s if score @s keutil_minutes matches 5..5 run function kilocraft:util/start_help/check
execute as @a at @s if score @s keutil_minutes matches 3..3 run function kilocraft:util/start_help/check


schedule function kilocraft:util/playtime/loop 60s replace