#calculate vote credits
scoreboard players set #kevote_credits var 1
execute if entity @s[team=70_ultimate] run scoreboard players operation #kevote_credits var *= #kevote_ultmultiplier
scoreboard players operation #kevote_credits var *= #kevote_multiplier var

#send message
tellraw @a ["",{"selector":"@s","color":"#6860FB"},{"text":" just voted and received ","color":"#96EEEE","clickEvent":{"action":"run_command","value":"/vote"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get a list of our vote sites!","color":"#BE11EE"}}},{"score": {"name": "#kevote_credits", "objective": "var"},"color":"#7AF631","clickEvent":{"action":"run_command","value":"/vote"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get a list of our vote sites!","color":"#BE11EE"}}},{"text":" credits","color":"#7AF631","clickEvent":{"action":"run_command","value":"/vote"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get a list of our vote sites!","color":"#BE11EE"}}},{"text":". Thanks!","color":"#96EEEE","clickEvent":{"action":"run_command","value":"/vote"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get a list of our vote sites!","color":"#BE11EE"}}}]

#add credits
scoreboard players operation @s kevote_credits += #kevote_credits var
scoreboard players add @s kevote_total 1
scoreboard players add @s kevote_month 1

#reset
scoreboard players reset #kevote_credits var
scoreboard players remove @s kevote_voted 1
