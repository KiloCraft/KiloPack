execute if score #reboot_countdown ke_var matches 0..0 run stop
execute if score #reboot_countdown ke_var matches 1..10 run scoreboard players set #reboot_message ke_var 1
execute if score #reboot_countdown ke_var matches 15..15 run scoreboard players set #reboot_message ke_var 1
execute if score #reboot_countdown ke_var matches 30..30 run scoreboard players set #reboot_message ke_var 1
execute if score #reboot_countdown ke_var matches 45..45 run scoreboard players set #reboot_message ke_var 1
execute if score #reboot_countdown ke_var matches 60..60 run scoreboard players set #reboot_message ke_var 1

execute if score #reboot_message ke_var matches 1..1 run tellraw @a ["",{"text":"Automatic Server Reboot in ","bold":true,"color":"red"},{"score":{"name":"#reboot_countdown","objective":"ke_var"},"bold":true,"color":"white"},{"text":" seconds!","bold":true,"color":"red"}]
execute if score #reboot_message ke_var matches 1..1 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if score #reboot_message ke_var matches 1..1 run scoreboard players reset #reboot_message ke_var

scoreboard players remove #reboot_countdown ke_var 1
execute if score #reboot_countdown ke_var matches 0.. run schedule function kilocraft:util/reboot/loop 1s