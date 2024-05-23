#calculate vote credits
scoreboard players set #kevote_credits ke_var 1
execute if permission @s vote.double run scoreboard players operation #kevote_credits ke_var *= #kevote_ultmultiplier ke_var
scoreboard players operation #kevote_credits ke_var *= #kevote_multiplier ke_var

#add credits
scoreboard players operation @s kevote_credits += #kevote_credits ke_var
scoreboard players add @s kevote_total 1
scoreboard players add @s kevote_month 1

function kilocraft:crate/give
function kilocraft:util/playtime/rankup

#reset
scoreboard players reset #kevote_credits ke_var
scoreboard players remove @s kevote_voted 1
