scoreboard players add @s kemod_nv 0
execute if entity @s[scores={kemod_nv=1},tag=!nv] run function kemod:night_vision/nvoff
execute if entity @s[scores={kemod_nv=0},tag=!nv] run function kemod:night_vision/nvon

tag @s remove nv

scoreboard players reset @s kemod_nvt
scoreboard players enable @s kemod_nvt

