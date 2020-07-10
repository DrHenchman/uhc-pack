#
# Remove the current marker and unload its chunk if it was previously loaded
# 
# Entity: The marker
#

scoreboard players reset @s uhcPGQueue
scoreboard players add Done uhcPG 1
execute store result bossbar uhc_pack:pregen value run scoreboard players get Done uhcPG

# We kill the entity first so that it is not persisted when the chunk is unloaded
kill @s
execute if entity @s[tag=forceloaded] at @s run forceload remove ~ ~
