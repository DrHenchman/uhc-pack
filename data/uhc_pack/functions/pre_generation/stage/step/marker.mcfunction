execute if score Dimension uhcPG matches -1 in minecraft:the_nether run function uhc_pack:pre_generation/stage/step/marker/create
execute if score Dimension uhcPG matches 0 in minecraft:overworld run function uhc_pack:pre_generation/stage/step/marker/create
execute if score Dimension uhcPG matches 1 in minecraft:the_end run function uhc_pack:pre_generation/stage/step/marker/create

execute as @e[type=minecraft:armor_stand,tag=pre_generator,tag=new,limit=1] run function uhc_pack:pre_generation/stage/step/marker/relocate
