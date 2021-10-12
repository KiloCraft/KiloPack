scoreboard players add @a keutil_minutes 1
execute as @a run function kilocraft:util/playtime/rankup

schedule function kilocraft:util/playtime/loop 60s replace