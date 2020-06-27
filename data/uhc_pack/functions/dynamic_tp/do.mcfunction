summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["tp_target"]}

execute if score X uhcDynTP matches 1.. as @e[tag=tp_target] run function uhc_pack:dynamic_tp/positive/x
execute if score X uhcDynTP matches ..-1 as @e[tag=tp_target] run function uhc_pack:dynamic_tp/negative/x

execute if score Y uhcDynTP matches 1.. as @e[tag=tp_target] run function uhc_pack:dynamic_tp/positive/y
execute if score Y uhcDynTP matches ..-1 as @e[tag=tp_target] run function uhc_pack:dynamic_tp/negative/y

execute if score Z uhcDynTP matches 1.. as @e[tag=tp_target] run function uhc_pack:dynamic_tp/positive/z
execute if score Z uhcDynTP matches ..-1 as @e[tag=tp_target] run function uhc_pack:dynamic_tp/negative/z

scoreboard players reset Axis uhcDynTP
scoreboard players reset Coord uhcDynTP
scoreboard players reset Check uhcDynTP
scoreboard players reset CheckFactor uhcDynTP

execute as @e[tag=tp_victim] run tp @s @e[tag=tp_target,limit=1]
kill @e[tag=tp_target]
