tellraw @s ["",{"text":"=================== ","color":"yellow"},{"text":"Kilocrafter","bold":true,"color":"#FBB64C","click_event":{"action":"run_command","command":"/trigger rankinfo set 1"},"hover_event":{"action":"show_text","value":[{"text":"[Click for entire list]","color":"gold"}]}},{"text":" ==================","color":"yellow"}]

tellraw @s ["",{"text":"[Permissions for Previous Ranks]:","bold":true,"color":"white"},"\n",{"text":"All Basic Commands, :item: in chat, /hat, /sit, /signedit, Chat Coloring, /hug, /gesture","color":"yellow"},"\n","\n",{"text":"[New Permissions]:","bold":true,"color":"white"},"\n",{"text":"12 claims, 5 homes, /glow, /nick, /anvil, /enderchest, 1 Pwarp","color":"yellow"}]

tellraw @s {"text":"=================================================","color":"yellow"}

scoreboard players reset @s rankinfo
scoreboard players enable @s rankinfo