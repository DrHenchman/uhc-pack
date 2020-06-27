scoreboard players set Eight uhcDynTP 8

# Divide both X and Z coordinates by 8 to compensate for the different distance
# scale the nether uses compared to the overworld
scoreboard players operation X uhcDynTP /= Eight uhcDynTP
scoreboard players operation Z uhcDynTP /= Eight uhcDynTP

scoreboard players reset Eight uhcDynTP
