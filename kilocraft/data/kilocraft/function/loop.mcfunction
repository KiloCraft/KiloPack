execute in kilocraft:mighty_highlands if entity @a[distance=0..] run function kilocraft:crate/loop
execute as @a[scores={kemain_onjoin=1..}] at @s run function kilocraft:event/onjoin
execute as @a[tag=!kemain_hasjoined] at @s run function kilocraft:event/onfirstjoin