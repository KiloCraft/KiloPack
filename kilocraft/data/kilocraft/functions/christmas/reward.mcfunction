$tellraw @s [{"text":"Congratulations, you've found the ","color":"yellow"}, {"text":"$(name)","color":"gold"}, {"text":" head!","color":"yellow"}]
$give @s player_head{SkullOwner:{Name:"$(name)", Properties:{textures: [{Value: "$(texture)"}]}}}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
$tag @s add $(tag)