#discord
execute if score #keutil_automessage ke_var matches 0 run tellraw @a ["",{"text":"[Info] ","color":"#6860FB"},{"text":"Click ","color":"#7AF631"},{"text":"here ","color":"#96EEEE","clickEvent":{"action":"open_url","value":"https://discord.gg/yF2trv7n9x"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to join our discord server!","color":"#BE11EE"}}},{"text":"to join our ","color":"#7AF631"},{"text":"discord ","color":"#96EEEE"},{"text":"server and stay up to date!","color":"#7AF631"}]

#vote
execute if score #keutil_automessage ke_var matches 1 run tellraw @a ["",{"text":"[Info] ","color":"#6860FB"},{"text":"Use ","color":"#7AF631"},{"text":"/vote ","color":"#96EEEE","clickEvent":{"action":"run_command","value":"/vote"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get a list of our voting websites!","color":"#BE11EE"}}},{"text":"to get ","color":"#7AF631"},{"text":"rewards","color":"#96EEEE"},{"text":", ","color":"#7AF631"},{"text":"rank up","color":"#96EEEE"},{"text":" and","color":"#7AF631"},{"text":" support ","color":"#96EEEE"},{"text":"the server!","color":"#7AF631"}]

#donate
execute if score #keutil_automessage ke_var matches 2 run tellraw @a ["",{"text":"[Info] ","color":"#6860FB"},{"text":"You can ","color":"#7AF631"},{"text":"donate ","color":"#96EEEE"},{"text":"to get access to many ","color":"#7AF631"},{"text":"exclusive perks","color":"#96EEEE"},{"text":" and to ","color":"#7AF631"},{"text":"support ","color":"#96EEEE"},{"text":"the server!","color":"#7AF631"},{"text":" Visit our ","color":"#7AF631"},{"text":"store","color":"#96EEEE","clickEvent":{"action":"open_url","value":"https://kilocraft.craftingstore.net/"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get to our store!","color":"#BE11EE"}}},{"text":" for more info.","color":"#7AF631"}]

scoreboard players add #keutil_automessage ke_var 1

execute if score #keutil_automessage ke_var matches 3 run scoreboard players set #keutil_automessage ke_var 0

schedule function kilocraft:util/automessage 300s replace
