# Teleport the target marker to the desired location
# There is no need to load any other chunks, since @s selected entities stay in memory and do not have to be reselected

# Set precision scale
scoreboard players set Scale uhcDynTP 100

# Store target's position in storage
data modify storage uhc_pack:dynamic_tp Pos set from entity @s Pos

# Transfer these coordinates onto the scoreboard
execute store result score XBase uhcDynTP run data get storage uhc_pack:dynamic_tp Pos[0] 100
execute store result score YBase uhcDynTP run data get storage uhc_pack:dynamic_tp Pos[1] 100
execute store result score ZBase uhcDynTP run data get storage uhc_pack:dynamic_tp Pos[2] 100

# Make sure the relative coordinates have the same scale
scoreboard players operation X uhcDynTP *= Scale uhcDynTP
scoreboard players operation Y uhcDynTP *= Scale uhcDynTP
scoreboard players operation Z uhcDynTP *= Scale uhcDynTP

# Add the target's coordinates
scoreboard players operation X uhcDynTP += XBase uhcDynTP
scoreboard players operation Y uhcDynTP += YBase uhcDynTP
scoreboard players operation Z uhcDynTP += ZBase uhcDynTP

# Update storage with the new coordinates
execute store result storage uhc_pack:dynamic_tp Pos[0] double 0.01 run scoreboard players get X uhcDynTP
execute store result storage uhc_pack:dynamic_tp Pos[1] double 0.01 run scoreboard players get Y uhcDynTP
execute store result storage uhc_pack:dynamic_tp Pos[2] double 0.01 run scoreboard players get Z uhcDynTP

# Apply these coordinates to the target, effectively teleporting it
data modify entity @s Pos set from storage uhc_pack:dynamic_tp Pos

# Teleport all subjects to the target
tp @e[tag=tp_subject] @s
