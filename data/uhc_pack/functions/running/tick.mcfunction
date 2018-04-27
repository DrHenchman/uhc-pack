# Handle killed players
team join spectate @a[gamemode=survival,tag=!playing,team=]
execute as @a[tag=playing,scores={uhcDeaths=1..}] run function #uhc_pack:events/on_player_death
gamemode spectator @a[gamemode=survival,tag=!playing]

execute if score UHC uhcTick matches 1200 run scoreboard players add UHC uhcMin 1
execute if score UHC uhcTick matches 1200.. run scoreboard players set UHC uhcTick 0
execute if score UHC uhcTick matches 0 run function #uhc_pack:minute
