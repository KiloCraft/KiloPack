tellraw @s ["",{"text":"===================== ","color":"yellow"},{"text":"Guest","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger ketrigger_ri set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for entire list]","color":"gold"}]}},{"text":" ====================","color":"yellow"}]

tellraw @s ["",{"text":"[Permissions for Previous Ranks]:","bold":true,"color":"white"},"\n",{"text":"There are no pervious ranks ya fool","color":"yellow"},"\n","\n",{"text":"[New Permissions]:","bold":true,"color":"white"},"\n",{"text":"All Basic Commands, 3 claims, 1 home","color":"yellow"}]

tellraw @s {"text":"=================================================","color":"yellow"}

scoreboard players reset @s ketrigger_ri
scoreboard players enable @s ketrigger_ri
