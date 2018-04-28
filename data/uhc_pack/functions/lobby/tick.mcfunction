execute as @a[scores={uhcOpt=1..}] run function uhc_pack:lobby/update_options
execute as @a[advancements={uhc_pack:lobby_book=false}] run advancement grant @s only uhc_pack:lobby_book

# 5 seconds to accomodate for the start sequence
effect give @a minecraft:weakness 5 255 true
effect give @a minecraft:saturation 5 255 true
