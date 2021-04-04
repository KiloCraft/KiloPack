#rules
execute as @a[scores={keutil_rules=1..}] run function keutil:player_utils/rules
execute as @a[scores={keutil_rules=..-1}] run function keutil:player_utils/rules

#rankinfo
execute as @a[scores={keutil_rankinfo=1..}] run function keutil:player_utils/rankinfo
execute as @a[scores={keutil_rankinfo=..-1}] run function keutil:player_utils/rankinfo

#voteshop
execute as @a[scores={kevote_voteshop=1..}] run function kevote:voteshop
execute as @a[scores={kevote_voteshop=..-1}] run function kevote:voteshop

#claimshop
execute as @a[scores={keutil_claimshop=1..}] run function keutil:player_utils/claimshop
execute as @a[scores={keutil_claimshop=..-1}] run function keutil:player_utils/claimshop

#hug
sudo @a[limit=1,scores={kefun_hug=1..}] function kefun:hug
sudo @a[limit=1,scores={kefun_hug=..-1}] function kefun:hug

#night vision
execute as @a[scores={kemod_nvt=1..}] run function kemod:night_vision/nvtoggle
execute as @a[scores={kemod_nvt=..-1}] run function kemod:night_vision/nvtoggle


schedule function trigger:main 1t
