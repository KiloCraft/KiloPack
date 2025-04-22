tellraw @s ["",{"text":"===================== ","color":"yellow"},{"text":"Ultimate","bold":true,"color":"#F929F9","click_event":{"action":"run_command","command":"/trigger rankinfo set 1"},"hover_event":{"action":"show_text","value":[{"text":"[Click for entire list]","color":"gold"}]}},{"text":" ====================","color":"yellow"}]

tellraw @s ["",{"text":"[Champion Permissions]:","bold":true,"color":"white"},"\n",{"text":"/ec, /itemedit, /nick, /magicalparticles, /signedit, Book Formatting, Armor Stand Editing","color":"yellow"},"\n","\n",{"text":"[New Permissions]:","bold":true,"color":"white"},"\n",{"text":"+4 homes, /anvil, /claim fly, /craft, Extended Chat Formatting/Gradients, Extended Nickname Formatting/Gradients, Doubled Vote Rewards","color":"yellow"}]

tellraw @s {"text":"=================================================","color":"yellow"}

scoreboard players reset @s rankinfo
scoreboard players enable @s rankinfo
