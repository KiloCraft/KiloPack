$execute if score @s event_coins matches $(cost).. run $(command)
$execute if score @s event_coins matches $(cost).. run tellraw @s [{"text":"Purchased ", "color":"yellow"}, {"text":"$(name)","color":"gold"}, {"text": " for ", "color": "yellow"}, {"text":"$(cost) event coins","color":"gold"}, {"text":" from the event shop!", "color":"yellow"}]

# Send webhook
$data modify storage kilocraft cost set value $(cost)
$data modify storage kilocraft name set value "$(name)"
function kilocraft:util/store_name
$execute if score @s event_coins matches $(cost).. run function kilocraft:eventshop/webhook with storage kilocraft

$execute unless score @s event_coins matches $(cost).. run tellraw @s [{"text":"You don't have enough event coins to purchase ","color":"red"},{"text":"$(name)","color":"gold"},{"text":"!","color":"red"}]

$execute if score @s event_coins matches $(cost).. run scoreboard players remove @s event_coins $(cost)