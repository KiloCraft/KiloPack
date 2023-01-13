tellraw @s ["",{"text":"===================== ","color":"yellow"},{"text":"Ultimate","bold":true,"color":"#F929F9","clickEvent":{"action":"run_command","value":"/trigger ketrigger_ri set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for entire list]","color":"gold"}]}},{"text":" ====================","color":"yellow"}]

tellraw @s ["",{"text":"[Donator Permissions]:","bold":true,"color":"white"},"\n",{"text":"Basic Nickname Formatting, Sign, Book and Anvil Coloring Without Dye, Armor Stand Editing, /ec, /nick, /magicalparticles","color":"yellow"},"\n","\n",{"text":"[New Permissions]:","bold":true,"color":"white"},"\n",{"text":"+4 homes, Extended Chat Formatting/Gradients, Extended Nickname Formatting/Gradients, /anvil, /claim fly, /craft, Doubled Vote Rewards","color":"yellow"}]

tellraw @s {"text":"=================================================","color":"yellow"}

scoreboard players reset @s ketrigger_ri
scoreboard players enable @s ketrigger_ri
