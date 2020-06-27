# Mark every pre-generator to be teleported
tag @e[tag=pre_generator] add tp_subject

# Find the "middle" of the area to pre-generate.
# This places scores for X, Y and Z in the uhcDynTP scoreboard.
execute run function uhc_pack:pre_generation/teleport/find_middle

# Calculate the distance to the border.
# Since the world border is square, this distance counts
# can be used for both the X and Z axes.
scoreboard players set XZFactor uhcDynTP 2
scoreboard players operation distToEdge uhcDynTP = UHC uhcBSize
scoreboard players operation distToEdge uhcDynTP /= XZFactor uhcDynTP

# Update the coordinates to their final values
scoreboard players operation X uhcDynTP -= distToEdge uhcDynTP
scoreboard players set Y uhcDynTP 253
scoreboard players operation Z uhcDynTP -= distToEdge uhcDynTP

# Clean up the temporary variables
scoreboard players reset distToEdge uhcDynTP
scoreboard players reset XZFactor uhcDynTP

# Do the dynamic teleport, and make sure it happens in the right dimension
execute if score Dimension uhcPGSet matches -1 run execute in minecraft:the_nether positioned 0 0 0 run function uhc_pack:dynamic_tp/do
execute if score Dimension uhcPGSet matches 0 run execute in minecraft:overworld positioned 0 0 0 run function uhc_pack:dynamic_tp/do
execute if score Dimension uhcPGSet matches 1 run execute in minecraft:the_end positioned 0 0 0 run function uhc_pack:dynamic_tp/do
