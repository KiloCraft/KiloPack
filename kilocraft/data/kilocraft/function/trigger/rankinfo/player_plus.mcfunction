tellraw @s ["",{"text":"===================== ","color":"yellow"},{"text":"Player+","bold":true,"color":"#4CB6FB","click_event":{"action":"run_command","command":"/trigger rankinfo set 1"},"hover_event":{"action":"show_text","value":[{"text":"[Click for entire list]","color":"gold"}]}},{"text":" ====================","color":"yellow"}]

tellraw @s ["",{"text":"[Permissions for Previous Ranks]:","bold":true,"color":"white"},"\n",{"text":"All Basic Commands, :item: in chat","color":"yellow"},"\n","\n",{"text":"[New Permissions]:","bold":true,"color":"white"},"\n",{"text":"7 claims, 3 homes, /hat, /sit","color":"yellow"}]

tellraw @s {"text":"=================================================","color":"yellow"}

scoreboard players reset @s rankinfo
scoreboard players enable @s rankinfo