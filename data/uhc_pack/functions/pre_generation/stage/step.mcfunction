execute as @e[tag=pre_generator] run execute if score @s uhcPGQueue = LoadTime uhcPGSet run function uhc_pack:pre_generation/stage/step/chunk/unload
execute as @e[tag=pre_generator] run execute if score @s uhcPGQueue < LoadTime uhcPGSet run scoreboard players add @s uhcPGQueue 1

execute if score X uhcPG matches 0.. if score Z uhcPG matches 0.. run function uhc_pack:pre_generation/stage/step/teleport
execute if score X uhcPG matches 0.. if score Z uhcPG matches 0.. run function uhc_pack:pre_generation/stage/step/pointer/update

# Check exit condition
# If the test fails, mark this step as done and continue
execute unless entity @e[tag=pre_generator] run function uhc_pack:pre_generation/stage/complete
