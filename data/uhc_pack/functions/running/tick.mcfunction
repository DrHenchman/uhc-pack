# Handle killed players
team join spectate @a[gamemode=survival,tag=!playing,team=]
execute as @a[tag=playing,scores={uhcDeaths=1..}] run function #uhc_pack:events/on_player_death
execute as @a[gamemode=survival,tag=!playing] run function uhc_pack:running/make_player_spectator

execute if score Tick uhcTime matches 1200 run scoreboard players add Minute uhcTime 1
execute if score Tick uhcTime matches 1200.. run scoreboard players set Tick uhcTime 0
execute if score Tick uhcTime matches 0 run function #uhc_pack:minute
