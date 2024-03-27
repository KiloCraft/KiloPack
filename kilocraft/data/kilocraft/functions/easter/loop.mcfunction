execute as @e[tag=easter] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[tag=easter] at @s rotated as @s run particle minecraft:portal ^ ^1 ^0.5 0.001 0.001 0.001 0 3
execute as @e[tag=easter] at @s rotated as @s run particle minecraft:portal ^ ^1 ^-0.5 0.001 0.001 0.001 0 3
execute as @e[tag=easter_hints] at @s run execute as @a[distance=..3] unless score @s easter_dialogue matches 0.. run scoreboard players set @s easter_dialogue 0
execute as @e[tag=easter_hints] at @s run execute as @a if score @s easter_dialogue matches ..1000 at @s run function kilocraft:easter/dialogue


# /execute align xyz run summon armor_stand ~.5 ~-1.4 ~.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["easter","easterX"]}
function kilocraft:easter/check {tag: "easter1", texture: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmIyNmMxMjJlZGYwZDExZTQ2NWE1OTEyMDkwMDYwYWUyOTI3NGQyM2IxOWZkYjhkNzdiMWQ0YjM3NzNhN2VjZCJ9fX0=", name:"Carrot Cake"}
function kilocraft:easter/check {tag: "easter2", texture: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDAwMTRjZTA3NGVhNmU3MTkyODdlNzRhNzk2MTVkNTkyOWZjNmZmNDJhYzgxYTdlMWU0NWEwMDVmNzY0MjE3OSJ9fX0=", name:"ChickEgg"}
function kilocraft:easter/check {tag: "easter3", texture: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjE3NTVmYjA0NDk4YzYyOWE1MzRhMTg4MjkwNWMzYWQ5MTFiZTJmNTI3YjgxZmU4YmI4NjBkMGM4YTczM2QyZSJ9fX0=", name:"Chocolate Bunny"}
function kilocraft:easter/check {tag: "easter4", texture: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWY1NWM1MDVkN2YwMDEzNWI1ZjUyMjViNzVjZDkyZWQxMjIwMWNjOTVjNDFkZWVkOGE3N2RhOGZkNmI3Yjk2MyJ9fX0=", name:"Easter Egg"}
function kilocraft:easter/check {tag: "easter5", texture: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTg5ZDY1YWM3NTg2YTI3YzBjNWQyMjZmZDYzY2I5ODliZWU3YzYyYTRlODBkZDFmMWFlYTJlMjJjMTYxMWNkZiJ9fX0=", name:"Easter Basket"}
function kilocraft:easter/check {tag: "easter6", texture: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDkxOTIxMTk3ZTNkNThjNzUzOTRjNzZmMjJmZDViMTAyMWQ1YmI0YTE3NmNlYTM4YmFiMmE3MzZkYjJiMDMzZSJ9fX0=", name:"Peter's Bunny Tale"}
function kilocraft:easter/check {tag: "easter7", texture: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWRiNWNlMGQ0NGMzZTgxMzhkYzJlN2U1MmMyODk3YmI4NzhlMWRiYzIyMGQ3MDY4OWM3YjZiMThkMzE3NWUwZiJ9fX0=", name:"Mysterious Egg"}
