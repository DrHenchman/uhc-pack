
########
# Page 1
########

# >>>>>>> Join a team manually
# 1     - Solo
# 2     - Spectate
# 3..16 - Teams
execute if score @s uhcCmd matches 1 run team leave @s
execute if score @s uhcCmd matches 2 run team join spectate
execute if score @s uhcCmd matches 3 run team join redstone
execute if score @s uhcCmd matches 4 run team join gold
execute if score @s uhcCmd matches 5 run team join slime
execute if score @s uhcCmd matches 6 run team join orchid
execute if score @s uhcCmd matches 7 run team join water
execute if score @s uhcCmd matches 8 run team join purpur
execute if score @s uhcCmd matches 9 run team join stone
execute if score @s uhcCmd matches 10 run team join netherwart
execute if score @s uhcCmd matches 11 run team join acacia
execute if score @s uhcCmd matches 12 run team join grass
execute if score @s uhcCmd matches 13 run team join prismarine
execute if score @s uhcCmd matches 14 run team join lapis
execute if score @s uhcCmd matches 15 run team join chorus
execute if score @s uhcCmd matches 16 run team join bedrock
execute if score @s uhcCmd matches 1..16 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"selector":"@s","color":"aqua"},{"text":" changed team manually","color":"reset"}]

# >>>> Adjust number of teams (min=1, max=14)
# 17 - Reduce number of teams (or cycle to max)
# 18 - Increase number of teams (or cycle to min)
execute if score @s[tag=admin] uhcCmd matches 17 run scoreboard players remove Teams uhcOption 1
execute if score @s[tag=admin] uhcCmd matches 18 run scoreboard players add Teams uhcOption 1
execute if score Teams uhcOption matches 15.. run scoreboard players set Teams uhcOption 1
execute if score Teams uhcOption matches ..0 run scoreboard players set Teams uhcOption 14
execute if score @s[tag=admin] uhcCmd matches 17..18 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Teams ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"Teams","objective":"uhcOption"},"color":"gold"}]

# 19 - Randomize teams
execute if score @s[tag=admin] uhcCmd matches 19 run team leave @a[team=!spectate]
execute if score @s[tag=admin] uhcCmd matches 19 run function uhc_pack:lobby/randomize_teams
execute if score @s[tag=admin] uhcCmd matches 19 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Randomized teams","color":"reset"}]

# >>>> Adjust world size (min=496, max=3056)
# 20 - Reduce world size by 512 (or cycle to max)
# 21 - Increase world size by 512 (or cycle to min)
execute if score @s[tag=admin] uhcCmd matches 20 run scoreboard players remove BorderSize uhcOption 512
execute if score @s[tag=admin] uhcCmd matches 21 run scoreboard players add BorderSize uhcOption 512
execute if score BorderSize uhcOption matches 3057.. run scoreboard players set BorderSize uhcOption 496
execute if score BorderSize uhcOption matches ..495 run scoreboard players set BorderSize uhcOption 3056
execute if score @s[tag=admin] uhcCmd matches 20..21 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"World size ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"BorderSize","objective":"uhcOption"},"color":"gold"}]

# >>>> Adjust border shrink start (min=0, max=100)
# 22 - Reduce border shrink start by 20 (or cycle to max)
# 23 - Increase border shrink start by 20 (or cycle to min)
execute if score @s[tag=admin] uhcCmd matches 22 run scoreboard players remove SBStart uhcOption 20
execute if score @s[tag=admin] uhcCmd matches 23 run scoreboard players add SBStart uhcOption 20
execute if score SBStart uhcOption matches 101.. run scoreboard players set SBStart uhcOption 0
execute if score SBStart uhcOption matches ..-1 run scoreboard players set SBStart uhcOption 100
execute if score @s[tag=admin] uhcCmd matches 22..23 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Border shrink start ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"SBStart","objective":"uhcOption"},"color":"gold"},{"text":" minutes","color":"reset"}]

# >>>> Adjust border shrink size (min=16, max=496)
# 24 - Reduce border shrink size by 96 (or cycle to max)
# 25 - Increase border shrink size by 96 (or cycle to min)
execute if score @s[tag=admin] uhcCmd matches 24 run scoreboard players remove SBSize uhcOption 96
execute if score @s[tag=admin] uhcCmd matches 25 run scoreboard players add SBSize uhcOption 96
execute if score SBSize uhcOption matches 497.. run scoreboard players set SBSize uhcOption 16
execute if score SBSize uhcOption matches ..15 run scoreboard players set SBSize uhcOption 496
execute if score @s[tag=admin] uhcCmd matches 24..25 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Border shrink size ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"SBSize","objective":"uhcOption"},"color":"gold"}]

