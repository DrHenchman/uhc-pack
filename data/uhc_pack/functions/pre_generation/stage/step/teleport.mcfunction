function uhc_pack:pre_generation/stage/step/teleport/find_start

scoreboard players operation X uhcDynTP += X uhcPG
scoreboard players operation Z uhcDynTP += Z uhcPG

# Do the dynamic teleport, and make sure it happens in the right dimension
execute positioned as @e[tag=lobbycenter,limit=1] run function uhc_pack:pre_generation/stage/step/marker
