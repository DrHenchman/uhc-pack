
# Check exit condition up front
execute if score Z uhcPG >= UHC uhcBSize run function uhc_pack:pre_generation/complete

# Teleport on X
execute as @a[tag=pre_generator] run function uhc_pack:pre_generation/move_player/x
# Teleport on Z
execute as @a[tag=pre_generator] if score X uhcPG >= UHC uhcBSize run function uhc_pack:pre_generation/move_player/z

# Update progress scoreboard
execute if entity @a[tag=pre_generator] run scoreboard players add Done uhcPG 1
