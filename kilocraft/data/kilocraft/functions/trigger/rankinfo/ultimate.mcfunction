tellraw @s ["",{"text":"===================== ","color":"yellow"},{"text":"Ultimate","bold":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger ketrigger_ri set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for entire list]","color":"gold"}]}},{"text":" ====================","color":"yellow"}]

tellraw @s ["",{"text":"[Donator Permissions]:","bold":true,"color":"white"},"\n",{"text":"/ec, /nick, Nickname Formatting, /magicalparticles, Sign Coloring Without Dye","color":"yellow"},"\n","\n",{"text":"[New Permissions]:","bold":true,"color":"white"},"\n",{"text":"Extended Chat Formatting/Gradients, +4 homes, /anvil, /modifyitem, /claim fly, /craft, Doubled Vote Rewards","color":"yellow"}]

tellraw @s {"text":"=================================================","color":"yellow"}

scoreboard players reset @s ketrigger_ri
scoreboard players enable @s ketrigger_ri
