
scoreboard players set X uhcPG 0
scoreboard players set Z uhcPG 0
scoreboard players set Done uhcPG 1
scoreboard players set Total uhcPG 0

scoreboard players operation Total uhcPG += UHC uhcBSize
# This is a little gross, but operation doesn't allow for using literals
scoreboard players set ChunkSize uhcPG 16
scoreboard players operation Total uhcPG /= ChunkSize uhcPG
scoreboard players reset ChunkSize uhcPG

scoreboard players operation Total uhcPG *= Total uhcPG

scoreboard objectives setdisplay sidebar uhcPG

tag @s add pre_generator

execute if score UHC uhcBSize matches 496 at @e[type=minecraft:armor_stand,tag=lobbycenter] run tp @s ~-248 253 ~-248
execute if score UHC uhcBSize matches 1008 at @e[type=minecraft:armor_stand,tag=lobbycenter] run tp @s ~-248 253 ~-248
execute if score UHC uhcBSize matches 1520 at @e[type=minecraft:armor_stand,tag=lobbycenter] run tp @s ~-248 253 ~-248
execute if score UHC uhcBSize matches 2032 at @e[type=minecraft:armor_stand,tag=lobbycenter] run tp @s ~-248 253 ~-248
execute if score UHC uhcBSize matches 2544 at @e[type=minecraft:armor_stand,tag=lobbycenter] run tp @s ~-248 253 ~-248
execute if score UHC uhcBSize matches 3056 at @e[type=minecraft:armor_stand,tag=lobbycenter] run tp @s ~-248 253 ~-248

tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Pre-generation","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Started","color":"gold"}]

scoreboard players set UHC uhcTick 0
scoreboard players set UHC uhcState 2
