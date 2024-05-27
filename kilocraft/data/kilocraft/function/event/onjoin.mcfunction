function kilocraft:vote/onjoin
function kilocraft:trigger/enable

tellraw @s ["",{"text":"=========== ","color":"yellow"},{"text":"[IMPORTANT ANNOUNCEMENT]","bold":true,"color":"gold"},{"text":" =============","color":"yellow"}]
tellraw @s ["",{"text":"We are aiming to do a full ","color":"#79F230"},{"text":"reset ","color":"#94EAEA"},{"text":"of the server on ","color":"#79F230"},{"text":"Saturday, 8 June 2024 ","color":"#94EAEA"},{"text":"at 15:00 EST (19:00 UTC)!","color":"#79F230"},{"text":"\nWe are also looking for new ","color":"#79F230"},{"text":"staff members","color":"#94EAEA"},{"text":" and","color":"#79F230"},{"text":" event managers","color":"#94EAEA"},{"text":"!","color":"#79F230"},{"text":"\nFor more information about this and more, please join our ","color":"gray"},{"text":"discord server","color":"#675FF7","clickEvent":{"action":"open_url","value":"https://discord.com/invite/Ss5muBFFGt"}}]
tellraw @s {"text":"====================================================","color":"yellow"}

scoreboard players remove @s kemain_onjoin 1
