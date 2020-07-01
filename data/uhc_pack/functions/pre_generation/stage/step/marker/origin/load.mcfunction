function uhc_pack:pre_generation/stage/step/marker/origin/check_loaded

execute if score Dimension uhcPG matches -1 in minecraft:the_nether run forceload add ~ ~
execute if score Dimension uhcPG matches 0 in minecraft:overworld run forceload add ~ ~
