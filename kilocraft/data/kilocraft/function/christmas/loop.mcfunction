execute as @e[tag=christmas] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[tag=christmas] at @s rotated as @s run particle minecraft:portal ^ ^1 ^0.5 0.001 0.001 0.001 0 3
execute as @e[tag=christmas] at @s rotated as @s run particle minecraft:portal ^ ^1 ^-0.5 0.001 0.001 0.001 0 3
execute as @e[tag=christmas_hints] at @s run execute as @a[distance=..3] unless score @s christmas_dialogue matches 0.. run scoreboard players set @s christmas_dialogue 0
execute as @e[tag=christmas_hints] at @s run execute as @a if score @s christmas_dialogue matches ..1000 at @s run function kilocraft:christmas/dialogue


# /execute align xyz run summon armor_stand ~.5 ~-1.4 ~.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["christmas","christmasX"]}
function kilocraft:christmas/check {tag: "christmas1", texture: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2Y0NzQxZjVkOTYyMjY4MjIxNzYzNWI0MmVlNzM5ODRjOTlhNDFjYTYyZDMyMzE3YmZiOWMzOTkxZmNmOGUxMiJ9fX0=", name:"The Grinch"}
function kilocraft:christmas/check {tag: "christmas2", texture: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmVmMzU5OWMxNDVkMzcyZWE5ODY5ODc3NjNlMjQ5OGQyMWI1NjdkNzFmYmY3ZTIzZDVmYTgxOTdlOWFkMWQifX19", name:"Toy Train"}
function kilocraft:christmas/check {tag: "christmas3", texture: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjMwMDI2ZjNmMTRlZGExM2Y5NjA3MGUyYmI1MDFkN2I5MTkxNjlhNmQxNTgyZjQxMjE2MzNiMzc3OThhZWFkIn19fQ==", name:"Nutcracker"}
function kilocraft:christmas/check {tag: "christmas4", texture: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODI5ZTg4NThlNGUwYzE3NTEzMTNlZjU4YWRhZjM0YzIxNjk4N2Y3NzhiMmI5ODQ4MWU5ZWNiOTFhNzE5NCJ9fX0=", name:"Hot Chocolate"}
function kilocraft:christmas/check {tag: "christmas5", texture: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTQ3ZjdhZWU1ZTc4MjQwMWZjYWQ3NWUwYWI2NTY1NzA2Zjc5YmU1NjliN2RhNjc1ZjAwYjhhZjJmNzcwOTc0MiJ9fX0=", name:"Present"}
function kilocraft:christmas/check {tag: "christmas6", texture: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTExMzY2MTZkOGM0YTg3YTU0Y2U3OGE5N2I1NTE2MTBjMmIyYzhmNmQ0MTBiYzM4Yjg1OGY5NzRiMTEzYjIwOCJ9fX0=", name:"Snowman"}
function kilocraft:christmas/check {tag: "christmas7", texture: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzAyM2IxZGQ5MWQyYjM2Y2FkZTU2NjVjM2Y3ODk3ZmNiOGRlMWFlNjE5YTRlOTYxODU2MzdiMTliZGNmZjQ3In19fQ==", name:"Gingerbread Man"}
function kilocraft:christmas/check {tag: "christmas8", texture: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTMyMjlmODUyNTcyNjY4NGZiMDIyN2RhZDc2MjFmMDVmMGI4YjVkNThhODY5M2ZkMGVhMDY4ODM0OWYxZDUzYyJ9fX0=", name:"Snow Globe"}