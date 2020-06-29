function uhc_pack:pre_generation/stage/step/teleport/find_start

scoreboard players operation X uhcDynTP += X uhcPG
scoreboard players operation Z uhcDynTP += Z uhcPG

# Do the dynamic teleport, and make sure it happens in the right dimension
execute if score Dimension uhcPGSet matches -1 in minecraft:the_nether positioned 0 0 0 run function uhc_pack:pre_generation/stage/step/teleport/dynamic/do
execute if score Dimension uhcPGSet matches 0 in minecraft:overworld positioned 0 0 0 run function uhc_pack:pre_generation/stage/step/teleport/dynamic/do
execute if score Dimension uhcPGSet matches 1 in minecraft:the_end positioned 0 0 0 run function uhc_pack:pre_generation/stage/step/teleport/dynamic/do
