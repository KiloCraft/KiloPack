#Set the player's xrayscore
execute as @a run function kilocraft:util/xray/calculate

#Warn staff with the tag every 5 minutes
scoreboard players add #kemod_warn ke_var 1
execute if score #kemod_warn ke_var matches 5 run function kilocraft:util/xray/showscore
execute if score #kemod_warn ke_var matches 5 run scoreboard players set #kemod_warn ke_var 0

scoreboard players set @a kemod_constant 100

schedule function kilocraft:util/xray/loop 60s