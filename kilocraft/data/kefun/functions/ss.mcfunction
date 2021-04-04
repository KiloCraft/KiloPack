tellraw @a[scores={kefun_ss=2}] ["",{"text":"===== Secret Santa =====","color":"red"},{"text":"\n"},{"text":"Hello ","color":"green"},{"selector":"@s","color":"dark_green"},{"text":"! Thank you for signing up for Secret Santa!  You have received your bundle and book and quill for your gift!  ","color":"green"}]
give @a[scores={kefun_ss=2}] bundle{Items:[{id:"minecraft:writable_book",Count: 1b}],display:{Lore:['[{"text":"Happy Holidays!","italic":false,"color":"green"}]'],Name:'[{"text":"Secret Santa Bundle","italic":false,"color":"red"}]'}}
scoreboard players set @a[scores={kefun_ss=2}] kefun_ss 1

schedule function kefun:ss 60s
