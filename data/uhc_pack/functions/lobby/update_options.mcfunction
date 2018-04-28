
########
# Page 1
########

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
execute if score @s uhcOpt matches 1..16 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"selector":"@s","color":"aqua"},{"text":" changed team manually","color":"reset"}]

# >>>> Adjust number of teams (min=1, max=14)
# 17 - Reduce number of teams (or cycle to max)
# 18 - Increase number of teams (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 17 run scoreboard players remove UHC uhcTeams 1
execute if score @s[tag=admin] uhcOpt matches 18 run scoreboard players add UHC uhcTeams 1
execute if score UHC uhcTeams matches 15.. run scoreboard players set UHC uhcTeams 1
execute if score UHC uhcTeams matches ..0 run scoreboard players set UHC uhcTeams 14
execute if score @s[tag=admin] uhcOpt matches 17..18 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Teams ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"UHC","objective":"uhcTeams"},"color":"gold"}]

# 19 - Randomize teams
execute if score @s[tag=admin] uhcOpt matches 19 run team leave @a[team=!spectate]
execute if score @s[tag=admin] uhcOpt matches 19 run function uhc_pack:lobby/randomize_teams
execute if score @s[tag=admin] uhcOpt matches 19 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Randomized teams","color":"reset"}]

# >>>> Adjust world size (min=496, max=3056)
# 20 - Reduce world size by 512 (or cycle to max)
# 21 - Increase world size by 512 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 20 run scoreboard players remove UHC uhcBSize 512
execute if score @s[tag=admin] uhcOpt matches 21 run scoreboard players add UHC uhcBSize 512
execute if score UHC uhcBSize matches 3057.. run scoreboard players set UHC uhcBSize 496
execute if score UHC uhcBSize matches ..495 run scoreboard players set UHC uhcBSize 3056
execute if score @s[tag=admin] uhcOpt matches 20..21 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"World size ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"UHC","objective":"uhcBSize"},"color":"gold"}]

# >>>> Adjust border shrink start (min=0, max=100)
# 22 - Reduce border shrink start by 20 (or cycle to max)
# 23 - Increase border shrink start by 20 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 22 run scoreboard players remove UHC uhcSBStrt 20
execute if score @s[tag=admin] uhcOpt matches 23 run scoreboard players add UHC uhcSBStrt 20
execute if score UHC uhcSBStrt matches 101.. run scoreboard players set UHC uhcSBStrt 0
execute if score UHC uhcSBStrt matches ..-1 run scoreboard players set UHC uhcSBStrt 100
execute if score @s[tag=admin] uhcOpt matches 22..23 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Border shrink start ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"UHC","objective":"uhcSBStrt"},"color":"gold"},{"text":" minutes","color":"reset"}]

# >>>> Adjust border shrink size (min=16, max=496)
# 24 - Reduce border shrink size by 96 (or cycle to max)
# 25 - Increase border shrink size by 96 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 24 run scoreboard players remove UHC uhcSBSize 96
execute if score @s[tag=admin] uhcOpt matches 25 run scoreboard players add UHC uhcSBSize 96
execute if score UHC uhcSBSize matches 497.. run scoreboard players set UHC uhcSBSize 16
execute if score UHC uhcSBSize matches ..15 run scoreboard players set UHC uhcSBSize 496
execute if score @s[tag=admin] uhcOpt matches 24..25 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Border shrink size ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"UHC","objective":"uhcSBSize"},"color":"gold"}]

# >>>> Adjust border shrink duration (min=20, max=100)
# 26 - Reduce border shrink duration by 20 (or cycle to max)
# 27 - Increase border shrink duration by 20 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 26 run scoreboard players remove UHC uhcSBDur 20
execute if score @s[tag=admin] uhcOpt matches 27 run scoreboard players add UHC uhcSBDur 20
execute if score UHC uhcSBDur matches 101.. run scoreboard players set UHC uhcSBDur 20
execute if score UHC uhcSBDur matches ..19 run scoreboard players set UHC uhcSBDur 100
execute if score @s[tag=admin] uhcOpt matches 26..27 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Border shrink duration ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"UHC","objective":"uhcSBDur"},"color":"gold"},{"text":" minutes","color":"reset"}]

# 30 - Start
execute if score @s[tag=admin] uhcOpt matches 30 run function uhc_pack:lobby/start

########
# Page 2
########

# >>>> Adjust minute marker (min=10, max=60)
# 100 - Reduce minute marker by 10 (or cycle to max)
# 101 - Increase minute marker by 10 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 100 run scoreboard players remove UHC uhcMM 10
execute if score @s[tag=admin] uhcOpt matches 101 run scoreboard players add UHC uhcMM 10
execute if score UHC uhcMM matches 61.. run scoreboard players set UHC uhcMM 10
execute if score UHC uhcMM matches ..9 run scoreboard players set UHC uhcMM 60
execute if score @s[tag=admin] uhcOpt matches 100..101 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Minute marker ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"UHC","objective":"uhcMM"},"color":"gold"},{"text":" minutes","color":"reset"}]

# >>>> Adjust Eternal day start (min=0, max=100)
# 102 - Reduce eternal day start by 10 (or cycle to max)
# 103 - Increase eternal day start by 10 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 102 run scoreboard players remove UHC uhcEter 10
execute if score @s[tag=admin] uhcOpt matches 103 run scoreboard players add UHC uhcEter 10
execute if score UHC uhcEter matches 101.. run scoreboard players set UHC uhcEter 0
execute if score UHC uhcEter matches ..-1 run scoreboard players set UHC uhcEter 100
execute if score @s[tag=admin] uhcOpt matches 102..103 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Eternal day start ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"UHC","objective":"uhcEter"},"color":"gold"},{"text":" minutes","color":"reset"}]

# >>>> Adjust Glowing start (min=0, max=100)
# 104 - Reduce glowing start by 10 (or cycle to max)
# 105 - Increase glowing start by 10 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 104 run scoreboard players remove UHC uhcGlow 10
execute if score @s[tag=admin] uhcOpt matches 105 run scoreboard players add UHC uhcGlow 10
execute if score UHC uhcGlow matches 101.. run scoreboard players set UHC uhcGlow 0
execute if score UHC uhcGlow matches ..-1 run scoreboard players set UHC uhcGlow 100
execute if score @s[tag=admin] uhcOpt matches 104..105 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Glowing start ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"UHC","objective":"uhcMM"},"color":"gold"},{"text":" minutes","color":"reset"}]


# Handle sound effects and permission errors
execute if score @s[tag=!admin] uhcOpt matches 17.. run tellraw @s [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 Sorry only ","color":"reset"},{"text":"UHC Admins","color":"gold"},{"text":" can perform that action","color":"reset"}]
execute if score @s[tag=!admin] uhcOpt matches ..16 at @s run playsound minecraft:block.note.chime player @s ~ ~ ~ 1 1
execute if entity @s[tag=admin] unless score @s uhcOpt matches 30 at @s run playsound minecraft:block.note.chime player @s ~ ~ ~ 1 1

# Finally, reset the book for everyone so that the scores are updated
execute as @a run function uhc_pack:lobby/reset_book

