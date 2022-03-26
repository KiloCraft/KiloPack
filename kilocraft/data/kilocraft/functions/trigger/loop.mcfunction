execute as @a if score @s ketrigger_cs matches 1.. run function kilocraft:trigger/claimshop
execute as @a if score @s ketrigger_cs matches ..-1 run function kilocraft:trigger/claimshop

#RankInfo crap
execute as @a if score @s ketrigger_ri matches ..-1 run function kilocraft:trigger/rankinfo/list
execute as @a if score @s ketrigger_ri matches 1 run function kilocraft:trigger/rankinfo/list
execute as @a if score @s ketrigger_ri matches 2 run function kilocraft:trigger/rankinfo/perms
execute as @a if score @s ketrigger_ri matches 3 run function kilocraft:trigger/rankinfo/guest
execute as @a if score @s ketrigger_ri matches 4 run function kilocraft:trigger/rankinfo/player
execute as @a if score @s ketrigger_ri matches 5 run function kilocraft:trigger/rankinfo/player_plus
execute as @a if score @s ketrigger_ri matches 6 run function kilocraft:trigger/rankinfo/member
execute as @a if score @s ketrigger_ri matches 7 run function kilocraft:trigger/rankinfo/kc
execute as @a if score @s ketrigger_ri matches 8 run function kilocraft:trigger/rankinfo/kc_plus
execute as @a if score @s ketrigger_ri matches 9 run function kilocraft:trigger/rankinfo/donator
execute as @a if score @s ketrigger_ri matches 10 run function kilocraft:trigger/rankinfo/ultimate
execute as @a if score @s ketrigger_ri matches 11.. run function kilocraft:trigger/rankinfo/list

execute as @a if score @s ketrigger_ru matches 1.. run function kilocraft:trigger/rules
execute as @a if score @s ketrigger_vs matches 1.. run function kilocraft:trigger/voteshop
execute as @a if score @s ketrigger_vs matches ..-1 run function kilocraft:trigger/voteshop
execute as @a if score @s ketrigger_hc matches 1.. run function kilocraft:trigger/headchances
execute as @a if score @s ketrigger_hc matches ..-3 run function kilocraft:trigger/headchances
execute as @a if score @s ketrigger_hc matches -1 run function kilocraft:trigger/easter/easterhead
execute as @a if score @s ketrigger_hc matches -2 run function kilocraft:trigger/easter/submitegg
execute as @a if score @s ketrigger_ut matches 1.. run function kilocraft:trigger/util
execute as @a if score @s ketrigger_ut matches ..-1 run function kilocraft:trigger/util

schedule function kilocraft:trigger/loop 5t replace
