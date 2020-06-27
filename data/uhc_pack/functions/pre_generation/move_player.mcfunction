# Preemptively add a chunk to X.
# This allows the datapack to "predict" where the player will land next
execute if entity @a[tag=pre_generator] run scoreboard players add X uhcPG 16

# If the predicted coordinates fall within the border, teleport the player on the x-axis
execute as @a[tag=pre_generator] unless score X uhcPG >= UHC uhcBSize run function uhc_pack:pre_generation/move_player/x
# Else, move on the z-axis and start a new line
execute as @a[tag=pre_generator] if score X uhcPG >= UHC uhcBSize run function uhc_pack:pre_generation/move_player/z

# Check exit condition
execute if score Z uhcPG >= UHC uhcBSize run function uhc_pack:pre_generation/stage/complete
# If the test fails, mark this step as done and continue
execute unless score Z uhcPG >= UHC uhcBSize run scoreboard players add Done uhcPG 1
