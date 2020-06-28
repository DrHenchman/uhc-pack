function uhc_pack:pre_generation/stage/step/z/update

execute unless score Z uhcPG >= UHC uhcBSize run function uhc_pack:pre_generation/stage/step/z/move
