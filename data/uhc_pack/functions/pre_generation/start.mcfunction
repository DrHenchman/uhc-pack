scoreboard players set Stage uhcPG 0

tellraw @a [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Pre-generation","color":"gray"},{"text":" \u2503 "},{"text":"Started","color":"gold"}]

scoreboard players set UHC uhcTick 0
scoreboard players set UHC uhcState 2

function uhc_pack:pre_generation/stage/next
