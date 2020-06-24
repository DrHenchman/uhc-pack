# This will set the score on the scoreboard to 1, but only if the clear command worked.
# Fixes a race condition which could occur if the player throws out the chestplate the moment they get it.
execute store success score @s uhcDiaChest run clear @s minecraft:diamond_chestplate

# Only refund if the clear command worked!
execute as @s if score @s uhcDiaChest matches 1 run function uhc_pack:running/diamond_chestplate/refund
