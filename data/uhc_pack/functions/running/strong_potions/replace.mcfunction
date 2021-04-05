#
# Replace all the strong potions from the player's inventory and notify the player
#
# Entity: The player
# Location: The location of the player
#

tag @s remove any_strong_potion

function uhc_pack:running/strong_potions/replace_loop

playsound minecraft:entity.witch.drink player @s[tag=any_strong_potion] ~ ~ ~ 1 0.9
tellraw @s[tag=any_strong_potion] [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Strong potions","color":"gray"},{"text":" \u2503 "},{"text":"Disabled","color":"red"}]
tag @s remove any_strong_potion

