execute if score Coord uhcDynTP >= Check uhcDynTP as @s run function uhc_pack:dynamic_tp/negative/do
scoreboard players operation Check uhcDynTP /= CheckFactor uhcDynTP

execute unless score Check uhcDynTP matches 0 run function uhc_pack:dynamic_tp/negative/check
