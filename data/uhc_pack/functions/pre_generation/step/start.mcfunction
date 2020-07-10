#
# Start a step of a pre-generation stage. Each step loads one chunk
#

# Summon marker in the dimension we are currently generating, positioned at the lobby
execute if score Dimension uhcPG matches -1 positioned as @e[type=minecraft:armor_stand,tag=lobbycenter,limit=1] in minecraft:the_nether run summon minecraft:armor_stand ~ 250 ~ {Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["pre_generator","new"]}
execute if score Dimension uhcPG matches 0 positioned as @e[type=minecraft:armor_stand,tag=lobbycenter,limit=1] in minecraft:overworld run summon minecraft:armor_stand ~ 250 ~ {Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["pre_generator","new"]}

# Then move it to the correct location
execute as @e[type=minecraft:armor_stand,tag=pre_generator,tag=new,limit=1] run function uhc_pack:pre_generation/step/relocate_marker

function uhc_pack:pre_generation/step/pointer/update
