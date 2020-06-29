# Load the next chunk over and teleport into it
execute at @s run forceload add ~-16 ~
tp @s ~-16 253 ~

# Unload the previous chunk
execute at @s run forceload remove ~16 ~
