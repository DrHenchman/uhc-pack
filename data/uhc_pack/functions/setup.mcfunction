tellraw @a [{"text":"Setup: ","color":"green"},{"text":"Setting world spawn to current location","color":"reset"}]
setworldspawn ~ ~ ~
worldborder center ~ ~

tellraw @a [{"text":"Setup: ","color":"green"},{"text":"Generating lobby (may take a few seconds)","color":"reset"}]
fill ~-12 250 ~-12 ~11 253 ~11 minecraft:barrier hollow
fill ~-11 253 ~-11 ~10 253 ~10 minecraft:air
summon minecraft:armor_stand ~ 251 ~ {Tags:[lobby],NoGravity:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:"[{\"text\":\"UHC\",\"color\":\"gold\"},{\"text\":\" \\u2503 \",\"color\":\"reset\"},{\"text\":\"Lobby\",\"color\":\"aqua\"}]"}

tellraw @a [{"text":"Setup: ","color":"green"},{"text":"Making ","color":"reset"},{"selector":"@s","color":"aqua"},{"text":" a ","color":"reset"},{"text":"UHC Admin","color":"gold"}]
tag @s add admin

tellraw @a [{"text":"Setup: ","color":"green"},{"text":"Teleporting all players to the lobby","color":"reset"}]
tp @a ~ 253 ~

scoreboard players set UHC uhcState 1
gamerule randomTickSpeed 0
gamerule doFireTick false
gamerule doDaylightCycle false
time set noon
weather clear 999999

function uhc_pack:lobby/reset_options

tellraw @a [{"text":"Setup: ","color":"green"},{"text":"Complete","color":"reset"}]
