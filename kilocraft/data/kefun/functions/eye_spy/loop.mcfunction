execute at @a[nbt={Inventory:[{id:"minecraft:ender_eye",tag:{EyeSpy:1b}}]}] run scoreboard players add kefun_eyespy var 1
execute at @a[nbt={Inventory:[{id:"minecraft:ender_eye",tag:{EyeSpy:1b}}]}] run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~
execute as @a[nbt={Inventory:[{id:"minecraft:ender_eye",tag:{EyeSpy:1b}}]}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_purple"},{"text":" has found pearl ","color":"light_purple"},{"score":{"name":"kefun_eyespy","objective":"var"},"bold":true,"color":"dark_purple"},{"text":" of 12!","color":"light_purple"}]

execute at @a[nbt={Inventory:[{id:"minecraft:ender_eye",tag:{EyeSpy:1b}}]}] run execute if score kefun_eyespy var matches 4 run execute at @a run playsound minecraft:entity.endermite.hurt master @p ~ ~ ~
execute at @a[nbt={Inventory:[{id:"minecraft:ender_eye",tag:{EyeSpy:1b}}]}] run execute if score kefun_eyespy var matches 8 run execute at @a run playsound minecraft:entity.enderman.scream master @p ~ ~ ~
execute at @a[nbt={Inventory:[{id:"minecraft:ender_eye",tag:{EyeSpy:1b}}]}] run execute if score kefun_eyespy var matches 12 run execute at @a run playsound minecraft:entity.ender_dragon.growl master @p ~ ~ ~
execute at @a[nbt={Inventory:[{id:"minecraft:ender_eye",tag:{EyeSpy:1b}}]}] run execute if score kefun_eyespy var matches 3 run tellraw @a {"text":"The server is shaking with some kind of energy","color":"dark_purple"}
execute at @a[nbt={Inventory:[{id:"minecraft:ender_eye",tag:{EyeSpy:1b}}]}] run execute if score kefun_eyespy var matches 5 run tellraw @a {"text":"Screams echo in the distance...","color":"dark_purple"}
execute at @a[nbt={Inventory:[{id:"minecraft:ender_eye",tag:{EyeSpy:1b}}]}] run execute if score kefun_eyespy var matches 7 run tellraw @a {"text":"A cold wave of air sweeps through the world","color":"dark_purple"}
execute at @a[nbt={Inventory:[{id:"minecraft:ender_eye",tag:{EyeSpy:1b}}]}] run execute if score kefun_eyespy var matches 10 run tellraw @a {"text":"You are shaking in fear","color":"dark_purple"}
execute at @a[nbt={Inventory:[{id:"minecraft:ender_eye",tag:{EyeSpy:1b}}]}] run execute if score kefun_eyespy var matches 12 run tellraw @a {"text":"The last eye has been collected!  A dark presence is approaching the server...","color":"dark_purple"}

execute at @a[nbt={Inventory:[{id:"minecraft:ender_eye",tag:{EyeSpy:1b}}]}] run clear @s minecraft:ender_eye{EyeSpy:1b}

schedule function kefun:eye_spy/loop 1s