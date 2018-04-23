
# >>>>>>> Join a team manually
# 1     - Solo
# 2     - Spectate
# 3..16 - Teams
execute if score @s uhcOpt matches 1 run team leave @s
execute if score @s uhcOpt matches 2 run team join spectate
execute if score @s uhcOpt matches 3 run team join redstone
execute if score @s uhcOpt matches 4 run team join gold
execute if score @s uhcOpt matches 5 run team join slime
execute if score @s uhcOpt matches 6 run team join orchid
execute if score @s uhcOpt matches 7 run team join water
execute if score @s uhcOpt matches 8 run team join purpur
execute if score @s uhcOpt matches 9 run team join stone
execute if score @s uhcOpt matches 10 run team join netherwart
execute if score @s uhcOpt matches 11 run team join acacia
execute if score @s uhcOpt matches 12 run team join grass
execute if score @s uhcOpt matches 13 run team join prismarine
execute if score @s uhcOpt matches 14 run team join lapis
execute if score @s uhcOpt matches 15 run team join chorus
execute if score @s uhcOpt matches 16 run team join bedrock
execute if score @s uhcOpt matches 1..16 run tellraw @a [{"text":"Options: ","color":"green"},{"selector":"@s","color":"aqua"},{"text":" changed team manually","color":"reset"}]

# >>>> Adjust number of teams
# 17 - Reduce number of teams (or cycle to max)
# 18 - Increase number of teams (or cycle to min)
execute if score @s uhcOpt matches 17 run scoreboard players remove UHC uhcTeams 1
execute if score @s uhcOpt matches 18 run scoreboard players add UHC uhcTeams 1
execute if score UHC uhcTeams matches 15.. run scoreboard players set UHC uhcTeams 1
execute if score UHC uhcTeams matches ..0 run scoreboard players set UHC uhcTeams 14
execute if score @s uhcOpt matches 17..18 run tellraw @a [{"text":"Options: ","color":"green"},{"text":"Teams ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"UHC","objective":"uhcTeams"},"color":"gold"}]

# 19 - Randomize teams
execute if score @s[tag=admin] uhcOpt matches 19 run team leave @a[team=!spectate]
execute if score @s[tag=admin] uhcOpt matches 19 run function uhc_pack:lobby/randomize_teams
execute if score @s uhcOpt matches 19 run tellraw @a [{"text":"Options: ","color":"green"},{"text":"Randomized teams","color":"reset"}]

# 20 - Start
execute if score @s[tag=admin] uhcOpt matches 20 run function uhc_pack:lobby/start

function uhc_pack:lobby/reset_book

