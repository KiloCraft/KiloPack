tellraw @s ["",{"text":"==================== ","color":"yellow"},{"text":"RankInfo","bold":true,"color":"gold"},{"text":" ======================","color":"yellow"}]
tellraw @s ["",{"text":"HOVER","bold":true,"color":"gray"},{"text":" over the ranks to see new permissions, click for full list.","italic":true,"color":"gray"},"\n",{"text":"[Click for basic permission list]","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click here]","color":"gold"}]}},"\n","\n",{"text":"Playtime / Voting Ranks: ","bold":true,"color":"white"}]

#Guest
tellraw @s ["",{"text":"[Guest] - ","color":"#B0B1B0","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 3 claims, 1 Home, All Basic Commands","color":"gold"}]}},{"text":"The default rank","color":"#B0B1B0"}]

#Player
tellraw @s[scores={keutil_minutes=..299,kevote_total=..9}] ["",{"text":"[Player] - ","color":"#7EC9FB","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 5 claims, 2 homes, :item:","color":"gold"}]}},{"text":"[300 minutes] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [10 votes]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]
tellraw @s[scores={keutil_minutes=300..,kevote_total=..9}] ["",{"text":"[Player] - ","color":"#7EC9FB","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 5 claims, 2 homes, :item:","color":"gold"}]}},{"text":"[300 minutes] ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [10 votes]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]
tellraw @s[scores={keutil_minutes=..299,kevote_total=10..}] ["",{"text":"[Player] - ","color":"#7EC9FB","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 5 claims, 2 homes, :item:","color":"gold"}]}},{"text":"[300 minutes] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [10 votes]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]
tellraw @s[scores={keutil_minutes=300..,kevote_total=10..}] ["",{"text":"[Player] - ","color":"#7EC9FB","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 5 claims, 2 homes, :item:","color":"gold"}]}},{"text":"[300 minutes] ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [10 votes]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]

#Player_Plus
tellraw @s[scores={keutil_minutes=..1499,kevote_total=..39}] ["",{"text":"[Player+] - ","color":"#4CB6FB","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 7 claims, 3 homes, /hat, /sit","color":"gold"}]}},{"text":"[1500 minutes] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [40 votes]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]
tellraw @s[scores={keutil_minutes=1500..,kevote_total=..39}] ["",{"text":"[Player+] - ","color":"#4CB6FB","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 7 claims, 3 homes, /hat, /sit","color":"gold"}]}},{"text":"[1500 minutes] ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [40 votes]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]
tellraw @s[scores={keutil_minutes=..1499,kevote_total=40..}] ["",{"text":"[Player+] - ","color":"#4CB6FB","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 7 claims, 3 homes, /hat, /sit","color":"gold"}]}},{"text":"[1500 minutes] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [40 votes]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]
tellraw @s[scores={keutil_minutes=1500..,kevote_total=40..}] ["",{"text":"[Player+] - ","color":"#4CB6FB","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 7 claims, 3 homes, /hat, /sit","color":"gold"}]}},{"text":"[1500 minutes] ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [40 votes]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]

#Member
tellraw @s[scores={keutil_minutes=..4999,kevote_total=..79}] ["",{"text":"[Member] - ","color":"#1C8EEF","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 6"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 10 claims, 4 homes, Chat Coloring, /signedit","color":"gold"}]}},{"text":"[5000 minutes] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [80 votes]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]
tellraw @s[scores={keutil_minutes=5000..,kevote_total=..79}] ["",{"text":"[Member] - ","color":"#1C8EEF","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 6"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 10 claims, 4 homes, Chat Coloring, /signedit","color":"gold"}]}},{"text":"[5000 minutes] ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [80 votes]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]
tellraw @s[scores={keutil_minutes=..4999,kevote_total=80..}] ["",{"text":"[Member] - ","color":"#1C8EEF","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 6"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 10 claims, 4 homes, Chat Coloring, /signedit","color":"gold"}]}},{"text":"[5000 minutes] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [80 votes]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]
tellraw @s[scores={keutil_minutes=5000..,kevote_total=80..}] ["",{"text":"[Member] - ","color":"#1C8EEF","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 6"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 10 claims, 4 homes, Chat Coloring, /signedit","color":"gold"}]}},{"text":"[5000 minutes] ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [80 votes]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]

#Kilocrafter
tellraw @s[scores={keutil_minutes=..9999,kevote_total=..119}] ["",{"text":"[Kilocrafter] - ","color":"#FBB64C","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 7"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 12 claims, 5 homes, /glow, /nick, /anvil, /ec","color":"gold"}]}},{"text":"[10000 minutes] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [120 votes]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]
tellraw @s[scores={keutil_minutes=10000..,kevote_total=..119}] ["",{"text":"[Kilocrafter] - ","color":"#FBB64C","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 7"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 12 claims, 5 homes, /glow, /nick, /anvil, /ec","color":"gold"}]}},{"text":"[10000 minutes] ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [120 votes]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]
tellraw @s[scores={keutil_minutes=..9999,kevote_total=120..}] ["",{"text":"[Kilocrafter] - ","color":"#FBB64C","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 7"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 12 claims, 5 homes, /glow, /nick, /anvil, /ec","color":"gold"}]}},{"text":"[10000 minutes] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [120 votes]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]
tellraw @s[scores={keutil_minutes=10000..,kevote_total=120..}] ["",{"text":"[Kilocrafter] - ","color":"#FBB64C","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 7"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 12 claims, 5 homes, /glow, /nick, /anvil, /ec","color":"gold"}]}},{"text":"[10000 minutes] ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [120 votes]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]

#Kilocrafter_Plus
tellraw @s[scores={keutil_minutes=..29999,kevote_total=..249}] ["",{"text":"[Kilocrafter+] - ","color":"#FB9600","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 8"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 15 claims, 7 homes, /craft, /nick (with colors), Book Formatting, Pwarp","color":"gold"}]}},{"text":"[30000 minutes] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [250 votes]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]
tellraw @s[scores={keutil_minutes=30000..,kevote_total=..249}] ["",{"text":"[Kilocrafter+] - ","color":"#FB9600","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 8"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 15 claims, 7 homes, /craft, /nick (with colors), Book Formatting, Pwarp","color":"gold"}]}},{"text":"[30000 minutes] ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [250 votes]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]
tellraw @s[scores={keutil_minutes=..29999,kevote_total=250..}] ["",{"text":"[Kilocrafter+] - ","color":"#FB9600","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 8"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 15 claims, 7 homes, /craft, /nick (with colors), Book Formatting, Pwarp","color":"gold"}]}},{"text":"[30000 minutes] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [250 votes]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]
tellraw @s[scores={keutil_minutes=30000..,kevote_total=250..}] ["",{"text":"[Kilocrafter+] - ","color":"#FB9600","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 8"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for full list] 15 claims, 7 homes, /craft, /nick (with colors), Book Formatting, Pwarp","color":"gold"}]}},{"text":"[30000 minutes] ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"keutil_minutes"},"color":"aqua"},{"text":" minutes","color":"white"}]}},{"text":"and","color":"white"},{"text":" [250 votes]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"You have ","color":"white"},{"score":{"name":"@s","objective":"kevote_total"},"color":"aqua"},{"text":" votes","color":"white"}]}}]

#Line break
tellraw @s ["","\n",{"text":"Donating Ranks: ","bold":true,"color":"white"}]

#Champion
tellraw @s ["",{"text":"[Champion] - ","color":"#8C11E9","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 9"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for permission list]","color":"gold"}]}},{"text":"[Starting at 5€/month] ","color":"gold","clickEvent":{"action":"run_command","value":"/store"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to visit store!","color":"gold"}]}}]

#Ultimate
tellraw @s ["",{"text":"[Ultimate] - ","color":"#F929F9","clickEvent":{"action":"run_command","value":"/trigger rankinfo set 10"},"hoverEvent":{"action":"show_text","contents":[{"text":"[Click for permission list]","color":"gold"}]}},{"text":"[Starting at 10€/month] ","color":"gold","clickEvent":{"action":"run_command","value":"/store"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to visit store!","color":"gold"}]}}]

#Staff Ranks
tellraw @s ["","\n",{"text":"Staff Ranks: ","bold":true,"color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"All ranks that have gray brackets","color":"gray"},{"text":" [] ","italic":true,"color":"dark_gray"},{"text":"are staff ranks","color":"gray"}]}},{"text":"[","color":"dark_gray"},{"text":"Helper","color":"#00FB00","hoverEvent":{"action":"show_text","contents":[{"text":"[","color":"dark_gray"},{"text":"H","color":"#00FB00"},{"text":"] ","color":"dark_gray"},{"text":"Answers the players questions and helps with problems in-game","color":"#00FB00"}]}},{"text":"]","color":"dark_gray"},", ",{"text":"[","color":"dark_gray"},{"text":"Staff","color":"#009732","hoverEvent":{"action":"show_text","contents":[{"text":"[","color":"dark_gray"},{"text":"S","color":"#009732"},{"text":"] ","color":"dark_gray"},{"text":"Moderates chat ","color":"#009732"},{"text":"+ Helper responsibilities","italic":true,"color":"#00FB00"}]}},{"text":"]","color":"dark_gray"},", ",{"text":"[","color":"dark_gray"},{"text":"Moderator","color":"#2F3BED","hoverEvent":{"action":"show_text","contents":[{"text":"[","color":"dark_gray"},{"text":"Mod","color":"#2F3BED"},{"text":"] ","color":"dark_gray"},{"text":"Moderates gameplay of players ","color":"#2F3BED"},{"text":"+ Staff responsibilities","italic":true,"color":"#009732"}]}},{"text":"]","color":"dark_gray"},", ",{"text":"[","color":"dark_gray"},{"text":"Admin","color":"#E23238","hoverEvent":{"action":"show_text","contents":[{"text":"[","color":"dark_gray"},{"text":"A","color":"#E23238"},{"text":"] ","color":"dark_gray"},{"text":"Overall server moderation ","color":"#E23238"},{"text":"+ Moderator responsibilities","italic":true,"color":"#2F3BED"}]}},{"text":"]","color":"dark_gray"},", ",{"text":"[","color":"dark_gray"},{"text":"Owner","color":"#B897FB","hoverEvent":{"action":"show_text","contents":[{"text":"[","color":"dark_gray"},{"text":"O","color":"#B897FB"},{"text":"] ","color":"dark_gray"},{"text":"The one and only Drex, owns and maintains the server","color":"#B897FB"}]}},{"text":"]","color":"dark_gray"}]

#Other Ranks
tellraw @s ["","\n",{"text":"Other Ranks: ","bold":true,"color":"white"},{"text":"[","color":"white"},{"text":"Builder","color":"#97FB65","hoverEvent":{"action":"show_text","contents":[{"text":"[","color":"white"},{"text":"B","color":"#97FB65"},{"text":"] ","color":"white"},{"text":"Builds for the server (spawn, events, etc.)","color":"#97FB65"}]}},{"text":"]","color":"white"},", ",{"text":"[","color":"white"},{"text":"Developer","color":"#2FEBE1","hoverEvent":{"action":"show_text","contents":[{"text":"[","color":"white"},{"text":"Dev","color":"#2FEBE1"},{"text":"] ","color":"white"},{"text":"Creates and maintains custom stuff (mods, datapacks) for the server","color":"#2FEBE1"}]}},{"text":"]","color":"white"},", ",{"text":"[","color":"white"},{"text":"Content Creator","color":"#FFC2FF","hoverEvent":{"action":"show_text","contents":[{"text":"[","color":"white"},{"text":"CC","color":"#FFC2FF"},{"text":"] ","color":"white"},{"text":"Creates videos and streams for the server","color":"#FFC2FF"}]}},{"text":"]","color":"white"},", ",{"text":"[","color":"white"},{"text":"VIP","color":"#ECF042","hoverEvent":{"action":"show_text","contents":[{"text":"[","color":"white"},{"text":"VIP","color":"#ECF042"},{"text":"] ","color":"white"},{"text":"Very important people to the server","color":"#ECF042"}]}},{"text":"]","color":"white"}]

#Bottom Line
tellraw @s {"text":"====================================================","color":"yellow"}

scoreboard players reset @s rankinfo
scoreboard players enable @s rankinfo