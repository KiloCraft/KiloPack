tellraw @s ["",{"text":"===================== ","color":"yellow"},{"text":"Donator","bold":true,"color":"#8C11E9","clickEvent":{"action":"run_command","value":"/trigger ketrigger_ri set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for entire list]","color":"gold"}]}},{"text":" ====================","color":"yellow"}]

tellraw @s ["",{"text":"[Permissions (not including your playtime rank)]:","bold":true,"color":"white"},"\n",{"text":"Chat formatting (+gradients), /ec, +2 homes, /nick, Nickname Formatting, /magicalparticles, Sign Coloring Without Dye, Armor Stand Editing","color":"yellow"}]

tellraw @s {"text":"=================================================","color":"yellow"}

scoreboard players reset @s ketrigger_ri
scoreboard players enable @s ketrigger_ri