# >>>> Adjust border shrink duration (min=20, max=100)
# 26 - Reduce border shrink duration by 20 (or cycle to max)
# 27 - Increase border shrink duration by 20 (or cycle to min)
execute if score @s[tag=admin] uhcCmd matches 26 run scoreboard players remove SBDuration uhcOption 20
execute if score @s[tag=admin] uhcCmd matches 27 run scoreboard players add SBDuration uhcOption 20
execute if score SBDuration uhcOption matches 101.. run scoreboard players set SBDuration uhcOption 20
execute if score SBDuration uhcOption matches ..19 run scoreboard players set SBDuration uhcOption 100
execute if score @s[tag=admin] uhcCmd matches 26..27 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Border shrink duration ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"SBDuration","objective":"uhcOption"},"color":"gold"},{"text":" minutes","color":"reset"}]

# 28 - Pre-generate
execute if score @s[tag=admin] uhcCmd matches 28 run function uhc_pack:pre_generation/start

# 30 - Start
execute if score @s[tag=admin] uhcCmd matches 30 run function uhc_pack:start

########
# Page 2
########

# >>>> Adjust minute marker (min=10, max=60)
# 100 - Reduce minute marker by 10 (or cycle to max)
# 101 - Increase minute marker by 10 (or cycle to min)
execute if score @s[tag=admin] uhcCmd matches 100 run scoreboard players remove MMInterval uhcOption 10
execute if score @s[tag=admin] uhcCmd matches 101 run scoreboard players add MMInterval uhcOption 10
execute if score MMInterval uhcOption matches 61.. run scoreboard players set MMInterval uhcOption 10
execute if score MMInterval uhcOption matches ..9 run scoreboard players set MMInterval uhcOption 60
execute if score @s[tag=admin] uhcCmd matches 100..101 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Minute marker ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"MMInterval","objective":"uhcOption"},"color":"gold"},{"text":" minutes","color":"reset"}]

# >>>> Adjust Eternal day start (min=0, max=100)
# 102 - Reduce eternal day start by 10 (or cycle to max)
# 103 - Increase eternal day start by 10 (or cycle to min)
execute if score @s[tag=admin] uhcCmd matches 102 run scoreboard players remove EternalDayStart uhcOption 10
execute if score @s[tag=admin] uhcCmd matches 103 run scoreboard players add EternalDayStart uhcOption 10
execute if score EternalDayStart uhcOption matches 101.. run scoreboard players set EternalDayStart uhcOption 0
execute if score EternalDayStart uhcOption matches ..-1 run scoreboard players set EternalDayStart uhcOption 100
execute if score @s[tag=admin] uhcCmd matches 102..103 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Eternal day start ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"EternalDayStart","objective":"uhcOption"},"color":"gold"},{"text":" minutes","color":"reset"}]

# >>>> Adjust Glowing start (min=0, max=100)
# 104 - Reduce glowing start by 10 (or cycle to max)
# 105 - Increase glowing start by 10 (or cycle to min)
execute if score @s[tag=admin] uhcCmd matches 104 run scoreboard players remove GlowingStart uhcOption 10
execute if score @s[tag=admin] uhcCmd matches 105 run scoreboard players add GlowingStart uhcOption 10
execute if score GlowingStart uhcOption matches 101.. run scoreboard players set GlowingStart uhcOption 0
execute if score GlowingStart uhcOption matches ..-1 run scoreboard players set GlowingStart uhcOption 100
execute if score @s[tag=admin] uhcCmd matches 104..105 run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Glowing start ","color":"aqua"},{"text":"set to ","color":"reset"},{"score":{"name":"GlowingStart","objective":"uhcOption"},"color":"gold"},{"text":" minutes","color":"reset"}]


# Handle sound effects and permission errors
execute if score @s[tag=!admin] uhcCmd matches 17.. run tellraw @s [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Options","color":"gray"},{"text":" \u2503 Sorry only ","color":"reset"},{"text":"UHC Admins","color":"gold"},{"text":" can perform that action","color":"reset"}]
execute if score @s[tag=!admin] uhcCmd matches ..16 at @s run playsound minecraft:block.note.chime player @s ~ ~ ~ 1 1
execute if entity @s[tag=admin] unless score @s uhcCmd matches 30 at @s run playsound minecraft:block.note.chime player @s ~ ~ ~ 1 1

# Finally, reset the book for everyone so that the scores are updated
execute as @a run function uhc_pack:lobby/reset_book

