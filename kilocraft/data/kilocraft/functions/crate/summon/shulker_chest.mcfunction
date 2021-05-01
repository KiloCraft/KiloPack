# setblock 718 85 -20 minecraft:ender_chest
# Invisibility -> ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]
execute as @e[tag=kecrate, tag=!kecrate_displayitem] at @s run tp @s ~ -100 ~
execute align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~2.1 ~ {NoGravity:1b,Marker:1b,Invisible:1b,NoAI:1b,Tags:["kecrate_name", "kecrate"],CustomName: '[{"text":"||","color":"#F57EF7","obfuscated":true},{"text":"Vote Crate","color":"#F200FF","obfuscated":false},{"text":"||","color":"#F57EF7","obfuscated":true}]',CustomNameVisible:1b}
execute align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~1.8 ~ {NoGravity:1b,Marker:1b,Invisible:1b,NoAI:1b,Tags:["kecrate_name", "kecrate"],CustomName: '[{"text":"[","color":"#6e6e6e"}, {"text":"Leftclick to open", "color":"#d6d6d6"}, {"text":"]","color":"#6e6e6e"}]',CustomNameVisible:1b}
execute align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~1 ~ {NoGravity:1b,Marker:1b,Invisible:1b,NoAI:1b,Tags:["kecrate_particle", "kecrate"]}
execute align xyz positioned ~.5 ~ ~.5 run summon shulker ~ ~ ~ {Color:15b,Peek:0,Silent:1b,Health:2147483647f,Attributes:[{Name:"generic.max_health",Base:2147483647}],NoAI:1b,AttachFace:0b,Tags:["kecrate_shulker", "kecrate"], AbsorptionAmount:2147483647f}
