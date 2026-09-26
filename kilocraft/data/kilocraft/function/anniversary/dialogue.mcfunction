execute if score @s anniversary_dialogue matches 0..0 run tellraw @s [{"text":"Mr. KiloCraft: ","bold":true,"color":"#F73525"}, {"text":"Greetings, brave adventurers! I'm Mr. KiloCraft, and I've got something special for you. Are you ready for a great adventure?","bold":false,"italic":true,"color":"gray"}]
execute if score @s anniversary_dialogue matches 0..0 run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 0


execute if score @s anniversary_dialogue matches 120..120 run tellraw @s [{"selector":"@s"},": ",{"text":"Yes, Mr. KiloCraft! What's this adventure about?","italic":true,"color":"white"}]
execute if score @s anniversary_dialogue matches 120..120 run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1.5


execute if score @s anniversary_dialogue matches 160..160 run tellraw @s [{"text":"Mr. KiloCraft: ","bold":true,"color":"#F73525"}, {"text":"Well, my friend, it's time for a scavenger hunt! I've hidden 12 special player heads just for you. But don't worry! I've got a special book of hints to guide you on your quest.","bold":false,"italic":true,"color":"gray"}]
execute if score @s anniversary_dialogue matches 160..160 run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 0


execute if score @s anniversary_dialogue matches 300..300 run tellraw @s [{"selector":"@s"},": ", {"text":"A scavenger hunt? That sounds like fun! How do I get started?","italic":true,"color":"white"}]
execute if score @s anniversary_dialogue matches 300..300 run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1.5


execute if score @s anniversary_dialogue matches 360..360 run tellraw @s [{"text":"Mr. KiloCraft: ","bold":true,"color":"#F73525"}, {"text":"I'll give you the book of hints. Each hint will lead you closer to one of the hidden player heads.","bold":false,"italic":true,"color":"gray"}]
execute if score @s anniversary_dialogue matches 360..360 run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 0
execute if score @s anniversary_dialogue matches 360..360 run give @s written_book[written_book_content={resolved:true,pages:[{raw: "----Book of Hints----\n\n\n\n\nHint 1: Beyond the passage from one world into another."}, {raw: "----Book of Hints----\n\n\n\n\nHint 2: A warm little place to cook and relax."}, {raw: "----Book of Hints----\n\n\n\n\nHint 3: Where the Holz reveals itself most deeply."}, {raw: "----Book of Hints----\n\n\n\n\nHint 4: Finish the parkour. And go further."}, {raw: "----Book of Hints----\n\n\n\n\nHint 5: Blood on the Dancefloor!"}, {raw: "----Book of Hints----\n\n\n\n\nHint 6: Where did Truman go?"}, {raw: "----Book of Hints----\n\n\n\n\nHint 7: The Maker of Homes"}, {raw: "----Book of Hints----\n\n\n\n\nHint 8: On top of the Sea Beast."}, {raw: "----Book of Hints----\n\n\n\n\nHint 9: Lonely Camping"}, {raw: "----Book of Hints----\n\n\n\n\nHint 10: Reach the lighthouse and obtain the highground."}, {raw: "----Book of Hints----\n\n\n\n\nHint 11: The beach bar now also serves cake!"}, {raw: "----Book of Hints----\n\n\n\n\nHint 12: So where could I hide the KiloCraft icon head?"}],title:"Book of Hints",author:"Mr. KiloCraft"}]

execute if score @s anniversary_dialogue matches 480..480 run tellraw @s [{"selector":"@s"},": ", {"text":"That sounds amazing! Thank you, Mr. KiloCraft! I'll embark on this adventure right away!","italic":true,"color":"white"}]
execute if score @s anniversary_dialogue matches 480..480 run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1.5


execute if score @s anniversary_dialogue matches 540..540 run tellraw @s [{"text":"Mr. KiloCraft: ","bold":true,"color":"#F73525"}, {"text":"Good luck, brave soul, and enjoy the scavenger hunt of the 10th anniversary. Remember, it's not just about finding the heads but enjoying the journey! Have fun!","bold":false,"italic":true,"color":"gray"}]
execute if score @s anniversary_dialogue matches 540..540 run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 0

scoreboard players add @s anniversary_dialogue 1