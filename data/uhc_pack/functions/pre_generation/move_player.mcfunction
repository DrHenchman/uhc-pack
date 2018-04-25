
# Check exit condition up front
execute if score X uhcPG >= UHC uhcBSize if score Z uhcPG >= UHC uhcBSize run function uhc_pack:pre_generation/complete

# Teleport on X
execute unless score X uhcPG >= UHC uhcBSize as @a[tag=pre_generator] at @s run tp @s ~16 253 ~
# Teleport on Z
execute if score UHC uhcBSize matches 496 if score X uhcPG >= UHC uhcBSize as @a[tag=pre_generator] at @s run tp @s ~-496 253 ~16
execute if score UHC uhcBSize matches 1008 if score X uhcPG >= UHC uhcBSize as @a[tag=pre_generator] at @s run tp @s ~-1008 253 ~16
execute if score UHC uhcBSize matches 1520 if score X uhcPG >= UHC uhcBSize as @a[tag=pre_generator] at @s run tp @s ~-1520 253 ~16
execute if score UHC uhcBSize matches 2032 if score X uhcPG >= UHC uhcBSize as @a[tag=pre_generator] at @s run tp @s ~-2032 253 ~16
execute if score UHC uhcBSize matches 2544 if score X uhcPG >= UHC uhcBSize as @a[tag=pre_generator] at @s run tp @s ~-2544 253 ~16
execute if score UHC uhcBSize matches 3056 if score X uhcPG >= UHC uhcBSize as @a[tag=pre_generator] at @s run tp @s ~-3056 253 ~16

# Update coord scoreboards
execute if score X uhcPG >= UHC uhcBSize run scoreboard players add Z uhcPG 16
execute if score X uhcPG >= UHC uhcBSize run scoreboard players set X uhcPG -16
scoreboard players add X uhcPG 16

# Update progress scoreboard
scoreboard players add Done uhcPG 1
