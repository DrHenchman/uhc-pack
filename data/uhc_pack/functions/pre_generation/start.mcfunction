scoreboard players set GID uhcPGSet 0

# Cache lobby coordinates for use elsewhere
execute store result score X uhcPGSet run data get entity @e[tag=lobbycenter,limit=1] Pos[0]
execute store result score Y uhcPGSet run data get entity @e[tag=lobbycenter,limit=1] Pos[1]
execute store result score Z uhcPGSet run data get entity @e[tag=lobbycenter,limit=1] Pos[2]

tellraw @a [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Pre-generation","color":"gray"},{"text":" \u2503 "},{"text":"Started","color":"gold"}]

scoreboard players set UHC uhcTick 0
scoreboard players set UHC uhcState 2
scoreboard objectives setdisplay sidebar uhcPG

tag @s add pre_generator

function uhc_pack:pre_generation/stage/next
