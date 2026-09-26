$tellraw @s [{"text":"Congratulations, you've found the ","color":"yellow"}, {"text":"$(name)","color":"gold"}, {"text":" head!","color":"yellow"}]
$give @s player_head[profile={"properties":[{"name":"textures","value":"$(texture)"}]},custom_name={"italic":false,"text":"$(name)"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
$tag @s add $(tag)