# All of these teleports should have the x-axis travel one chunk short to prevent drift on that axis
scoreboard players set ChunkSize uhcPG 16
scoreboard players set InvertFactor uhcPG -1

tag @s add tp_subject

# Set the X coordinate to the border size, subtract one chunk, then make it negative.
# This is equivalent to a teleport to the "baseline" on the X-axis,
# and one line over on Z-axis (/tp ~-(borderSize - chunkSize) 253 ~16)
scoreboard players operation X uhcDynTP = UHC uhcBSize
scoreboard players operation X uhcDynTP -= ChunkSize uhcPG
scoreboard players operation X uhcDynTP *= InvertFactor uhcPG
scoreboard players set Y uhcDynTP 253
scoreboard players set Z uhcDynTP 16

execute at @s as @s positioned ~ 0 ~ run function uhc_pack:dynamic_tp/do

scoreboard players reset ChunkSize
scoreboard players reset InvertFactor
