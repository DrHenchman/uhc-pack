
execute if score UHC uhcBSize matches 496 run worldborder set 496
execute if score UHC uhcBSize matches 1008 run worldborder set 1008
execute if score UHC uhcBSize matches 1520 run worldborder set 1520
execute if score UHC uhcBSize matches 2032 run worldborder set 2032
execute if score UHC uhcBSize matches 2544 run worldborder set 2544
execute if score UHC uhcBSize matches 3056 run worldborder set 3056

gamemode survival @a[team=!spectate]
gamemode spectator @a[team=spectate]

execute at @r[tag=admin] run spreadplayers ~ ~ 224 750 true @a[team=!spectate]

gamerule spectatorsGenerateChunks false
gamerule naturalRegeneration false
gamerule randomTickSpeed 3
# For now, don't re-enable fire tick due to MC-122428
#gamerule doFireTick true
gamerule doDaylightCycle true
time set 0
weather thunder 1

clear @a

scoreboard players reset @a uhcDeaths
scoreboard players set UHC uhcMin 0
scoreboard players set UHC uhcTick 0
scoreboard players set UHC uhcState 3
