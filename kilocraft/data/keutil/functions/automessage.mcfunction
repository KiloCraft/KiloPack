#discord
execute if score #keutil_automessage var matches 0 run tellraw @a ["",{"text":"[Info] ","color":"#6860FB"},{"text":"Click ","color":"#7AF631"},{"text":"here ","color":"#96EEEE","clickEvent":{"action":"open_url","value":"https://discord.gg/uzuQEe9"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to join our discord server!","color":"#BE11EE"}}},{"text":"to join our ","color":"#7AF631"},{"text":"discord ","color":"#96EEEE"},{"text":"server and stay up to date!","color":"#7AF631"}]

#vote
execute if score #keutil_automessage var matches 1 run tellraw @a ["",{"text":"[Info] ","color":"#6860FB"},{"text":"Use ","color":"#7AF631"},{"text":"/vote ","color":"#96EEEE","clickEvent":{"action":"run_command","value":"/vote"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get a list of our voting websites!","color":"#BE11EE"}}},{"text":"to get ","color":"#7AF631"},{"text":"rewards","color":"#96EEEE"},{"text":", ","color":"#7AF631"},{"text":"rank up","color":"#96EEEE"},{"text":" and","color":"#7AF631"},{"text":" support ","color":"#96EEEE"},{"text":"the server!","color":"#7AF631"}]

#donate
execute if score #keutil_automessage var matches 2 run tellraw @a ["",{"text":"[Info] ","color":"#6860FB"},{"text":"You can ","color":"#7AF631"},{"text":"donate ","color":"#96EEEE"},{"text":"to get access to many ","color":"#7AF631"},{"text":"exclusive perks","color":"#96EEEE"},{"text":" and to ","color":"#7AF631"},{"text":"support ","color":"#96EEEE"},{"text":"the server!","color":"#7AF631"},{"text":" Visit our ","color":"#7AF631"},{"text":"store","color":"#96EEEE","clickEvent":{"action":"open_url","value":"https://kilocraft.craftingstore.net/"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get to our store!","color":"#BE11EE"}}},{"text":" for more info.","color":"#7AF631"}]

#valentines
execute if score #keutil_automessage var matches 3 run tellraw @a ["",{"text":"=== Valentine's Day Event ===","color":"light_purple"},{"text":"\n"},{"text":"If you want to gift something special to a player anonymously for Valentines Day, head over to /warp Valentines and submit your gifts! Please ensure that all gifts have the recipients name within it, and go to our /discord for more information!","color":"dark_purple"},{"text":"\n"},{"text":"=========================","color":"light_purple"}]

scoreboard players add #keutil_automessage var 1

execute if score #keutil_automessage var matches 3 run scoreboard players set #keutil_automessage var 0

schedule function keutil:automessage 300s replace
