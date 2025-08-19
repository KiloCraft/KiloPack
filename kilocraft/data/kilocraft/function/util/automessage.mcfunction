#discord
execute if score #keutil_automessage ke_var matches 0 run tellraw @a[scores={keutil_minutes=..299}] ["",{"text":"[Info] ","color":"#6860FB"},{"text":"Click ","color":"#7AF631"},{"text":"here ","color":"#96EEEE","click_event":{"action":"open_url","url":"https://discord.gg/Ss5muBFFGt"},"hover_event":{"action":"show_text","value":{"text":"Click to join our discord server!","color":"#BE11EE"}}},{"text":"to join our ","color":"#7AF631"},{"text":"discord ","color":"#96EEEE"},{"text":"server and stay up to date!","color":"#7AF631"}]

#vote
execute if score #keutil_automessage ke_var matches 1 run tellraw @a[scores={kevote_total=..9}] ["",{"text":"[Info] ","color":"#6860FB"},{"text":"Use ","color":"#7AF631"},{"text":"/vote ","color":"#96EEEE","click_event":{"action":"run_command","command":"/vote"},"hover_event":{"action":"show_text","value":{"text":"Click to get a list of our voting websites!","color":"#BE11EE"}}},{"text":"to get ","color":"#7AF631"},{"text":"rewards","color":"#96EEEE"},{"text":", ","color":"#7AF631"},{"text":"rank up","color":"#96EEEE"},{"text":" and","color":"#7AF631"},{"text":" support ","color":"#96EEEE"},{"text":"the server!","color":"#7AF631"}]

#support
execute if score #keutil_automessage ke_var matches 2 as @a unless permission @s group.champion run tellraw @s ["",{"text":"[Info] ","color":"#6860FB"},{"text":"You can ","color":"#7AF631"},{"text":"purchase ranks ","color":"#96EEEE"},{"text":"to get access to many ","color":"#7AF631"},{"text":"exclusive perks","color":"#96EEEE"},{"text":" and ","color":"#7AF631"},{"text":"support ","color":"#96EEEE"},{"text":"the server!","color":"#7AF631"},{"text":" Visit our ","color":"#7AF631"},{"text":"store","color":"#96EEEE","click_event":{"action":"open_url","url":"https://kilocraft.craftingstore.net/"},"hover_event":{"action":"show_text","value":{"text":"Click to get to our store!","color":"#BE11EE"}}},{"text":" for more info.","color":"#7AF631"}]

#guide
execute if score #keutil_automessage ke_var matches 3 run tellraw @a[scores={keutil_minutes=..299}] ["",{"text":"[Info] ","color":"#6860FB"},{"text":"Type ","color":"#7AF631"},{"text":"/guide ","color":"#96EEEE","click_event":{"action":"run_command","command":"/guide"},"hover_event":{"action":"show_text","value":{"text":"Click to show the guide!","color":"#BE11EE"}}},{"text":"to see the important ","color":"#7AF631"},{"text":"information","color":"#96EEEE"},{"text":" and ","color":"#7AF631"},{"text":"commands ","color":"#96EEEE"},{"text":"we have here, and how to use them!","color":"#7AF631"}]

#event
execute if score #keutil_automessage ke_var matches 4 run tellraw @a ["",{text:"[Info] ",color:"light_purple"},{text:"Did you already hear about the ",color:"#FCD701"},{text:"KiloCraft Mace PvP event?",color:"#F58A49"},{text:" Read our latest announcement on Discord and ",color:"#FCD701"},{text:"sign up now!",italic:true,underlined:true,color:"#F58A49",click_event:{action:"open_url",url:"https://discord.gg/Ss5muBFFGt"},hover_event:{action:"show_text",value:[{text:"Click here to join the Discord!",italic:true,color:"light_purple"}]}},{text:" You can use /event to join the practice server!",color:"#FCD701"}]


scoreboard players add #keutil_automessage ke_var 1

execute if score #keutil_automessage ke_var matches 5.. run scoreboard players set #keutil_automessage ke_var 0

schedule function kilocraft:util/automessage 300s replace
