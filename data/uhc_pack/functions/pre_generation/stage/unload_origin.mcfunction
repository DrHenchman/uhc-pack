#
# Remove the force loading of the chunk at the current location
#
# Location: The location of the chunk
#

execute if score Dimension uhcPG matches -1 in minecraft:the_nether run forceload remove ~ ~
execute if score Dimension uhcPG matches 0 in minecraft:overworld run forceload remove ~ ~
