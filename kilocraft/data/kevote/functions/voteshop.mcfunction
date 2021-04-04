execute if score @s kevote_voteshop matches 1 run scoreboard players add @s kekevote_credits 0
#execute if score @s kevote_voteshop matches 1 run tellraw @s ["",{"text":"Vote shop: ","color":"gold"},{"text":"You currently have ","color":"yellow"},{"score":{"name":"@s","objective":"kevote_credits"},"color":"aqua"},{"text":" credits","color":"yellow"},{"text":"\n"},{"text":"[1] ","color":"yellow"},{"text":"1 Diamond","color":"gold"},{"text":" [Buy for 2 credits]","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -1"}},{"text":"\n"},{"text":"[2] ","color":"yellow"},{"text":"1 Golden Apple","color":"gold"},{"text":" [Buy for 1 credit]","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -2"}},{"text":"\n"},{"text":"[3] ","color":"yellow"},{"text":"5 Experience Bottles","color":"gold"},{"text":" [Buy for 1 credit]","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -3"}},{"text":"\n"},{"text":"[4] ","color":"yellow"},{"text":"Mending Book","color":"gold"},{"text":" [Buy for 25 credits]","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -4"}},{"text":"\n"},{"text":"[5] ","color":"yellow"},{"text":"50 Claim blocks","color":"gold"},{"text":" [Buy for 1 credit]","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -5"}},{"text":"\n"},{"text":"[6] ","color":"yellow"},{"text":"Summon a Bee","color":"gold"},{"text":" [Buy for 15 credits]","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -6"}},{"text":"\n"},{"text":"[7] ","color":"yellow"},{"text":"1 Elytra","color":"gold"},{"text":" [Buy for 50 credits]","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -7"}},{"text":"\n"},{"text":"[8] ","color":"yellow"},{"text":"1 RTP","color":"gold"},{"text":" [Buy for 2 credits]","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -8"},{"text":"[9] ","color":"yellow"},{"text":"1 32 Steak","color":"gold"},{"text":" [Buy for 1 credit]","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -9"}}]


execute if score @s kevote_voteshop matches 1 run tellraw @s ["",{"text":"Vote shop: ","color":"gold"},{"text":"You currently have ","color":"yellow"},{"score":{"name":"@s","objective":"kevote_credits"},"color":"aqua"},{"text":" credits","color":"yellow"}]

