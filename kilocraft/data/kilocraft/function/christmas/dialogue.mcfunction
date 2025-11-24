execute if score @s christmas_dialogue matches 0..0 run tellraw @s [{"text":"Santa: ","bold":true,"color":"#F73525"}, {"text":"Ho ho ho! Greetings, brave adventurers! I'm Santa Claus, and I've got something special for you this festive season. Are you ready for a jolly good time?","bold":false,"italic":true,"color":"gray"}]
execute if score @s christmas_dialogue matches 0..0 run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 0


execute if score @s christmas_dialogue matches 120..120 run tellraw @s [{"selector":"@s"},": ",{"text":"Yes, Santa! What's the surprise?","italic":true,"color":"white"}]
execute if score @s christmas_dialogue matches 120..120 run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1.5


execute if score @s christmas_dialogue matches 160..160 run tellraw @s [{"text":"Santa: ","bold":true,"color":"#F73525"}, {"text":"Well, my friends, it's time for a merry scavenger hunt! In the snowy corners of our Christmas-themed spawn world, I've hidden 8 special player heads just for you. But fear not! I've got a magical book of hints to guide you on your quest.","bold":false,"italic":true,"color":"gray"}]
execute if score @s christmas_dialogue matches 160..160 run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 0


execute if score @s christmas_dialogue matches 300..300 run tellraw @s [{"selector":"@s"},": ", {"text":"A scavenger hunt? That sounds like fun! How do I get started?","italic":true,"color":"white"}]
execute if score @s christmas_dialogue matches 300..300 run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1.5


execute if score @s christmas_dialogue matches 360..360 run tellraw @s [{"text":"Santa: ","bold":true,"color":"#F73525"}, {"text":"I'll gift you the book of hints. Each hint will lead you closer to one of the hidden player heads. It's a challenge that will test your wits and fill your heart with the joy of the season!","bold":false,"italic":true,"color":"gray"}]
execute if score @s christmas_dialogue matches 360..360 run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 0
execute if score @s christmas_dialogue matches 360..360 run give @s written_book[written_book_content={resolved:true,pages:["1. Locate the newly installed Ski Lift in the town and take a trip to visit the grinch!","2. Quick! Your train is about to leave the station! be sure to get seated promptly.","3. I heard the elves have been busy, head to Santa's Workshop to see what they've been up to!","4. Kevin is Home Alone! Go visit him and make sure he's okay","5. Oh no, one of your presents have gone missing! Head towards the warehouse to locate it.","6. You've been invited around by the Snowman, accept his invitation and chill out in the igloo!","7. Someone's trapped inside the bakery! Investigate and rescue them immediately!","8. Join the annual neighbourhood snowball fight! I hear there's a prize to be won!",{"text":"1. The Grinch\n2. Toy Train\n3. Nutcracker\n4. Hot Chocolate\n5. Present\n6. Snowman\n7. Gingerbread Man\n8. Snow Globe"}],title:"Book of Hints",author:Santa}]

execute if score @s christmas_dialogue matches 480..480 run tellraw @s [{"selector":"@s"},": ", {"text":"That sounds amazing! Thank you, Santa! I'll embark on this festive adventure right away!","italic":true,"color":"white"}]
execute if score @s christmas_dialogue matches 480..480 run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1.5


execute if score @s christmas_dialogue matches 540..540 run tellraw @s [{"text":"Santa: ","bold":true,"color":"#F73525"}, {"text":"Ho ho ho! Good luck, brave souls, and may the spirit of Christmas guide you on your scavenger hunt. Remember, it's not just about finding the heads but enjoying the journey! Have fun!","bold":false,"italic":true,"color":"gray"}]
execute if score @s christmas_dialogue matches 540..540 run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 0

scoreboard players add @s christmas_dialogue 1