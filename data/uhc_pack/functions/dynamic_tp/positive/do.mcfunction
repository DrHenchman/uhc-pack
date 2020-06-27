execute if score Axis uhcDynTP matches 0 as @s at @s run function uhc_pack:dynamic_tp/positive/do/x
execute if score Axis uhcDynTP matches 1 as @s at @s run function uhc_pack:dynamic_tp/positive/do/y
execute if score Axis uhcDynTP matches 2 as @s at @s run function uhc_pack:dynamic_tp/positive/do/z

# Update the distance left to travel on this axis
scoreboard players operation Coord uhcDynTP -= Check uhcDynTP
