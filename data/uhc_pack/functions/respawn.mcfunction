#
# Utility to allow a player to be respawned in
#
# Entity: The player to respawn into the game
#

# Reset spectator state
tag @s remove spectator
effect clear @s

# Reset playing state
tag @s add playing
scoreboard players reset @s uhcDeaths

# Now we can finally put the player into survival mode
gamemode survival @s
tellraw @a [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Respawning","color":"gray"},{"text":" \u2503 "},{"selector":"@s","color":"aqua"}]
