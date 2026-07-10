function kilocraft:vote/onjoin
function kilocraft:trigger/enable

# Ensure scores are set
scoreboard players add @s kevote_credits 0
scoreboard players add @s event_coins 0

scoreboard players remove @s kemain_onjoin 1

execute store result score event_reminder ke_var run preferences event_reminder