# execute store result score functions/s kemain_stats run function kecrate:loop
function kevote:loop
function kecrate:loop
execute as @a[scores={kemain_onjoin=1..}] at @s run function kemain:events/onjoin
execute as @a[tag=!kemain_hasjoined] at @s run function kemain:events/onfirstjoin
