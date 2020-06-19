tag @s add playing
scoreboard players reset @s uhcDeaths

gamemode survival @s
tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Respawning","color":"gray"},{"text":" \u2503 ","color":"reset"},{"selector":"@s","color":"aqua"}]
