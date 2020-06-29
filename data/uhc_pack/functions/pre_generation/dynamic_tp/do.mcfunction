# This function teleports any entities marked with the "tp_subject" tag.
# The location is determined by the execute parameters passed (dimension, "positioned as"),
# with values in the uhcDynTP scoreboard added after.

# Summon a marker armor stand at the current location (and make sure that location is loaded!)
forceload add ~ ~
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["tp_target"]}

execute as @e[tag=tp_target,limit=1] run function uhc_pack:pre_generation/dynamic_tp/teleport

# Clean up the messscoreboard players reset * uhcDynTP
kill @e[tag=tp_target]
tag @e[tag=tp_subject] remove tp_subject

# Clean up the forceload for the source
forceload remove ~ ~
