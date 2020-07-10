#
# Ensure that the chunks are the current location are loaded
#
# Location: The location from which pre-generators will be generated
#

execute if score Dimension uhcPG matches -1 in minecraft:the_nether store success score AlreadyLoadedOrigin uhcPG run forceload query ~ ~
execute if score Dimension uhcPG matches 0 in minecraft:overworld store success score AlreadyLoadedOrigin uhcPG run forceload query ~ ~

execute if score Dimension uhcPG matches -1 in minecraft:the_nether run forceload add ~ ~
execute if score Dimension uhcPG matches 0 in minecraft:overworld run forceload add ~ ~
