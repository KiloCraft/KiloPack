tag @s add kefun_hug
execute if entity @a[distance=..2,tag=!kefun_hug] run tellraw @s ["",{"text":"You hugged ","color":"light_purple"},{"selector":"@a[distance=..2,tag=!kefun_hug]","color":"dark_purple"},{"text":"!","color":"light_purple"}]
execute unless entity @a[distance=..2,tag=!kefun_hug] run tellraw @s {"text":"No one near to hug :( You must be within 2 blocks of someone!","color":"red"}
execute as @a[distance=..2,limit=1,tag=!kefun_hug] run tellraw @a[distance=..2,limit=1,tag=!kefun_hug] ["",{"selector":"@a[distance=..2,limit=1,tag=kefun_hug]","color":"dark_purple"},{"text":" hugged you!","color":"light_purple"}]
execute as @a[distance=..2,limit=1,tag=!kefun_hug] run playsound minecraft:entity.cat.ambient master @s ~ ~ ~
tag @s remove kefun_hug

scoreboard players reset @s kefun_hug
scoreboard players enable @s kefun_hug