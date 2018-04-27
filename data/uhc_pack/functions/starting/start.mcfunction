# Clear the players inventory up front to avoid inventory lag
clear @a

# Set the world border
execute if score UHC uhcBSize matches 496 run worldborder set 496
execute if score UHC uhcBSize matches 1008 run worldborder set 1008
execute if score UHC uhcBSize matches 1520 run worldborder set 1520
execute if score UHC uhcBSize matches 2032 run worldborder set 2032
execute if score UHC uhcBSize matches 2544 run worldborder set 2544
execute if score UHC uhcBSize matches 3056 run worldborder set 3056

gamemode survival @a[team=!spectate]
gamemode spectator @a[team=spectate]

# Add the playing tag for all players who are participating in the UHC
# This is important for the death function
tag @a[team=!spectate] add playing

# Spread the players based off the world size
execute if score UHC uhcBSize matches 496 at @e[type=minecraft:armor_stand,tag=lobby] run spreadplayers ~ ~ 224 232 true @a[team=!spectate]
execute if score UHC uhcBSize matches 1008 at @e[type=minecraft:armor_stand,tag=lobby] run spreadplayers ~ ~ 224 488 true @a[team=!spectate]
execute if score UHC uhcBSize matches 1520 at @e[type=minecraft:armor_stand,tag=lobby] run spreadplayers ~ ~ 224 744 true @a[team=!spectate]
execute if score UHC uhcBSize matches 2032 at @e[type=minecraft:armor_stand,tag=lobby] run spreadplayers ~ ~ 224 1000 true @a[team=!spectate]
execute if score UHC uhcBSize matches 2544 at @e[type=minecraft:armor_stand,tag=lobby] run spreadplayers ~ ~ 224 1256 true @a[team=!spectate]
execute if score UHC uhcBSize matches 3056 at @e[type=minecraft:armor_stand,tag=lobby] run spreadplayers ~ ~ 224 1512 true @a[team=!spectate]

# Ideally we would do this in the tick function like the other sounds,
# however if we do the player won't hear it because they will be immediately
# teleported away
execute as @a at @s run playsound minecraft:block.note.flute player @s ~ ~ ~ 1 1

# Clean up the lobby
execute at @e[type=minecraft:armor_stand,tag=lobby] run fill ~-12 250 ~-12 ~11 253 ~11 minecraft:air
kill @e[type=minecraft:armor_stand,tag=lobby]

# Set all the rules back to the correct settings for UHC play
gamerule spectatorsGenerateChunks false
gamerule naturalRegeneration false
gamerule randomTickSpeed 3
# For now, don't re-enable fire tick due to MC-122428
#gamerule doFireTick true
gamerule doDaylightCycle true
time set 0
weather thunder 1

# Reset all the relevant scoreboards and set state to running
scoreboard players reset @a uhcDeaths
scoreboard players reset @a uhcDDealt
scoreboard players reset @a uhcDTaken
scoreboard players reset @a uhcKills
scoreboard players set UHC uhcMin 0
scoreboard players set UHC uhcTick 0
scoreboard players set UHC uhcState 4
