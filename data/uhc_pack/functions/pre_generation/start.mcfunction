#
# Start the pre-generation
#

scoreboard players set Stage uhcPG 0

tellraw @a [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Pre-generation","color":"gray"},{"text":" \u2503 "},{"text":"Started","color":"gold"}]

function uhc_pack:pre_generation/stage/next
schedule function uhc_pack:pre_generation/tick 1t
