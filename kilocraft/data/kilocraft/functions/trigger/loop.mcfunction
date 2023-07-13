execute as @a if score @s claimshop matches 1.. run function kilocraft:trigger/claimshop
execute as @a if score @s rankinfo matches 1.. run function kilocraft:trigger/rankinfo/rankinfo
execute as @a if score @s rules matches 1.. run function kilocraft:trigger/rules
execute as @a if score @s voteshop matches 1.. run function kilocraft:trigger/voteshop
execute as @a if score @s voteshop matches ..-1 run function kilocraft:trigger/voteshop
execute as @a if score @s headchances matches 1.. run function kilocraft:trigger/headchances
execute as @a if score @s misc matches 1.. run function kilocraft:trigger/util
execute as @a if score @s guide matches 1.. run function kilocraft:trigger/guide
execute as @a if score @s guide matches ..-1 run function kilocraft:trigger/guide
execute as @a if score @s hug matches 1.. run function kilocraft:trigger/hug

schedule function kilocraft:trigger/loop 5t replace
