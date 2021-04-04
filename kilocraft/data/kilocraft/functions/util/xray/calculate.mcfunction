#add together
scoreboard players operation #temp ke_var = @s kestats_diamond
scoreboard players operation #temp ke_var += @s kestats_debris
scoreboard players operation #temp ke_var += @s kestats_dsdia

#store minutes to score
scoreboard players operation #score ke_var = @s keutil_minutes

#divide score by total
scoreboard players operation #score ke_var /= #temp ke_var

scoreboard players set @s keutil_xrayscore 100

scoreboard players operation @s keutil_xrayscore -= #score ke_var
execute if score #temp ke_var matches 0..0 run scoreboard players set @s keutil_xrayscore 0
