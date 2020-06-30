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

execute store result bossbar uhc_pack:pregen max run scoreboard players get Total uhcPG
bossbar set uhc_pack:pregen value 0
bossbar set uhc_pack:pregen visible true
