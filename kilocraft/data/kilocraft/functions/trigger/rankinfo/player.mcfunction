tellraw @s ["",{"text":"===================== ","color":"yellow"},{"text":"Player","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger ketrigger_ri set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for entire list]","color":"gold"}]}},{"text":" ====================","color":"yellow"}]

tellraw @s ["",{"text":"[Permissions for Previous Ranks]:","bold":true,"color":"white"},"\n",{"text":"All Basic Commands","color":"yellow"},"\n","\n",{"text":"[New Permissions]:","bold":true,"color":"white"},"\n",{"text":"5 claims, 2 homes, [item] in chat","color":"yellow"}]

tellraw @s {"text":"=================================================","color":"yellow"}

scoreboard players reset @s ketrigger_ri
scoreboard players enable @s ketrigger_ri
