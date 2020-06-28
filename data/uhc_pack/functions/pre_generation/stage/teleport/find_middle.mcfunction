# Clone the lobby center's coordinates into the dynamic teleport scoreboard.
# This allows for scoreboard operations to be executed without losing track of these original coordinates.
scoreboard players operation X uhcDynTP = X uhcPGSet
scoreboard players operation Y uhcDynTP = Y uhcPGSet
scoreboard players operation Z uhcDynTP = Z uhcPGSet

# If the destination is located in the nether, some special transformations have to be applied beforehand.
execute if score Dimension uhcPGSet matches -1 run function uhc_pack:pre_generation/stage/teleport/find_middle/nether
