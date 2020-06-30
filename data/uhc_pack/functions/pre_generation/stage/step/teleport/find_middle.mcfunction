# Clone the lobby center's coordinates into the dynamic teleport scoreboard.
# This allows for scoreboard operations to be executed without losing track of these original coordinates.
execute store result score X uhcDynTP run data get entity @e[tag=lobbycenter,limit=1] Pos[0]
execute store result score Y uhcDynTP run data get entity @e[tag=lobbycenter,limit=1] Pos[1]
execute store result score Z uhcDynTP run data get entity @e[tag=lobbycenter,limit=1] Pos[2]

# If the destination is located in the nether, some special transformations have to be applied beforehand.
execute if score Dimension uhcPG matches -1 run function uhc_pack:pre_generation/stage/step/teleport/find_middle/nether
