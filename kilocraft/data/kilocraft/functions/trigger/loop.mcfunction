execute as @a if score @s ketrigger_cs matches 1.. run function kilocraft:trigger/claimshop
execute as @a if score @s ketrigger_cs matches ..-1 run function kilocraft:trigger/claimshop
execute as @a if score @s ketrigger_ri matches 1.. run function kilocraft:trigger/rankinfo
execute as @a if score @s ketrigger_ru matches 1.. run function kilocraft:trigger/rules
execute as @a if score @s ketrigger_vs matches 1.. run function kilocraft:trigger/voteshop
execute as @a if score @s ketrigger_vs matches ..-1 run function kilocraft:trigger/voteshop
execute as @a if score @s ketrigger_hc matches 1.. run function kilocraft:trigger/headchances
execute as @a if score @s ketrigger_hc matches ..-1 run function kilocraft:trigger/headchances
schedule function kilocraft:trigger/loop 5t replace