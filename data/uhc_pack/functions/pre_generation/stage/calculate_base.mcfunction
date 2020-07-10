#
# Calculate the base coordinates from which the cursor will be relative to
#

# Clone the lobby center's coordinates into the dynamic teleport scoreboard.
# This allows for scoreboard operations to be executed without losing track of these original coordinates.
execute store result score BaseX uhcPG run data get entity @e[type=minecraft:armor_stand,tag=lobbycenter,limit=1] Pos[0]
execute store result score BaseZ uhcPG run data get entity @e[type=minecraft:armor_stand,tag=lobbycenter,limit=1] Pos[2]

scoreboard players set Eight uhcPG 8
scoreboard players set Two uhcPG 2

# If the destination is located in the nether, divide the location by 8
execute if score Dimension uhcPG matches -1 run scoreboard players operation BaseX uhcPG /= Eight uhcPG
execute if score Dimension uhcPG matches -1 run scoreboard players operation BaseZ uhcPG /= Eight uhcPG


# As the lobby is centered in the border, divide the
# border size by two to calculate the distance from the edge
scoreboard players operation Radius uhcPG = Diameter uhcPG
scoreboard players operation Radius uhcPG /= Two uhcPG

# Update the coordinates to their final values
scoreboard players operation BaseX uhcPG -= Radius uhcPG
scoreboard players operation BaseZ uhcPG -= Radius uhcPG

# Clean up the temporary variables
scoreboard players reset Radius uhcPG
scoreboard players reset Two uhcPG
scoreboard players reset Eight uhcPG
