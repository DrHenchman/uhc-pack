
# Check exit condition up front
execute if score X uhcPG >= BorderSize uhcOption if score Z uhcPG >= BorderSize uhcOption run function uhc_pack:pre_generation/complete

# Teleport on X
execute unless score X uhcPG >= BorderSize uhcOption as @a[tag=pre_generator] at @s run tp @s ~16 253 ~
# Teleport on Z
execute if score BorderSize uhcOption matches 496 if score X uhcPG >= BorderSize uhcOption as @a[tag=pre_generator] at @s run tp @s ~-496 253 ~16
execute if score BorderSize uhcOption matches 1008 if score X uhcPG >= BorderSize uhcOption as @a[tag=pre_generator] at @s run tp @s ~-1008 253 ~16
execute if score BorderSize uhcOption matches 1520 if score X uhcPG >= BorderSize uhcOption as @a[tag=pre_generator] at @s run tp @s ~-1520 253 ~16
execute if score BorderSize uhcOption matches 2032 if score X uhcPG >= BorderSize uhcOption as @a[tag=pre_generator] at @s run tp @s ~-2032 253 ~16
execute if score BorderSize uhcOption matches 2544 if score X uhcPG >= BorderSize uhcOption as @a[tag=pre_generator] at @s run tp @s ~-2544 253 ~16
execute if score BorderSize uhcOption matches 3056 if score X uhcPG >= BorderSize uhcOption as @a[tag=pre_generator] at @s run tp @s ~-3056 253 ~16

# Update coord scoreboards
execute if entity @a[tag=pre_generator] if score X uhcPG >= BorderSize uhcOption run scoreboard players add Z uhcPG 16
execute if entity @a[tag=pre_generator] if score X uhcPG >= BorderSize uhcOption run scoreboard players set X uhcPG -16
execute if entity @a[tag=pre_generator] run scoreboard players add X uhcPG 16

# Update progress scoreboard
execute if entity @a[tag=pre_generator] run scoreboard players add Done uhcPG 1
