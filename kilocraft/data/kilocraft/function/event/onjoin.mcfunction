function kilocraft:vote/onjoin
function kilocraft:trigger/enable

tellraw @s ["",{"text":"============= ","color":"yellow"},{"text":"[EVENT ANNOUNCEMENT]","bold":true,"color":"gold"},{"text":" ===============","color":"yellow"}]
tellraw @s ["",{"text":"We will host an ","color":"#79F230"},{"text":"Ice Boat Racing Tournament","color":"#94EAEA"},{"text":" on ","color":"#79F230"},{"text":"Saturday, August 17th 2024 ","color":"#94EAEA"},{"text":"at 15:00 EST (19:00 UTC)!","color":"#79F230"},{"text":"\nEveryone can join!","color":"gold", "italic": true},{"text":"\nFor more information about this and more, please join our ","color":"gray"},{"text":"discord server","color":"#675FF7","clickEvent":{"action":"open_url","value":"https://discord.com/invite/Ss5muBFFGt"}}]
tellraw @s {"text":"====================================================","color":"yellow"}

scoreboard players remove @s kemain_onjoin 1
