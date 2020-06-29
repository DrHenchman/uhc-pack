# Load the next chunk over and teleport into it
execute at @s run forceload add ~ ~16
tp @s ~ 253 ~16

# Unload the previous chunk
execute at @s run forceload remove ~ ~-16

scoreboard players set Invert uhcPGSet -1
scoreboard players operation Direction uhcPG *= Invert uhcPGSet
scoreboard players reset Invert uhcPGSet
