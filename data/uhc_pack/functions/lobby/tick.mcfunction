#
# Do all the things which are required to happen on every tick when in the lobby state
#

execute as @a[scores={uhcOpt=1..}] run function uhc_pack:lobby/update_options
execute as @a[advancements={uhc_pack:lobby_book=false}] run advancement grant @s only uhc_pack:lobby_book
# MC-129912 - You currently don't spawn in the lobby
execute at @e[type=minecraft:armor_stand,tag=lobbycenter,limit=1] as @a[tag=!pre_generator,distance=100..] run tp @s @e[type=minecraft:armor_stand,tag=lobbycenter,limit=1]

# 5 seconds to accomodate for the start sequence
effect give @a minecraft:weakness 5 255 true
effect give @a minecraft:saturation 5 255 true

function uhc_pack:lobby/update_sidebar
