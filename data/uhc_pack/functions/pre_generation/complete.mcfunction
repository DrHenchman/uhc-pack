
scoreboard objectives setdisplay sidebar
scoreboard players reset * uhcPG

tp @a[tag=pre_generator] @e[type=minecraft:armor_stand,tag=lobby,limit=1]
tag @a[tag=pre_generator] remove pre_generator

tellraw @a [{"text":"Pre-generation: ","color":"green"},{"text":"Complete!","color":"aqua"}]

scoreboard players set UHC uhcTick 0
scoreboard players set UHC uhcState 1
