#
# Mark the player as having obtained a diamond chestplate
#
# Entity: The player who just obtained a diamond chestplate
#

advancement revoke @s only uhc_pack:running/obtain_diamond_chestplate

# Mark the player who received the chestplate on a scoreboard.
# This means cleanup can be handled the tick after, which eliminates desync issues
execute if score UHCDiamondChestplate uhcEnabled matches 0 run scoreboard players set @s uhcDiaChest 1
