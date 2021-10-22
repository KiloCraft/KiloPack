execute if entity @s[permission=!group.player] if score @s keutil_minutes matches 300.. if score @s kevote_total matches 8.. run sudo as @s ?lp user ${source.uuid} parent add player
execute if entity @s[permission=!group.player_plus] if score @s keutil_minutes matches 1500.. if score @s kevote_total matches 32.. run sudo as @s ?lp user ${source.uuid} parent add player_plus
execute if entity @s[permission=!group.member] if score @s keutil_minutes matches 5000.. if score @s kevote_total matches 64.. run sudo as @s ?lp user ${source.uuid} parent add member
execute if entity @s[permission=!group.kilocrafter] if score @s keutil_minutes matches 10000.. if score @s kevote_total matches 96.. run sudo as @s ?lp user ${source.uuid} parent add kilocrafter
execute if entity @s[permission=!group.kilocrafter_plus] if score @s keutil_minutes matches 30000.. if score @s kevote_total matches 200.. run sudo as @s ?lp user ${source.uuid} parent add kilocrafter_plus
