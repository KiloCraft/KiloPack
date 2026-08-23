function kilocraft:vote/onjoin
function kilocraft:trigger/enable

# Ensure scores are set
scoreboard players add @s kevote_credits 0
scoreboard players add @s event_coins 0

scoreboard players remove @s kemain_onjoin 1

execute store result score @s dummy run preferences event_reminder

#execute if score @s dummy matches 1..1 run tellraw @s