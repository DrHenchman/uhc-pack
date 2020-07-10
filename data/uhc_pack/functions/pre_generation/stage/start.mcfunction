#
# Start a pre-generation stage
#

# Zero out X and Z
scoreboard players set X uhcPG 0
scoreboard players set Z uhcPG 0

# Set the initial direction to positive
scoreboard players set Direction uhcPG 1

# Calculate the diameter to generate
scoreboard players set Eight uhcPG 8
scoreboard players operation Diameter uhcPG = UHC uhcBSize
execute if score Dimension uhcPG matches -1 run scoreboard players operation Diameter uhcPG /= Eight uhcPG
scoreboard players reset Eight uhcPG

# Set the initial values of done and total
scoreboard players set Done uhcPG 0
scoreboard players operation Total uhcPG = Diameter uhcPG
scoreboard players set ChunkSize uhcPG 16
scoreboard players operation Total uhcPG /= ChunkSize uhcPG
scoreboard players reset ChunkSize uhcPG
scoreboard players operation Total uhcPG *= Total uhcPG

# Initialize the bossbar
execute store result bossbar uhc_pack:pregen max run scoreboard players get Total uhcPG
bossbar set uhc_pack:pregen players @a
bossbar set uhc_pack:pregen value 0
bossbar set uhc_pack:pregen visible true

# Calculate the BaseX and BaseZ coordinates
function uhc_pack:pre_generation/stage/calculate_base

# Load the origin chunk for which markers are summoned
execute positioned as @e[type=minecraft:armor_stand,tag=lobbycenter,limit=1] run function uhc_pack:pre_generation/stage/load_origin
