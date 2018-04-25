execute as @a[scores={uhcOpt=1..}] run function uhc_pack:lobby/update_options
execute as @a[advancements={uhc_pack:lobby_book=false}] run advancement grant @s only uhc_pack:lobby_book
