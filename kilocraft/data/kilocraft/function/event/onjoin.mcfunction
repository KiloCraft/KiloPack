function kilocraft:vote/onjoin
function kilocraft:trigger/enable

tellraw @s ["",{"text":"=========== ","color":"yellow"},{"text":"[IMPORTANT ANNOUNCEMENT]","bold":true,"color":"gold"},{"text":" =============","color":"yellow"}]
tellraw @s ["",{"text":"We are aiming to do a full ","color":"#79F230"},{"text":"reset ","color":"#94EAEA"},{"text":"of the server on ","color":"#79F230"},{"text":"Saturday, 16 August 2025!","color":"#94EAEA"},{"text":"\nFor more information about this and more, please join our ","color":"gray"},{"text":"discord server","color":"#675FF7","click_event":{"action":"open_url","url":"https://discord.gg/Ss5muBFFGt"}}]
tellraw @s {"text":"====================================================","color":"yellow"}

scoreboard players remove @s kemain_onjoin 1
