#
# Mark the player who died as no longer player
#
# Entity: The player who died
# Tag: #uhc_pack:events/on_player_death
#

# Remove playing tag so the player is put into spectator mode
# and so that we don't run this function multiple times
tag @s remove playing

# Set their spawnpoint to where they died
execute at @s run spawnpoint @s ~ ~ ~

# Play a death sound
execute as @a at @s run playsound minecraft:item.totem.use player @s ~ ~ ~ 0.5 2 0.5
