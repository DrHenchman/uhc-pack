#
# Teleport the target marker to the desired location
#
# Entity: The marker
#

# Calculate the desired destination based off of the base coordinates + the relative ones
scoreboard players operation AbsoluteX uhcPG = BaseX uhcPG
scoreboard players operation AbsoluteZ uhcPG = BaseZ uhcPG
scoreboard players operation AbsoluteX uhcPG += X uhcPG
scoreboard players operation AbsoluteZ uhcPG += Z uhcPG

# Update storage with the new coordinates
execute store result storage uhc_pack:dynamic_tp Pos[0] double 1 run scoreboard players get AbsoluteX uhcPG
execute store result storage uhc_pack:dynamic_tp Pos[1] double 1 run data get entity @s Pos[1]
execute store result storage uhc_pack:dynamic_tp Pos[2] double 1 run scoreboard players get AbsoluteZ uhcPG

# Apply these coordinates to the target, effectively teleporting it
# There is no need to load the target chunk ahead of time, since @s selected entities stay in memory and do not have to be reselected
data modify entity @s Pos set from storage uhc_pack:dynamic_tp Pos

tag @s remove new
scoreboard players set @s uhcPGQueue 1

execute at @s store success score AlreadyLoaded uhcPG run forceload query ~ ~
# Load the new chunk, unless it is already loaded.
# Leave it alone in that case!
execute if score AlreadyLoaded uhcPG matches 0 at @s run forceload add ~ ~
execute if score AlreadyLoaded uhcPG matches 0 run tag @s add forceloaded
execute unless score AlreadyLoaded uhcPG matches 0 run function uhc_pack:pre_generation/step/complete
