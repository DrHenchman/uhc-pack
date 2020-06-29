function uhc_pack:pre_generation/stage/step/x/update

execute unless score X uhcPG >= UHC uhcBSize run function uhc_pack:pre_generation/stage/step/x/move
