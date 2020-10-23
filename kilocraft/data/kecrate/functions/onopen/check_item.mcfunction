execute if entity @s[nbt=!{Inventory:[{id:"minecraft:firework_star",tag:{VoteKey:1b}}]}] run function kecrate:onopen/no_key
execute if entity @s[nbt={Inventory:[{id:"minecraft:firework_star",tag:{VoteKey:1b}}]}] run function kecrate:onopen/open_crate
