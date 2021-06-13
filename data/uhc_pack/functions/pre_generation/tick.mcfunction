#
# Tick the pre-generation, tail recursing on next tick if the stages are not yet complete
#

execute as @e[type=minecraft:armor_stand,tag=pre_generator] run execute if score @s uhcPGQueue >= LoadTime uhcPG run function uhc_pack:pre_generation/step/complete
execute as @e[type=minecraft:armor_stand,tag=pre_generator] run scoreboard players add @s uhcPGQueue 1

execute if score X uhcPG matches 0.. if score Z uhcPG matches 0.. run function uhc_pack:pre_generation/step/start

# Check exit condition
# If the test fails, mark this step as done and continue
execute if entity @e[type=minecraft:armor_stand,tag=pre_generator] run scoreboard players set NextStageDelay uhcPG 0
execute unless entity @e[type=minecraft:armor_stand,tag=pre_generator] run scoreboard players add NextStageDelay uhcPG 1
execute if score NextStageDelay uhcPG matches 20.. run function uhc_pack:pre_generation/stage/complete
execute if score NextStageDelay uhcPG matches 20.. run scoreboard players set NextStageDelay uhcPG 0
execute if score Stage uhcPG matches ..2 run schedule function uhc_pack:pre_generation/tick 1t
