execute if score @s christmas_dialogue matches 0..0 run tellraw @s [{"text":"Santa: ","bold":true,"color":"#F73525"}, {"text":"Ho ho ho! Greetings, brave adventurers! I'm Santa Claus, and I've got something special for you this festive season. Are you ready for a jolly good time?","bold":false,"italic":true,"color":"gray"}]
execute if score @s christmas_dialogue matches 0..0 run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 0


execute if score @s christmas_dialogue matches 120..120 run tellraw @s [{"selector":"@s"},": ",{"text":"Yes, Santa! What's the surprise?","italic":true,"color":"white"}]
execute if score @s christmas_dialogue matches 120..120 run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1.5


execute if score @s christmas_dialogue matches 160..160 run tellraw @s [{"text":"Santa: ","bold":true,"color":"#F73525"}, {"text":"Well, my friends, it's time for a merry scavenger hunt! In the snowy corners of our Christmas-themed spawn world, I've hidden 12 special player heads just for you. But fear not! I've got a magical book of hints to guide you on your quest.","bold":false,"italic":true,"color":"gray"}]
execute if score @s christmas_dialogue matches 160..160 run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 0


execute if score @s christmas_dialogue matches 300..300 run tellraw @s [{"selector":"@s"},": ", {"text":"A scavenger hunt? That sounds like fun! How do I get started?","italic":true,"color":"white"}]
execute if score @s christmas_dialogue matches 300..300 run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1.5


execute if score @s christmas_dialogue matches 360..360 run tellraw @s [{"text":"Santa: ","bold":true,"color":"#F73525"}, {"text":"I'll gift you the book of hints. Each hint will lead you closer to one of the hidden player heads. It's a challenge that will test your wits and fill your heart with the joy of the season!","bold":false,"italic":true,"color":"gray"}]
execute if score @s christmas_dialogue matches 360..360 run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 0
execute if score @s christmas_dialogue matches 360..360 run give @s written_book{pages:["[\"\",\"\\n\",\"\\n\",\"\\n\",\"\\n\",\"\\n\",{\"text\":\"   BOOK OF HINTS\",\"bold\":true,\"color\":\"dark_purple\"}]","[\"\",\"1. Check for a \",{\"text\":\"festive sweet treat\",\"color\":\"gray\"},\" on the top floor of your local bakery!\"]","[\"\",\"2. Someone scattered a trail of \",{\"text\":\"red \",\"color\":\"red\"},{\"text\":\"LEGO\",\"bold\":true,\"color\":\"red\"},{\"text\":\" bricks\",\"color\":\"red\"},\" somewhere along the ice, go find out who's responsible!\"]","[\"\",\"3. A \",{\"text\":\"portal\",\"color\":\"#FF9A00\"},\" has spit out a mysterious \",{\"text\":\"cube\",\"color\":\"#27A7D8\"},\" in the Toy Shop, go investigate!\"]","[\"\",\"4. A mischievous \",{\"text\":\"goblin\",\"color\":\"#26A269\"},\" has mined up all the \",{\"text\":\"gold\",\"color\":\"#F5C211\"},\" in the caves! Go find his stash!\"]","\"5. Santa's workshop is busy at this time of year, locate his workshop and check out what presents are being made!\"","\"6. The Staff team are feeling festive this year!\"","\"7. Located at the top of a structure which helps to guide lost sailors at sea!\"","[\"\",\"8. \",{\"text\":\"Paul the cat\",\"color\":\"#FFA348\"},\" is stuck in the Christmas tree! Find your way up to rescue!\"]","\"9. Taking a nap in his Hotel Room, try not to disturb him!\"","[\"\",\"10. Enjoying the weather in their new \",{\"text\":\"Igloo\",\"color\":\"#9A9996\"},\" Home!\"]","[\"\",\"11. This hillside house is perfect for a Christmas feast! Find the \",{\"text\":\"secret\",\"bold\":true,\"italic\":true,\"underlined\":true,\"strikethrough\":true},\" tunnel to join the party!\"]","[\"\",\"12. Help! This poor \",{\"text\":\"Gingerbread\",\"color\":\"#9F5529\"},\" Man has been captured! Scout out the brown buildings and save him!\"]","[\"\",\"1. Christmas Pudding\",\"\\n\",\"2. LEGO Head\",\"\\n\",\"3. Companion Cube\",\"\\n\",\"4. Gregghe Plushie\",\"\\n\",\"5. _Neolight Plushie\",\"\\n\",\"6. unspell Plushie\",\"\\n\",\"7. Santa Drex\",\"\\n\",\"8. Paul the Cat\",\"\\n\",\"9. Nutcracker\",\"\\n\",\"10. Snowman\",\"\\n\",\"11. Cooked Ham\",\"\\n\",\"12. Gingerbread Man\"]"],title:"Book of Hints",author:Santa}

execute if score @s christmas_dialogue matches 480..480 run tellraw @s [{"selector":"@s"},": ", {"text":"That sounds amazing! Thank you, Santa! I'll embark on this festive adventure right away!","italic":true,"color":"white"}]
execute if score @s christmas_dialogue matches 480..480 run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1.5


execute if score @s christmas_dialogue matches 540..540 run tellraw @s [{"text":"Santa: ","bold":true,"color":"#F73525"}, {"text":"Ho ho ho! Good luck, brave souls, and may the spirit of Christmas guide you on your scavenger hunt. Remember, it's not just about finding the heads but enjoying the journey! Have fun!","bold":false,"italic":true,"color":"gray"}]
execute if score @s christmas_dialogue matches 540..540 run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 0

scoreboard players add @s christmas_dialogue 1