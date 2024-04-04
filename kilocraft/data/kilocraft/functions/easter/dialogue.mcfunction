execute if score @s easter_dialogue matches 0..0 run tellraw @s [{"text":"Easter Bunny: ","bold":true,"color":"#F73525"}, {"text":"Hello there, eager explorer! Are you ready for an egg-citing adventure?","bold":false,"italic":true,"color":"gray"}]
execute if score @s easter_dialogue matches 0..0 run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 0


execute if score @s easter_dialogue matches 120..120 run tellraw @s [{"selector":"@s"},": ",{"text":"Absolutely! I've been looking forward to this egg hunt all week!","italic":true,"color":"white"}]
execute if score @s easter_dialogue matches 120..120 run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1.5


execute if score @s easter_dialogue matches 160..160 run tellraw @s [{"text":"Easter Bunny: ","bold":true,"color":"#F73525"}, {"text":"Fantastic! Here's your guidebook filled with hints to uncover all the hidden treasures scattered around. Each page holds a clue leading you closer to those elusive eggs.","bold":false,"italic":true,"color":"gray"}]
execute if score @s easter_dialogue matches 160..160 run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 0
execute if score @s easter_dialogue matches 160..160 run give @s written_book[minecraft:written_book_content={pages: [{raw: '{"extra":["Look for a sweet treat at the top level of the bakery."],"text":""}'}, {raw: '{"extra":["On top of the highest mountain in a red barn, a baby chick has hatched from its shell."],"text":""}'}, {raw: '{"extra":["You can find this rabbit hiding underground in the birch forest."],"text":""}'}, {raw: '{"extra":["It\'s time for the Easter egg hunt! Get to jumping your way up to the top."],"text":""}'}, {raw: '{"extra":["A rabbit has hidden one of the eggs away. Now, you must head to spawn and find where the rabbit has hidden it."],"text":""}'}, {raw: '{"extra":["As I\'m getting ready for bed in my room at the hotel, I read a tale to help me sleep."],"text":""}'}, {raw: '{"extra":["A crazy scientist has taken the baby bunnies away and is trying to experiment on them. You must find them in the run-down house."],"text":""}'}], resolved: 1b, title: {raw: "Book of Hints"}, author: "Easter Bunny"}]

execute if score @s easter_dialogue matches 300..300 run tellraw @s [{"selector":"@s"},": ", {"text":"Thanks a bunch, Easter Bunny! Let the hunt begin!","italic":true,"color":"white"}]
execute if score @s easter_dialogue matches 300..300 run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1.5

execute if score @s easter_dialogue matches 360..360 run tellraw @s [{"text":"Easter Bunny: ","bold":true,"color":"#F73525"}, {"text":"My pleasure! Happy hunting, and may your basket overflow with delightful surprises!","bold":false,"italic":true,"color":"gray"}]
execute if score @s easter_dialogue matches 360..360 run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 0

scoreboard players add @s easter_dialogue 1