advancement revoke @s only uhc_pack:running/obtain_strong_potion

execute if score UHC uhcState matches 4 if score UHCPotion uhcEnabled matches 0 run function uhc_pack:running/strong_potions/replace
