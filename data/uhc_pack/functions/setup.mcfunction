#
# Set up the UHC lobby in the current location
#
# Entity: A server operator
# Location: The center of the UHC arena
#

tellraw @a [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Setup","color":"gray"},{"text":" \u2503 Setting world spawn to "},{"entity":"@s","nbt":"Pos[0]"},{"text":", "},{"entity":"@s","nbt":"Pos[2]"}]
setworldspawn ~ 253 ~

worldborder center ~ ~
# Spigot/Paper fix. worldborder is dimension specific but the center will be different in
# each dimension, so we need to detect if there is no worldborder in the nether and only
# execute the fix if that is the case
worldborder set 3056
execute in minecraft:the_nether store result score UHCWB uhcPG run worldborder get
execute unless score UHCWB uhcPG matches 3056 in minecraft:the_nether run function uhc_pack:spigot/nether_worldborder
scoreboard players reset UHCWB uhcPG

tellraw @a [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Setup","color":"gray"},{"text":" \u2503 Generating lobby (may take a few seconds)"}]
fill ~-12 250 ~-12 ~11 253 ~11 minecraft:barrier hollow
fill ~-11 253 ~-11 ~10 253 ~10 minecraft:air
summon minecraft:armor_stand ~ 251 ~ {Tags:[lobby,lobbycenter],NoGravity:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"\"},{\"text\":\"UHC\",\"color\":\"gold\"},{\"text\":\" \\u2503 \"},{\"text\":\"Lobby\",\"color\":\"aqua\"}]"}

setblock ~ 251 ~ minecraft:structure_block{mode:"LOAD",name:"uhc_pack:lobby_armor_stands",ignoreEntities:0b,posX:-6,posZ:-6}
setblock ~ 252 ~ minecraft:redstone_block

tellraw @a [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Setup","color":"gray"},{"text":" \u2503 Making "},{"selector":"@s","color":"aqua"},{"text":" a "},{"text":"UHC Admin","color":"gold"}]
tag @s add admin

tellraw @a [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Setup","color":"gray"},{"text":" \u2503 Teleporting all players to the lobby"}]
tp @a ~ 253 ~

difficulty peaceful
gamerule naturalRegeneration true
gamerule randomTickSpeed 0
gamerule doFireTick false
gamerule doDaylightCycle false
time set noon
weather clear 999999

scoreboard players set UHC uhcState 1
scoreboard objectives setdisplay sidebar uhcLobby
function #uhc_pack:events/on_lobby
tellraw @a [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Setup","color":"gray"},{"text":" \u2503 "},{"text":"Complete","color":"gold"}]
