tellraw @s ["",{"text":"=================== ","color":"yellow"},{"text":"Kilocrafter+","bold":true,"color":"#FB9600","click_event":{"action":"run_command","command":"/trigger rankinfo set 1"},"hover_event":{"action":"show_text","value":[{"text":"[Click for entire list]","color":"gold"}]}},{"text":" ==================","color":"yellow"}]

tellraw @s ["",{"text":"[Permissions for Previous Ranks]:","bold":true,"color":"white"},"\n",{"text":"All Basic Commands, :item: in chat, /hat, /sit, /signedit, Chat Coloring, /hug, /glow, /nick, /anvil, /enderchest, /gesture","color":"yellow"},"\n","\n",{"text":"[New Permissions]:","bold":true,"color":"white"},"\n",{"text":"15 claims, 7 homes, /craft, Nickname Coloring, Book Formatting, 2 Pwarps","color":"yellow"}]

tellraw @s {"text":"=================================================","color":"yellow"}

scoreboard players reset @s rankinfo
scoreboard players enable @s rankinfo