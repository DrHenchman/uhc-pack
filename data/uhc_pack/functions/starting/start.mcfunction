

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
scoreboard players set UHC uhcTick 0
scoreboard players set UHC uhcState 3
