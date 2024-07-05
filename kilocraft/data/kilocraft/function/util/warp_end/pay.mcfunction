execute if permission @s group.warp_end run return fail
execute store result score ender_eye_count ke_var run clear @s minecraft:ender_eye 0
execute if score ender_eye_count ke_var matches ..11 run tellraw @s ["",{"text":"You need to have 12 ","color":"red"},{"translate":"item.minecraft.ender_eye","color":"red"},{"text":" in your inventory!","color":"red"}]
execute if score ender_eye_count ke_var matches 12.. run clear @s minecraft:ender_eye 12
execute if score ender_eye_count ke_var matches 12.. run lp user @s parent add warp_end

scoreboard players reset ender_eye_count ke_var