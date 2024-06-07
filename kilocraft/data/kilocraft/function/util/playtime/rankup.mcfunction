
execute unless permission @s group.player if score @s keutil_minutes matches 300.. if score @s kevote_total matches 10.. run lp user @s parent add player
execute unless permission @s group.player_plus if score @s keutil_minutes matches 1500.. if score @s kevote_total matches 40.. run lp user @s parent add player_plus
execute unless permission @s group.member if score @s keutil_minutes matches 5000.. if score @s kevote_total matches 80.. run lp user @s parent add member
execute unless permission @s group.kilocrafter if score @s keutil_minutes matches 10000.. if score @s kevote_total matches 120.. run lp user @s parent add kilocrafter
execute unless permission @s group.kilocrafter_plus if score @s keutil_minutes matches 30000.. if score @s kevote_total matches 250.. run lp user @s parent add kilocrafter_plus

#advancement
execute if entity @s[advancements={kilocraft:survival/ranks/player_rank=false}] if score @s keutil_minutes matches 300.. if score @s kevote_total matches 10.. run advancement grant @s only kilocraft:survival/ranks/player_rank
execute if entity @s[advancements={kilocraft:survival/ranks/player_plus_rank=false}] if score @s keutil_minutes matches 1500.. if score @s kevote_total matches 40.. run advancement grant @s only kilocraft:survival/ranks/player_plus_rank
execute if entity @s[advancements={kilocraft:survival/ranks/member_rank=false}] if score @s keutil_minutes matches 5000.. if score @s kevote_total matches 80.. run advancement grant @s only kilocraft:survival/ranks/member_rank
execute if entity @s[advancements={kilocraft:survival/ranks/kilocrafter_rank=false}] if score @s keutil_minutes matches 10000.. if score @s kevote_total matches 120.. run advancement grant @s only kilocraft:survival/ranks/kilocrafter_rank
execute if entity @s[advancements={kilocraft:survival/ranks/kilocrafter_plus_rank=false}] if score @s keutil_minutes matches 30000.. if score @s kevote_total matches 250.. run advancement grant @s only kilocraft:survival/ranks/kilocrafter_plus_rank