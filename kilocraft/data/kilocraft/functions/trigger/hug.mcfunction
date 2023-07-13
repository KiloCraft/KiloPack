execute unless entity @s[level=1..] run tellraw @s [{"text":"You need to have at least 1 level to hug someone.", "color": "red"}]
#execute unless entity @s[level=1..] run playsound minecraft:entity.villager.no master @s


tag @s add hugging
execute if entity @s[level=1..] at @s unless entity @a[tag=!hugging, distance=..3] run tellraw @s [{"text":"There is nobody close enough to be hugged ):", "color": "red"}]
#execute if entity @s[level=1..] at @s unless entity @a[tag=!hugging, distance=..3] run playsound minecraft:entity.villager.no master @s

execute if entity @s[level=1..] at @s if entity @a[tag=!hugging, distance=..3] run tag @a[tag=!hugging, distance=..3, limit=1, sort=random] add hugged
execute if entity @s[level=1..] at @s if entity @a[tag=!hugging, distance=..3] run tellraw @a[tag=hugged] [{"text": "You have been hugged by ", "color": "yellow"}, {"selector": "@s"},{"text": "!", "color": "yellow"}, {"text": " ❤","color": "red"}]
execute if entity @s[level=1..] at @s if entity @a[tag=!hugging, distance=..3] run tellraw @s [{"text": "You have hugged ", "color": "yellow"}, {"selector": "@a[tag=hugged]"},{"text": "!", "color": "yellow"}, {"text": " ❤","color": "red"}]
execute if entity @s[level=1..] at @s if entity @a[tag=!hugging, distance=..3] run xp add @s -1 levels
execute if entity @s[level=1..] at @s if entity @a[tag=!hugging, distance=..3] run playsound minecraft:entity.allay.item_given master @s ~ ~ ~ 1 1
execute if entity @s[level=1..] at @s if entity @a[tag=!hugging, distance=..3] run playsound minecraft:entity.allay.item_given master @a[tag=hugged] ~ ~ ~ 1 1

tag @a[tag=hugged] remove hugged
tag @s remove hugging
scoreboard players reset @s hug
scoreboard players enable @s hug