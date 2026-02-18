$execute if score @s event_coins matches $(cost).. run $(command)
$execute if score @s event_coins matches $(cost).. run tellraw @s [{"text":"Purchased ", "color":"yellow"}, {"text":"$(name)","color":"gold"}, {"text": " for ", "color": "yellow"}, {"text":"$(cost) event coins","color":"gold"}, {"text":" from the event shop!", "color":"yellow"}]

$execute unless score @s event_coins matches $(cost).. run tellraw @s [{"text":"You don't have enough event coins to purchase ","color":"red"},{"text":"$(name)","color":"gold"},{"text":"!","color":"red"}]

$execute if score @s event_coins matches $(cost).. run scoreboard players remove @s event_coins $(cost)