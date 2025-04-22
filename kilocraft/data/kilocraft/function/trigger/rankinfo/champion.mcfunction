tellraw @s ["",{"text":"===================== ","color":"yellow"},{"text":"Champion","bold":true,"color":"#8C11E9","click_event":{"action":"run_command","command":"/trigger rankinfo set 1"},"hover_event":{"action":"show_text","value":[{"text":"[Click for entire list]","color":"gold"}]}},{"text":" ====================","color":"yellow"}]

tellraw @s ["",{"text":"[Permissions (not including your playtime rank)]:","bold":true,"color":"white"},"\n",{"text":"+2 homes, /ec, /itemedit, /nick, /magicalparticles, /signedit, Chat Formatting, Basic Nickname Formatting, Book Formatting, Armor Stand Editing","color":"yellow"}]

tellraw @s {"text":"=================================================","color":"yellow"}

scoreboard players reset @s rankinfo
scoreboard players enable @s rankinfo
