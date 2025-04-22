tellraw @s ["",{"text":"===================== ","color":"yellow"},{"text":"Guest","bold":true,"color":"#B0B1B0","click_event":{"action":"run_command","command":"/trigger rankinfo set 1"},"hover_event":{"action":"show_text","value":[{"text":"[Click for entire list]","color":"gold"}]}},{"text":" ====================","color":"yellow"}]

tellraw @s ["",{"text":"[Permissions for Previous Ranks]:","bold":true,"color":"white"},"\n",{"text":"There are no previous ranks ya fool","color":"yellow"},"\n","\n",{"text":"[New Permissions]:","bold":true,"color":"white"},"\n",{"text":"3 claims, 1 home, All Basic Commands ","color":"yellow"}]

tellraw @s {"text":"=================================================","color":"yellow"}

scoreboard players reset @s rankinfo
scoreboard players enable @s rankinfo
