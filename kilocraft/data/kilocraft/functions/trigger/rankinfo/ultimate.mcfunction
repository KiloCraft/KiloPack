tellraw @s ["",{"text":"===================== ","color":"yellow"},{"text":"Ultimate","bold":true,"color":"#F929F9","clickEvent":{"action":"run_command","value":"/trigger ketrigger_ri set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for entire list]","color":"gold"}]}},{"text":" ====================","color":"yellow"}]

tellraw @s ["",{"text":"[Donator Permissions]:","bold":true,"color":"white"},"\n",{"text":"/ec, /itemedit, /nick, /magicalparticles, /signedit, Book Formatting, Armor Stand Editing","color":"yellow"},"\n","\n",{"text":"[New Permissions]:","bold":true,"color":"white"},"\n",{"text":"+4 homes, /anvil, /claim fly, /craft, Extended Chat Formatting/Gradients, Extended Nickname Formatting/Gradients, Doubled Vote Rewards","color":"yellow"}]

tellraw @s {"text":"=================================================","color":"yellow"}

scoreboard players reset @s ketrigger_ri
scoreboard players enable @s ketrigger_ri
