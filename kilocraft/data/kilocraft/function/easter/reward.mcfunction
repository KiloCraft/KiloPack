$tellraw @s [{"text":"Congratulations, you've found the ","color":"yellow"}, {"text":"$(name)","color":"gold"}, {"text":" head!","color":"yellow"}]
$give @s minecraft:player_head[minecraft:custom_name="{\"text\":\"$(name)\",\"italic\":false,\"color\":\"red\"}", minecraft:profile={"properties":[{"name":"textures","value":"$(texture)"}]}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
$tag @s add $(tag)