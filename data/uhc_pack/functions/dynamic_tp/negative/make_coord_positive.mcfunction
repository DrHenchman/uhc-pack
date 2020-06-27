# Store current coordinate in temporary variable
execute store result score temp uhcDynTP run scoreboard players get Coord uhcDynTP

# Subtract current coordinate twice, effectively "flipping the sign"
scoreboard players operation temp uhcDynTP -= Coord uhcDynTP
scoreboard players operation temp uhcDynTP -= Coord uhcDynTP

# Store result back in Coord variable for use in the rest of the datapack
execute store result score Coord uhcDynTP run scoreboard players get temp uhcDynTP

scoreboard players reset temp uhcDynTP
