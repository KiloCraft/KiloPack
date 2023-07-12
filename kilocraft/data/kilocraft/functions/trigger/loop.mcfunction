execute as @a unless score @s claimshop matches 0 run function kilocraft:trigger/claimshop
execute as @a unless score @s rankinfo matches 0 run function kilocraft:trigger/rankinfo/rankinfo
execute as @a unless score @s rules matches 0 run function kilocraft:trigger/rules
execute as @a unless score @s voteshop matches 0 run function kilocraft:trigger/voteshop
execute as @a unless score @s headchances matches 0 run function kilocraft:trigger/headchances
execute as @a unless score @s misc matches 0 run function kilocraft:trigger/util
execute as @a unless score @s guide matches 0 run function kilocraft:trigger/guide

schedule function kilocraft:trigger/loop 5t replace
