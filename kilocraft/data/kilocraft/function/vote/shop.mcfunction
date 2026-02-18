$execute if score @s kevote_credits matches $(cost).. run $(command)
$execute if score @s kevote_credits matches $(cost).. run tellraw @s [{"text":"Purchased ", "color":"yellow"}, {"text":"$(name)","color":"gold"}, {"text": " for ", "color": "yellow"}, {"text":"$(cost) vote credits","color":"gold"}, {"text":" from the vote shop!", "color":"yellow"}]

$execute unless score @s kevote_credits matches $(cost).. run tellraw @s [{"text":"You don't have enough vote credits to purchase ","color":"red"},{"text":"$(name)","color":"gold"},{"text":"!","color":"red"}]

$execute if score @s kevote_credits matches $(cost).. run scoreboard players remove @s kevote_credits $(cost)