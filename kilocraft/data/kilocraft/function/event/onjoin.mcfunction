function kilocraft:vote/onjoin
function kilocraft:trigger/enable

scoreboard players remove @s kemain_onjoin 1

tellraw @s[tag=!survey_modded] [{"text":"Hello ","color":"green"},{"selector":"@s"},{"text":"! We're considering a big change: moving from snapshots to server-side mods to bring fresh, unique content without requiring players to install anything. This could let us focus on fun updates rather than fixing snapshot bugs. Check out ","color":"green"}, {"text":"Polymania","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://modrinth.com/modpack/polymania"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to open!","color":"gray"}]}}, {"text":" to see what's possible!","color":"green"}, {"text":"\n\nWe're also planning a server reset soon and need your feedback on timing and ideas for the future. Take our survey for a chance to win 1 Month Ultimate!"}, {"text":"\n\nYour opinions matter! Fill out the survey and help shape Kilocraft's future. Thank you for being an amazing community!","color":"green"},{"text":"\n[Potential Changes and Reset Survey]","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://docs.google.com/forms/d/e/1FAIpQLSfMucEFt7SbRA2--DYOP1S11gOKxY19OX-I0NUEDHjEqMgvig/viewform"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to open survey!","color":"gray"}]}},{"text":"\n\n~ Your Kilocraft Staff Team","italic":true},{"text":" ❤","color":"red","italic":true}]

playsound minecraft:entity.player.levelup master @s[tag=!survey_modded] ~ ~ ~ 1 0
tag @s add survey_modded