# Mark every pre-generator to be teleported
tag @s add tp_subject

function uhc_pack:pre_generation/stage/teleport/find_start

# Do the dynamic teleport, and make sure it happens in the right dimension
execute if score Dimension uhcPGSet matches -1 in minecraft:the_nether positioned 0 0 0 run function uhc_pack:pre_generation/dynamic_tp/do
execute if score Dimension uhcPGSet matches 0 in minecraft:overworld positioned 0 0 0 run function uhc_pack:pre_generation/dynamic_tp/do
execute if score Dimension uhcPGSet matches 1 in minecraft:the_end positioned 0 0 0 run function uhc_pack:pre_generation/dynamic_tp/do
