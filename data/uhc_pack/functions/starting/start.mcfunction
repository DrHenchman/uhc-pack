#
# Do all the things required to start the UHC
#

# Ensure that no sidebar is visible
scoreboard objectives setdisplay sidebar

# Clear the players inventory and effects
clear @a
effect clear @a
# Help people not accidentally die in the first 5 seconds
effect give @a minecraft:resistance 5 255 true
# This is the magic amount of hunger to set all players saturation to 5.0f
effect give @a minecraft:hunger 3 200 true

# Set the world border
execute if score UHC uhcBSize matches 496 run worldborder set 496
execute if score UHC uhcBSize matches 1008 run worldborder set 1008
execute if score UHC uhcBSize matches 1520 run worldborder set 1520
execute if score UHC uhcBSize matches 2032 run worldborder set 2032
execute if score UHC uhcBSize matches 2544 run worldborder set 2544
execute if score UHC uhcBSize matches 3056 run worldborder set 3056
# Fix for Spigot/Paper as world border is dimension specific. This is a noop on Vanilla
execute if score UHC uhcBSize matches 496 in minecraft:the_nether run worldborder set 496
execute if score UHC uhcBSize matches 1008 in minecraft:the_nether run worldborder set 1008
execute if score UHC uhcBSize matches 1520 in minecraft:the_nether run worldborder set 1520
execute if score UHC uhcBSize matches 2032 in minecraft:the_nether run worldborder set 2032
execute if score UHC uhcBSize matches 2544 in minecraft:the_nether run worldborder set 2544
execute if score UHC uhcBSize matches 3056 in minecraft:the_nether run worldborder set 3056

gamemode survival @a[team=!spectate]
execute as @a[team=spectate] run function uhc_pack:running/make_player_spectator

# Add the 'playing' tag for all players who are participating in the UHC
# This is important for the death function
tag @a[team=!spectate] add playing

# Spread the players based off the world size
execute if score UHC uhcBSize matches 496 at @e[type=minecraft:armor_stand,tag=lobbycenter] run spreadplayers ~ ~ 224 232 true @a[tag=playing]
execute if score UHC uhcBSize matches 1008 at @e[type=minecraft:armor_stand,tag=lobbycenter] run spreadplayers ~ ~ 224 488 true @a[tag=playing]
execute if score UHC uhcBSize matches 1520 at @e[type=minecraft:armor_stand,tag=lobbycenter] run spreadplayers ~ ~ 224 744 true @a[tag=playing]
execute if score UHC uhcBSize matches 2032 at @e[type=minecraft:armor_stand,tag=lobbycenter] run spreadplayers ~ ~ 224 1000 true @a[tag=playing]
execute if score UHC uhcBSize matches 2544 at @e[type=minecraft:armor_stand,tag=lobbycenter] run spreadplayers ~ ~ 224 1256 true @a[tag=playing]
execute if score UHC uhcBSize matches 3056 at @e[type=minecraft:armor_stand,tag=lobbycenter] run spreadplayers ~ ~ 224 1512 true @a[tag=playing]

# Ideally we would do this in the tick function like the other sounds,
# however if we do the player won't hear it because they will be immediately
# teleported away
execute as @a at @s run playsound minecraft:block.note_block.flute player @s ~ ~ ~ 1 1

# Clean up the lobby
execute at @e[type=minecraft:armor_stand,tag=lobbycenter] run fill ~-12 250 ~-12 ~11 253 ~11 minecraft:air
kill @e[tag=lobby]

# Set all the rules back to the correct settings for UHC play
difficulty hard
# spectatorsGenerateChunks=false is current broken in Minecraft, making chunks not render
gamerule spectatorsGenerateChunks true
# Paper fix: gamerules are per-dimension, so turn off natural regen in each dimension
execute in minecraft:overworld run gamerule naturalRegeneration false
execute in minecraft:the_nether run gamerule naturalRegeneration false
execute in minecraft:the_end run gamerule naturalRegeneration false
gamerule randomTickSpeed 3
gamerule doFireTick true
gamerule doDaylightCycle true
time set 0
weather thunder 1

# Set all customizable options
execute if score UHCPhantom uhcEnabled matches 1 run gamerule doInsomnia true
execute if score UHCPhantom uhcEnabled matches 0 run gamerule doInsomnia false

execute if score UHCShowAdvs uhcEnabled matches 1 run gamerule announceAdvancements true
execute if score UHCShowAdvs uhcEnabled matches 0 run gamerule announceAdvancements false

# Set Friendly Fire
execute if score UHCFriendlyFire uhcEnabled matches 1 run function uhc_pack:starting/friendlyfire_enable
execute if score UHCFriendlyFire uhcEnabled matches 0 run function uhc_pack:starting/friendlyfire_disable

# Set starting health
function uhc_pack:starting/starting_health

# Reset all the relevant scoreboards and set state to running
scoreboard players reset @a uhcDeaths
# Instead of resetting the values, we set them to 0 to ensure
# players with 0 damage dealt are taken into account for the
# Mostly Harmless award
scoreboard players set @a uhcDDealt 0
scoreboard players reset @a uhcDTaken
scoreboard players reset @a uhcKills
scoreboard players set UHC uhcMin 0
scoreboard players set UHC uhcTick 0
scoreboard players set UHC uhcState 4
function #uhc_pack:events/on_start
