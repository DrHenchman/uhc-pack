scoreboard objectives setdisplay sidebar uhcLobby

scoreboard players reset * uhcPGSet

execute in minecraft:the_nether run forceload remove all
execute in minecraft:overworld run forceload remove all
execute in minecraft:the_end run forceload remove all

tellraw @a [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Pre-generation","color":"gray"},{"text":" \u2503 "},{"text":"Complete","color":"gold"}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1

scoreboard players set UHC uhcTick 0
scoreboard players set UHC uhcState 1
