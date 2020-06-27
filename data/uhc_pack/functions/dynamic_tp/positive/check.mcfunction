# This function executes a recursive binary search.

# First, check whether the current coordinate is greater than the checked value
# If so, execute a teleport
execute if score Coord uhcDynTP >= Check uhcDynTP as @s run function uhc_pack:dynamic_tp/positive/do

# Update the checked value to be half (converges to 0 because of rounding down!)
scoreboard players operation Check uhcDynTP /= CheckFactor uhcDynTP
# Keep running this function, unless there are no more checks to carry out
execute unless score Check uhcDynTP matches 0 run function uhc_pack:dynamic_tp/positive/check
