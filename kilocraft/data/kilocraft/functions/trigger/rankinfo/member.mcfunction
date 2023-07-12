tellraw @s ["",{"text":"===================== ","color":"yellow"},{"text":"Member","bold":true,"color":"#1C8EEF","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for entire list]","color":"gold"}]}},{"text":" ====================","color":"yellow"}]

tellraw @s ["",{"text":"[Permissions for Previous Ranks]:","bold":true,"color":"white"},"\n",{"text":"All Basic Commands, :item: in chat, /hat, /sit","color":"yellow"},"\n","\n",{"text":"[New Permissions]:","bold":true,"color":"white"},"\n",{"text":"10 claims, 4 homes, /signedit, Basic Chat Coloring","color":"yellow"}]

tellraw @s {"text":"=================================================","color":"yellow"}

scoreboard players reset @s rankinfo
scoreboard players enable @s rankinfo