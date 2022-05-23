#calculate vote credits
scoreboard players set #kevote_credits ke_var 1
execute if entity @s[permission=vote.double] run scoreboard players operation #kevote_credits ke_var *= #kevote_ultmultiplier ke_var
#execute if entity @s[tag=staff_ult] run scoreboard players operation #kevote_credits ke_var *= #kevote_ultmultiplier ke_var
scoreboard players operation #kevote_credits ke_var *= #kevote_multiplier ke_var

#send message
tellraw @a ["",{"selector":"@s","color":"#6860FB"},{"text":" just voted and received ","color":"#96EEEE","clickEvent":{"action":"run_command","value":"/vote"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get a list of our vote sites!","color":"#BE11EE"}}},{"score": {"name": "#kevote_credits", "objective": "ke_var"},"color":"#7AF631","clickEvent":{"action":"run_command","value":"/vote"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get a list of our vote sites!","color":"#BE11EE"}}},{"text":" credits","color":"#7AF631","clickEvent":{"action":"run_command","value":"/vote"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get a list of our vote sites!","color":"#BE11EE"}}},{"text":". Thanks!","color":"#96EEEE","clickEvent":{"action":"run_command","value":"/vote"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get a list of our vote sites!","color":"#BE11EE"}}}]

#add credits
scoreboard players operation @s kevote_credits += #kevote_credits ke_var
scoreboard players add @s kevote_total 1
scoreboard players add @s kevote_month 1

function kilocraft:crate/give
function kilocraft:util/playtime/rankup

#reset
scoreboard players reset #kevote_credits ke_var
scoreboard players remove @s kevote_voted 1
