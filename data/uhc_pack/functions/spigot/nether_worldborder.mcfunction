#
# Fix the center of the nether worldborder on Spigot/Paper
#
# Entity: A server operator, positioned at the center of the UHC arena
# Location: In the nether
#

execute store success score AlreadyLoadedOrigin uhcPG run forceload query 0 0
forceload add 0 0

summon minecraft:armor_stand 0 251 0 {Tags:[lobby,nethercenter],NoGravity:1b,Small:1b,Invisible:1b}

execute store result storage uhc_pack:dynamic_tp Pos[0] double 0.125 run data get entity @s Pos[0]
execute store result storage uhc_pack:dynamic_tp Pos[1] double 1 run data get entity @s Pos[1]
execute store result storage uhc_pack:dynamic_tp Pos[2] double 0.125 run data get entity @s Pos[2]

execute as @e[type=minecraft:armor_stand,tag=nethercenter] run function uhc_pack:spigot/nether_worldborder_set

execute if score AlreadyLoadedOrigin uhcPG matches 0 run forceload remove 0 0
scoreboard players reset AlreadyLoadedOrigin uhcPG
