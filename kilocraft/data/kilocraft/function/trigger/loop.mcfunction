execute as @a if score @s claimshop matches ..-1 run function kilocraft:trigger/claimshop
execute as @a if score @s claimshop matches 1.. run function kilocraft:trigger/claimshop
execute as @a if score @s rankinfo matches 1.. run function kilocraft:trigger/rankinfo/rankinfo
execute as @a if score @s rules matches 1.. run function kilocraft:trigger/rules
execute as @a if score @s headchances matches 1.. run function mob_heads:headchances
execute as @a if score @s votecrate matches ..-1 run function kilocraft:trigger/votecrate
execute as @a if score @s votecrate matches 1.. run function kilocraft:trigger/votecrate
execute as @a if score @s warp_end matches 1.. run function kilocraft:trigger/warp_end
execute as @a if score @s guide matches 1.. run function kilocraft:trigger/guide
execute as @a if score @s guide matches ..-1 run function kilocraft:trigger/guide
execute as @a if score @s hug matches 1.. run function kilocraft:trigger/hug

schedule function kilocraft:trigger/loop 5t replace
