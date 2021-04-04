#Set the player's xrayscore

execute as @a run scoreboard players operation @s kemod_total = @s kestats_diamond
execute as @a run scoreboard players operation @s kemod_total += @s kestats_debris
execute as @a run scoreboard players operation @s kemod_total += @s kestats_dsdia
execute as @a run scoreboard players operation @s kemod_total -= @s kestats_diaplace
execute as @a run scoreboard players operation @s kemod_minutes = @s keutil_minutes
execute as @a run scoreboard players operation @s kemod_score = @s kemod_minutes
execute as @a run scoreboard players operation @s kemod_score /= @s kemod_total
execute as @a run scoreboard players operation @s kemod_constant -= @s kemod_score
execute as @a run scoreboard players operation @s kemod_score = @s kemod_constant

execute as @a run scoreboard players operation @s kestats_diatotal = @s kestats_diamond
execute as @a run scoreboard players operation @s kestats_diatotal += @s kestats_dsdia
execute as @a run scoreboard players operation @s kestats_diatotal -= @s kestats_diaplace

#Set score of people who haven't mined to 0
scoreboard players set @a[scores={kemod_total=0}] kemod_score 0

#Warn staff with the tag every 5 minutes
scoreboard players add kemod_warn var 1
execute if score kemod_warn var matches 5 run function kemod:xray/xrayscore
execute if score kemod_warn var matches 5 run scoreboard players set kemod_warn var 0

scoreboard players set @a kemod_constant 100

schedule function kemod:xray/xrayloop 60s