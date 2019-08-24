tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Setup","color":"gray"},{"text":" \u2503 Setting world spawn to current location","color":"reset"}]
setworldspawn ~ 253 ~
worldborder center ~ ~

tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Setup","color":"gray"},{"text":" \u2503 Generating lobby (may take a few seconds)","color":"reset"}]
fill ~-12 250 ~-12 ~11 253 ~11 minecraft:barrier hollow
fill ~-11 253 ~-11 ~10 253 ~10 minecraft:air
summon minecraft:armor_stand ~ 251 ~ {Tags:[lobby,lobbycenter],NoGravity:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"UHC\",\"color\":\"gold\"},{\"text\":\" \\u2503 \",\"color\":\"reset\"},{\"text\":\"Lobby\",\"color\":\"aqua\"}]"}
#summon minecraft:armor_stand ~ 251 ~ {Tags:[lobby,toggle,toggle_enabled],NoGravity:1b,Invisible:1b,CustomName:"{\"text\":\"\\u25cf\",\"color\":\"dark_green\"}"}
#summon minecraft:armor_stand ~ 251 ~ {Tags:[lobby,toggle,toggle_disabled],NoGravity:1b,Invisible:1b,CustomName:"{\"text\":\"\\u25cb\",\"color\":\"red\"}"}

setblock ~ 251 ~ minecraft:structure_block{mode:"LOAD",name:"uhc_pack:lobby_armor_stands",ignoreEntities:0b,posX:-6,posZ:-6}
setblock ~ 252 ~ minecraft:redstone_block

tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Setup","color":"gray"},{"text":" \u2503 Making ","color":"reset"},{"selector":"@s","color":"aqua"},{"text":" a ","color":"reset"},{"text":"UHC Admin","color":"gold"}]
tag @s add admin

tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Setup","color":"gray"},{"text":" \u2503 Teleporting all players to the lobby","color":"reset"}]
tp @a ~ 253 ~

difficulty peaceful
gamerule naturalRegeneration true
gamerule randomTickSpeed 0
gamerule doFireTick false
gamerule doDaylightCycle false
time set noon
weather clear 999999

scoreboard players set UHC uhcState 1
function #uhc_pack:events/on_lobby
tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Setup","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Complete","color":"gold"}]
