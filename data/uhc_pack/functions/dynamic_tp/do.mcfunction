# This function teleports any entities marked with the "tp_subject" tag.
# The location is determined by the execute parameters passed (dimension, "positioned as"),
# with values in the uhcDynTP scoreboard added after.

# Summon a marker armor stand at the current location (and make sure that location is loaded!)
execute store success score loadedSource uhcDynTP run forceload query ~ ~
execute if score loadedSource uhcDynTP matches 0 run forceload add ~ ~
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["tp_target"]}

execute as @e[tag=tp_target] run function uhc_pack:dynamic_tp/teleport_target

# Teleport all subjects to the target
execute as @e[tag=tp_subject] run tp @s @e[tag=tp_target,limit=1]
# Clean up the forceload for the destination (if it wasn't loaded before)
execute if score loadedDest uhcDynTP matches 0 as @e[tag=tp_target] run forceload remove ~ ~

# Clean up the mess
function uhc_pack:dynamic_tp/cleanup
# Clean up the forceload for the source (if it wasn't loaded before)
execute if score loadedSource uhcDynTP matches 0 run forceload remove ~ ~
