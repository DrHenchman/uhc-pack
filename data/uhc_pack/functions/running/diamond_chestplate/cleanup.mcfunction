# This will set the score on the scoreboard to 1, but only if the clear command worked.
# Fixes a race condition which could occur if the player throws out the chestplate the moment they get it.
execute store success score @s uhcDiaChest run clear @s minecraft:diamond_chestplate
execute if score @s uhcDiaChest matches 1 run give @s minecraft:diamond 8

scoreboard players set @s uhcDiaChest 0