#1
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 2.. run tellraw @s [{"text":"[1] ","color":"yellow"},{"text":"1 Diamond","color":"gold"},{"text":" [Buy for 2 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -1"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..1 run tellraw @s [{"text":"[1] ","color":"yellow"},{"text":"1 Diamond ","color":"gold"},{"text":"[Buy for 2 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]

#2
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 2.. run tellraw @s [{"text":"[2] ","color":"yellow"},{"text":"16 Cobwebs","color":"gold"},{"text":" [Buy for 2 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -2"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..1 run tellraw @s [{"text":"[2] ","color":"yellow"},{"text":"16 Cobwebs","color":"gold"},{"text":" [Buy for 2 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]

#3
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 1.. run tellraw @s [{"text":"[3] ","color":"yellow"},{"text":"5 Experience Bottles","color":"gold"},{"text":" [Buy for 1 credit]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -3"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..0 run tellraw @s [{"text":"[3] ","color":"yellow"},{"text":"5 Experience Bottles ","color":"gold"},{"text":"[Buy for 1 credit]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]

#4
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 10.. run tellraw @s [{"text":"[4] ","color":"yellow"},{"text":"Mending Book","color":"gold"},{"text":" [Buy for 10 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -4"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..9 run tellraw @s [{"text":"[4] ","color":"yellow"},{"text":"Mending Book ","color":"gold"},{"text":"[Buy for 10 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]

#5
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 1.. run tellraw @s [{"text":"[5] ","color":"yellow"},{"text":"50 Claim blocks","color":"gold"},{"text":" [Buy for 1 credit]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -5"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..0 run tellraw @s [{"text":"[5] ","color":"yellow"},{"text":"50 Claim blocks ","color":"gold"},{"text":"[Buy for 1 credit]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]

#6
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 15.. run tellraw @s [{"text":"[6] ","color":"yellow"},{"text":"Summon a ","color":"gold"},{"text":"Glow Squid","color":"aqua"},{"text":" [Buy for 15 credits]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to purchase!","color":"green"},{"text":"\nNote: Glow Squird will spawn at your position.","color":"gray","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -6"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..14 run tellraw @s [{"text":"[6] ","color":"yellow"},{"text":"Summon a ","color":"gold"},{"text":"Glow Squid","color":"aqua"},{"text":" [Buy for 15 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]

#7
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 50.. run tellraw @s [{"text":"[7] ","color":"yellow"},{"text":"1 Elytra","color":"gold"},{"text":" [Buy for 50 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -7"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..49 run tellraw @s [{"text":"[7] ","color":"yellow"},{"text":"1 Elytra","color":"gold"},{"text":" [Buy for 50 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]

#8
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 2.. run tellraw @s [{"text":"[8] ","color":"yellow"},{"text":"1 RTP","color":"gold"},{"text":" [Buy for 2 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -8"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..1 run tellraw @s [{"text":"[8] ","color":"yellow"},{"text":"1 RTP","color":"gold"},{"text":" [Buy for 2 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]

#9
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 1.. run tellraw @s [{"text":"[9] ","color":"yellow"},{"text":"32 Steak","color":"gold"},{"text":" [Buy for 1 credit]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -9"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..0 run tellraw @s [{"text":"[9] ","color":"yellow"},{"text":"32 Steak","color":"gold"},{"text":" [Buy for 1 credit]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]

#10
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 3.. run tellraw @s [{"text":"[10] ","color":"yellow"},{"text":"1 Sponge","color":"gold"},{"text":" [Buy for 3 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -10"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..2 run tellraw @s [{"text":"[10] ","color":"yellow"},{"text":"1 Sponge","color":"gold"},{"text":" [Buy for 3 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]

#11
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 5.. run tellraw @s [{"text":"[11] ","color":"yellow"},{"text":"1 Sculk Sensor","color":"gold"},{"text":" [Buy for 5 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -11"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..4 run tellraw @s [{"text":"[11] ","color":"yellow"},{"text":"1 Sculk Sensor ","color":"gold"},{"text":" [Buy for 5 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]

#12
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 1.. run tellraw @s [{"text":"[12] ","color":"yellow"},{"text":"1 Pointed Dripstone","color":"gold"},{"text":" [Buy for 1 credit]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -12"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..0 run tellraw @s [{"text":"[12] ","color":"yellow"},{"text":"1 Pointed Dripstone ","color":"gold"},{"text":" [Buy for 1 credit]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]

#13
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 10.. run tellraw @s [{"text":"[13] ","color":"yellow"},{"text":"1 Bucket Of Axolotl","color":"gold"},{"text":" [Buy for 10 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -13"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..9 run tellraw @s [{"text":"[13] ","color":"yellow"},{"text":"1 Bucket Of Axolotl","color":"gold"},{"text":" [Buy for 10 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]

#14
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 1.. run tellraw @s [{"text":"[14] ","color":"yellow"},{"text":"1 Glow Ink Sac","color":"gold"},{"text":" [Buy for 1 credit]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -14"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..0 run tellraw @s [{"text":"[14] ","color":"yellow"},{"text":"1 Glow Ink Sac","color":"gold"},{"text":" [Buy for 1 credit]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]

#15
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 10.. run tellraw @s [{"text":"[15] ","color":"yellow"},{"text":"1 Glow Berrie","color":"gold"},{"text":" [Buy for 10 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -15"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..9 run tellraw @s [{"text":"[15] ","color":"yellow"},{"text":"1 Glow Berrie","color":"gold"},{"text":" [Buy for 10 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]

#16
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches 10.. run tellraw @s [{"text":"[16] ","color":"yellow"},{"text":"1 Moss Block","color":"gold"},{"text":" [Buy for 10 credits]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger kevote_voteshop set -16"}}]
execute if score @s kevote_voteshop matches 1 if score @s kevote_credits matches ..9 run tellraw @s [{"text":"[16] ","color":"yellow"},{"text":"1 Moss Block","color":"gold"},{"text":" [Buy for 10 credits]","italic":false,"color":"red","hoverEvent":{"action":"show_text","value":{"text":"You don't have enough credits!","color":"red"}}}]




#Purchase
execute if score @s kevote_voteshop matches -1 if score @s kevote_credits matches 2.. run give @s minecraft:diamond
execute if score @s kevote_voteshop matches -1 if score @s kevote_credits matches 2.. run scoreboard players remove @s kevote_credits 2

execute if score @s kevote_voteshop matches -2 if score @s kevote_credits matches 2.. run give @s minecraft:cobweb 16
execute if score @s kevote_voteshop matches -2 if score @s kevote_credits matches 2.. run scoreboard players remove @s kevote_credits 2

execute if score @s kevote_voteshop matches -3 if score @s kevote_credits matches 1.. run give @s minecraft:experience_bottle 5
execute if score @s kevote_voteshop matches -3 if score @s kevote_credits matches 1.. run scoreboard players remove @s kevote_credits 1

execute if score @s kevote_voteshop matches -4 if score @s kevote_credits matches 10.. run give @s minecraft:enchanted_book{StoredEnchantments:[{id:"minecraft:mending",lvl:1}]}
execute if score @s kevote_voteshop matches -4 if score @s kevote_credits matches 10.. run scoreboard players remove @s kevote_credits 10

execute if score @s kevote_voteshop matches -5 if score @s kevote_credits matches 1.. run sudo as @s ?claim blocks add ${source.name} 50
execute if score @s kevote_voteshop matches -5 if score @s kevote_credits matches 1.. run scoreboard players remove @s kevote_credits 1

execute if score @s kevote_voteshop matches -6 if score @s kevote_credits matches 15.. at @s run summon minecraft:glow_squid ~ ~ ~ {CustomName:"[{\"text\":\"Glow Squid\",\"color\":\"aqua\"}]"}
execute if score @s kevote_voteshop matches -6 if score @s kevote_credits matches 15.. run scoreboard players remove @s kevote_credits 15

execute if score @s kevote_voteshop matches -7 if score @s kevote_credits matches 50.. run give @s minecraft:elytra 1
execute if score @s kevote_voteshop matches -7 if score @s kevote_credits matches 50.. run scoreboard players remove @s kevote_credits 50

execute if score @s kevote_voteshop matches -8 if score @s kevote_credits matches 2.. run sudo as @s ?rtp add ${source.name} 1
execute if score @s kevote_voteshop matches -8 if score @s kevote_credits matches 2.. run scoreboard players remove @s kevote_credits 2

execute if score @s kevote_voteshop matches -9 if score @s kevote_credits matches 1.. run give @s minecraft:cooked_beef 32
execute if score @s kevote_voteshop matches -9 if score @s kevote_credits matches 1.. run scoreboard players remove @s kevote_credits 1

execute if score @s kevote_voteshop matches -10 if score @s kevote_credits matches 3.. run give @s minecraft:sponge 1
execute if score @s kevote_voteshop matches -10 if score @s kevote_credits matches 3.. run scoreboard players remove @s kevote_credits 3

execute if score @s kevote_voteshop matches -11 if score @s kevote_credits matches 5.. run give @s minecraft:sculk_sensor 1
execute if score @s kevote_voteshop matches -11 if score @s kevote_credits matches 5.. run scoreboard players remove @s kevote_credits 5

execute if score @s kevote_voteshop matches -12 if score @s kevote_credits matches 1.. run give @s minecraft:pointed_dripstone 1
execute if score @s kevote_voteshop matches -12 if score @s kevote_credits matches 1.. run scoreboard players remove @s kevote_credits 1

execute if score @s kevote_voteshop matches -13 if score @s kevote_credits matches 10.. run give @s minecraft:axolotl_bucket 1
execute if score @s kevote_voteshop matches -13 if score @s kevote_credits matches 10.. run scoreboard players remove @s kevote_credits 10

execute if score @s kevote_voteshop matches -14 if score @s kevote_credits matches 1.. run give @s minecraft:glow_ink_sac 1
execute if score @s kevote_voteshop matches -14 if score @s kevote_credits matches 1.. run scoreboard players remove @s kevote_credits 1

execute if score @s kevote_voteshop matches -15 if score @s kevote_credits matches 10.. run give @s minecraft:glow_berries 1
execute if score @s kevote_voteshop matches -15 if score @s kevote_credits matches 10.. run scoreboard players remove @s kevote_credits 10

execute if score @s kevote_voteshop matches -16 if score @s kevote_credits matches 10.. run give @s minecraft:moss_block 1
execute if score @s kevote_voteshop matches -16 if score @s kevote_credits matches 10.. run scoreboard players remove @s kevote_credits 10

scoreboard players reset @s kevote_voteshop
scoreboard players enable @s kevote_voteshop
