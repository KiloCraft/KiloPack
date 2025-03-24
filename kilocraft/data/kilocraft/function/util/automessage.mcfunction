#discord
execute if score #keutil_automessage ke_var matches 0 run tellraw @a[scores={keutil_minutes=..299}] ["",{"text":"[Info] ","color":"#6860FB"},{"text":"Click ","color":"#7AF631"},{"text":"here ","color":"#96EEEE","clickEvent":{"action":"open_url","value":"https://discord.gg/Ss5muBFFGt"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to join our discord server!","color":"#BE11EE"}}},{"text":"to join our ","color":"#7AF631"},{"text":"discord ","color":"#96EEEE"},{"text":"server and stay up to date!","color":"#7AF631"}]

#vote
execute if score #keutil_automessage ke_var matches 1 run tellraw @a[scores={kevote_total=..9}] ["",{"text":"[Info] ","color":"#6860FB"},{"text":"Use ","color":"#7AF631"},{"text":"/vote ","color":"#96EEEE","clickEvent":{"action":"run_command","value":"/vote"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get a list of our voting websites!","color":"#BE11EE"}}},{"text":"to get ","color":"#7AF631"},{"text":"rewards","color":"#96EEEE"},{"text":", ","color":"#7AF631"},{"text":"rank up","color":"#96EEEE"},{"text":" and","color":"#7AF631"},{"text":" support ","color":"#96EEEE"},{"text":"the server!","color":"#7AF631"}]

#support
execute if score #keutil_automessage ke_var matches 2 as @a unless permission @s group.champion run tellraw @s ["",{"text":"[Info] ","color":"#6860FB"},{"text":"You can ","color":"#7AF631"},{"text":"purchase ranks ","color":"#96EEEE"},{"text":"to get access to many ","color":"#7AF631"},{"text":"exclusive perks","color":"#96EEEE"},{"text":" and ","color":"#7AF631"},{"text":"support ","color":"#96EEEE"},{"text":"the server!","color":"#7AF631"},{"text":" Visit our ","color":"#7AF631"},{"text":"store","color":"#96EEEE","clickEvent":{"action":"open_url","value":"https://kilocraft.craftingstore.net/"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get to our store!","color":"#BE11EE"}}},{"text":" for more info.","color":"#7AF631"}]

#guide
execute if score #keutil_automessage ke_var matches 3 run tellraw @a[scores={keutil_minutes=..299}] ["",{"text":"[Info] ","color":"#6860FB"},{"text":"Type ","color":"#7AF631"},{"text":"/guide ","color":"#96EEEE","clickEvent":{"action":"run_command","value":"/guide"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to show the guide!","color":"#BE11EE"}}},{"text":"to see the important ","color":"#7AF631"},{"text":"information","color":"#96EEEE"},{"text":" and ","color":"#7AF631"},{"text":"commands ","color":"#96EEEE"},{"text":"we have here, and how to use them!","color":"#7AF631"}]

execute if score #keutil_automessage ke_var matches 4 run tellraw @a [{"text":"[Info] ","color":"light_purple"},{"text":"Ever wondered how you’d do in KiloCraft’s ","color":"#FCD701"},{"text":"biggest","color":"#F58A49"},{"text":" PvP project? ","color":"#FCD701"},{"text":"Register now for Varö","italic":true,"underlined":true,"color":"#F58A49","clickEvent":{"action":"open_url","value":"https://discord.gg/87AvatX5RY"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to join the Discord!","italic":true,"color":"light_purple"}]}},{"text":" and put your survival skills to the test!","color":"#FCD701"}]


scoreboard players add #keutil_automessage ke_var 1

execute if score #keutil_automessage ke_var matches 5.. run scoreboard players set #keutil_automessage ke_var 0

schedule function kilocraft:util/automessage 300s replace
