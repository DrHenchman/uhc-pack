execute as @a[scores={uhcOpt=1..}] run function uhc_pack:lobby/update_options
execute as @a[advancements={uhc_pack:lobby_book=false}] run advancement grant @s only uhc_pack:lobby_book
# MC-129912 - You currently don't spawn in the lobby
execute at @e[type=minecraft:armour_stand,tag=lobbycenter] as @a[tag=!pre_generator,distance=100...] run tp @s @e[type=minecraft:armour_stand,tag=lobbycenter]

# 5 seconds to accomodate for the start sequence
effect give @a minecraft:weakness 5 255 true
effect give @a minecraft:saturation 5 255 true
