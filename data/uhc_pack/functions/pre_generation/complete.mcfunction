scoreboard objectives setdisplay sidebar uhcLobby

# Mark every pre-generator as target to be teleported
tag @a[tag=pre_generator] add tp_subject
# Set the coordinates to the center of the lobby
scoreboard players operation X uhcDynTP = X uhcPGSet
scoreboard players operation Y uhcDynTP = Y uhcPGSet
scoreboard players operation Z uhcDynTP = Z uhcPGSet
# Execute the teleport
execute in minecraft:overworld positioned 0 0 0 run function uhc_pack:pre_generation/dynamic_tp/do

scoreboard players reset * uhcPGSet

tag @a[tag=pre_generator] remove pre_generator
kill @e[tag=pre_generator,type=!minecraft:player]

execute in minecraft:the_nether run forceload remove all
execute in minecraft:overworld run forceload remove all
execute in minecraft:the_end run forceload remove all

tellraw @a [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Pre-generation","color":"gray"},{"text":" \u2503 "},{"text":"Complete","color":"gold"}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1

scoreboard players set UHC uhcTick 0
scoreboard players set UHC uhcState 1
