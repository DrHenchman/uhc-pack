execute if score SBSize uhcOption matches 16 if score SBDuration uhcOption matches 20 run worldborder set 16 1200
execute if score SBSize uhcOption matches 16 if score SBDuration uhcOption matches 40 run worldborder set 16 2400
execute if score SBSize uhcOption matches 16 if score SBDuration uhcOption matches 60 run worldborder set 16 3600
execute if score SBSize uhcOption matches 16 if score SBDuration uhcOption matches 80 run worldborder set 16 4800
execute if score SBSize uhcOption matches 16 if score SBDuration uhcOption matches 100 run worldborder set 16 6000
execute if score SBSize uhcOption matches 112 if score SBDuration uhcOption matches 20 run worldborder set 112 1200
execute if score SBSize uhcOption matches 112 if score SBDuration uhcOption matches 40 run worldborder set 112 2400
execute if score SBSize uhcOption matches 112 if score SBDuration uhcOption matches 60 run worldborder set 112 3600
execute if score SBSize uhcOption matches 112 if score SBDuration uhcOption matches 80 run worldborder set 112 4800
execute if score SBSize uhcOption matches 112 if score SBDuration uhcOption matches 100 run worldborder set 112 6000
execute if score SBSize uhcOption matches 208 if score SBDuration uhcOption matches 20 run worldborder set 208 1200
execute if score SBSize uhcOption matches 208 if score SBDuration uhcOption matches 40 run worldborder set 208 2400
execute if score SBSize uhcOption matches 208 if score SBDuration uhcOption matches 60 run worldborder set 208 3600
execute if score SBSize uhcOption matches 208 if score SBDuration uhcOption matches 80 run worldborder set 208 4800
execute if score SBSize uhcOption matches 208 if score SBDuration uhcOption matches 100 run worldborder set 208 6000
execute if score SBSize uhcOption matches 304 if score SBDuration uhcOption matches 20 run worldborder set 304 1200
execute if score SBSize uhcOption matches 304 if score SBDuration uhcOption matches 40 run worldborder set 304 2400
execute if score SBSize uhcOption matches 304 if score SBDuration uhcOption matches 60 run worldborder set 304 3600
execute if score SBSize uhcOption matches 304 if score SBDuration uhcOption matches 80 run worldborder set 304 4800
execute if score SBSize uhcOption matches 304 if score SBDuration uhcOption matches 100 run worldborder set 304 6000
execute if score SBSize uhcOption matches 400 if score SBDuration uhcOption matches 20 run worldborder set 400 1200
execute if score SBSize uhcOption matches 400 if score SBDuration uhcOption matches 40 run worldborder set 400 2400
execute if score SBSize uhcOption matches 400 if score SBDuration uhcOption matches 60 run worldborder set 400 3600
execute if score SBSize uhcOption matches 400 if score SBDuration uhcOption matches 80 run worldborder set 400 4800
execute if score SBSize uhcOption matches 400 if score SBDuration uhcOption matches 100 run worldborder set 400 6000
execute if score SBSize uhcOption matches 496 if score SBDuration uhcOption matches 20 run worldborder set 496 1200
execute if score SBSize uhcOption matches 496 if score SBDuration uhcOption matches 40 run worldborder set 496 2400
execute if score SBSize uhcOption matches 496 if score SBDuration uhcOption matches 60 run worldborder set 496 3600
execute if score SBSize uhcOption matches 496 if score SBDuration uhcOption matches 80 run worldborder set 496 4800
execute if score SBSize uhcOption matches 496 if score SBDuration uhcOption matches 100 run worldborder set 496 6000

tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Shrinking","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Activated","color":"gold"}]
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse player @s ~ ~ ~ 1 0
