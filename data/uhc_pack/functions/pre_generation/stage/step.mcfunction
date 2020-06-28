# Move in the X direction if applicable
execute as @a[tag=pre_generator] run function uhc_pack:pre_generation/stage/step/x
# Else, move on the z-axis and start a new line
execute as @a[tag=pre_generator] if score X uhcPG >= UHC uhcBSize run function uhc_pack:pre_generation/stage/step/z

# Check exit condition
# If the test fails, mark this step as done and continue
execute if score Z uhcPG >= UHC uhcBSize run function uhc_pack:pre_generation/stage/complete
execute unless score Z uhcPG >= UHC uhcBSize run scoreboard players add Done uhcPG 1
