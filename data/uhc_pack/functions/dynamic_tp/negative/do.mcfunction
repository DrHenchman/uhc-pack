execute if score Axis uhcDynTP matches 0 as @s at @s run function uhc_pack:dynamic_tp/negative/do/x
execute if score Axis uhcDynTP matches 1 as @s at @s run function uhc_pack:dynamic_tp/negative/do/y
execute if score Axis uhcDynTP matches 2 as @s at @s run function uhc_pack:dynamic_tp/negative/do/z

scoreboard players operation Coord uhcDynTP -= Check uhcDynTP
