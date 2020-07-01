# Teleport the target marker to the desired location
# There is no need to load any other chunks, since @s selected entities stay in memory and do not have to be reselected

# Update storage with the new coordinates
execute store result storage uhc_pack:dynamic_tp Pos[0] double 1 run scoreboard players get X uhcDynTP
execute store result storage uhc_pack:dynamic_tp Pos[1] double 1 run scoreboard players get Y uhcDynTP
execute store result storage uhc_pack:dynamic_tp Pos[2] double 1 run scoreboard players get Z uhcDynTP

# Apply these coordinates to the target, effectively teleporting it
data modify entity @s Pos set from storage uhc_pack:dynamic_tp Pos

tag @s remove new

execute at @s store success score AlreadyLoaded uhcPG run forceload query ~ ~
# Load the new chunk, unless it is already loaded.
# Leave it alone in that case!
execute if score AlreadyLoaded uhcPG matches 0 run function uhc_pack:pre_generation/stage/step/chunk/load
execute unless score AlreadyLoaded uhcPG matches 0 run function uhc_pack:pre_generation/stage/step/marker/done
