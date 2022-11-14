scoreboard players add @a keutil_minutes 1
scoreboard players add @a keutil_claimblock_minutes 1
execute as @a at @s run function kilocraft:util/playtime/rankup
execute as @a at @s run function kilocraft:util/playtime/claimblocks

schedule function kilocraft:util/playtime/loop 60s replace