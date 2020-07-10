#
# Complete the current stage of the pre-generation
#

bossbar set uhc_pack:pregen visible false

execute if score AlreadyLoadedOrigin uhcPG matches 0 positioned as @e[type=minecraft:armor_stand,tag=lobbycenter,limit=1] run function uhc_pack:pre_generation/stage/unload_origin

scoreboard players reset AlreadyLoaded uhcPG
scoreboard players reset AlreadyLoadedOrigin uhcPG
scoreboard players reset X uhcPG
scoreboard players reset Y uhcPG
scoreboard players reset Done uhcPG
scoreboard players reset Total uhcPG
scoreboard players reset LoadTime uhcPG
scoreboard players reset Direction uhcPG

scoreboard players reset * uhcPGQueue

function uhc_pack:pre_generation/stage/next
