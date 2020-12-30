#
# Set the center of the nether worldborder to the location of uhc_pack:dynamic_tp Pos
#
# Entity: @e[type=minecraft:armor_stand,tag=nethercenter]
# Location: In the nether
#

data modify entity @s Pos set from storage uhc_pack:dynamic_tp Pos

tellraw @a [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Setup","color":"gray"},{"text":" \u2503 Setting nether world border center to "},{"entity":"@s","nbt":"Pos[0]"},{"text":", "},{"entity":"@s","nbt":"Pos[2]"}]

execute at @s run worldborder center ~ ~
kill @s
