scoreboard players set X uhcPG 0
scoreboard players set Z uhcPG 0
scoreboard players set Done uhcPG 0
scoreboard players set Total uhcPG 0
scoreboard players set Direction uhcPG 1

scoreboard players operation Total uhcPG += UHC uhcBSize
# This is a little gross, but operation doesn't allow for using literals
scoreboard players set ChunkSize uhcPG 16
scoreboard players operation Total uhcPG /= ChunkSize uhcPG
scoreboard players reset ChunkSize uhcPG

scoreboard players operation Total uhcPG *= Total uhcPG
