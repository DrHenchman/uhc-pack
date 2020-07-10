#
# Replace the strong potion in the players inventory if
# the game state is running and strong potions are disabled
#
# Entity: The player who just obtained strong potion
#

advancement revoke @s only uhc_pack:running/obtain_strong_potion

execute if score UHC uhcState matches 4 if score UHCPotion uhcEnabled matches 0 run function uhc_pack:running/strong_potions/replace
