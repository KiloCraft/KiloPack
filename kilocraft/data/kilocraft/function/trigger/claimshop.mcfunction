execute if score @s claimshop matches 1 run tellraw @s ["",{"text":"Claim shop: ","color":"gold", "bold":true},{"text":"\n"},{"text":"[1] ","color":"yellow"},{"text":"50 Claim blocks","color":"gold"},{"text":" [Buy for 1 diamond]","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger claimshop set -1"}},{"text":"\n"},{"text":"[2] ","color":"yellow"},{"text":"3200 Claim blocks","color":"gold"},{"text":" [Buy for 64 diamonds]","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger claimshop set -2"}},{"text":"\n"},{"text":"[3] ","color":"yellow"},{"text":"450 Claim blocks","color":"gold"},{"text":" [Buy for 1 diamond block]","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger claimshop set -3"}},{"text":"\n"},{"text":"[4] ","color":"yellow"},{"text":"28800 Claim blocks","color":"gold"},{"text":" [Buy for 64 diamond blocks]","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Click to purchase!","color":"green"}},"clickEvent":{"action":"run_command","value":"/trigger claimshop set -4"}}]

execute if entity @s[nbt={"SelectedItem":{id:"minecraft:diamond"}},scores={claimshop=-1..-1}] run tag @s add buydia
execute if entity @s[nbt={"SelectedItem":{id:"minecraft:diamond",count:64}},scores={claimshop=-2..-2}] run tag @s add buydiastack
execute if entity @s[nbt={"SelectedItem":{id:"minecraft:diamond_block"}},scores={claimshop=-3..-3}] run tag @s add buydiablock
execute if entity @s[nbt={"SelectedItem":{id:"minecraft:diamond_block",count:64}},scores={claimshop=-4..-4}] run tag @s add buydiablockstack

tellraw @s[tag=!buydia,scores={claimshop=-1..-1}] {"text":"Hold a diamond in your Main Hand to buy claim blocks","color":"dark_red"}
tellraw @s[tag=!buydiastack,scores={claimshop=-2..-2}] {"text":"Hold 64 diamonds in your Main Hand to buy claim blocks","color":"dark_red"}
tellraw @s[tag=!buydiablock,scores={claimshop=-3..-3}] {"text":"Hold a diamond block in your Main Hand to buy claim blocks","color":"dark_red"}
tellraw @s[tag=!buydiablockstack,scores={claimshop=-4..-4}] {"text":"Hold 64 diamond blocks in your Main Hand to buy claim blocks","color":"dark_red"}

# Remove the ingot
clear @s[tag=buydia] minecraft:diamond 1
clear @s[tag=buydiastack] minecraft:diamond 64
clear @s[tag=buydiablock] minecraft:diamond_block 1
clear @s[tag=buydiablockstack] minecraft:diamond_block 64

# Give the claim blocks
claim blocks add @p[tag=buydia] 50
claim blocks add @p[tag=buydiastack] 3200
claim blocks add @p[tag=buydiablock] 450
claim blocks add @p[tag=buydiablockstack] 28800

# Tell them they got blocks
tellraw @s[tag=buydia] {"text":"You have bought 50 claim blocks with 1 diamond","color":"green"}
tellraw @s[tag=buydiastack] {"text":"You have bought 3200 claim blocks with 64 diamonds","color":"green"}
tellraw @s[tag=buydiablock] {"text":"You have bought 450 claim blocks with 1 diamond block","color":"green"}
tellraw @s[tag=buydiablockstack] {"text":"You have bought 28800 claim blocks with 64 diamond blocks","color":"green"}

# Reset claimblock buy flags
tag @s[tag=buydia] remove buydia
tag @s[tag=buydiastack] remove buydiastack
tag @s[tag=buydiablock] remove buydiablock
tag @s[tag=buydiablockstack] remove buydiablockstack

scoreboard players reset @s claimshop
scoreboard players enable @s claimshop
