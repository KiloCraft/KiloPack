tellraw @s ["",{"text":"=================== ","color":"yellow"},{"text":"Kilocrafter+","bold":true,"color":"#FB9600","clickEvent":{"action":"run_command","value":"/trigger ketrigger_ri set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for entire list]","color":"gold"}]}},{"text":" ==================","color":"yellow"}]

tellraw @s ["",{"text":"[Permissions for Previous Ranks]:","bold":true,"color":"white"},"\n",{"text":"All Basic Commands, :item: in chat, /hat, /sit, /signedit, Chat Coloring, /glow, /nick, /anvil, /enderchest","color":"yellow"},"\n","\n",{"text":"[New Permissions]:","bold":true,"color":"white"},"\n",{"text":"15 claims, 7 homes, /craft, Nickname Coloring, Book Formatting, Player Warp","color":"yellow"}]

tellraw @s {"text":"=================================================","color":"yellow"}

scoreboard players reset @s ketrigger_ri
scoreboard players enable @s ketrigger_ri