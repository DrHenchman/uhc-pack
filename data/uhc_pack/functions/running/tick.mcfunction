tag @a[tag=playing,scores={uhcDeaths=1..}] remove playing
gamemode spectator @a[gamemode=survival,tag=!playing]

execute if score UHC uhcTick matches 1200 run scoreboard players add UHC uhcMin 1
execute if score UHC uhcTick matches 1200.. run scoreboard players set UHC uhcTick 0
execute if score UHC uhcTick matches 0 run function #uhc_pack:minute
