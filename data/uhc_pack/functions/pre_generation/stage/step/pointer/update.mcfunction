function uhc_pack:pre_generation/stage/step/pointer/update/x

execute if score X uhcPG matches ..0 run function uhc_pack:pre_generation/stage/step/pointer/update/z
execute if score X uhcPG >= UHC uhcBSize run function uhc_pack:pre_generation/stage/step/pointer/update/z

execute if score Z uhcPG >= UHC uhcBSize run function uhc_pack:pre_generation/stage/step/pointer/reset
