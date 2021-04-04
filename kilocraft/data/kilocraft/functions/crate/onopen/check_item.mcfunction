execute if entity @s[nbt=!{Inventory:[{id:"minecraft:firework_star",tag:{VoteKey:1b}}]}] run function kilocraft:crate/onopen/error/no_key
execute if entity @s[nbt={Inventory:[{id:"minecraft:firework_star",tag:{VoteKey:1b}}]}] run function kilocraft:crate/onopen/open_crate
