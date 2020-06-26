
scoreboard objectives setdisplay sidebar uhcLobby
scoreboard players reset * uhcPG

tp @a[tag=pre_generator] @e[type=minecraft:armor_stand,tag=lobbycenter,limit=1]
tag @a[tag=pre_generator] remove pre_generator

tellraw @a [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Pre-generation","color":"gray"},{"text":" \u2503 "},{"text":"Complete","color":"gold"}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1

scoreboard players set UHC uhcTick 0
scoreboard players set UHC uhcState 1
