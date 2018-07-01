# uhcState - The state machine scoreboard
#
# 1 - Lobby
# 2 - Pre-generation
# 3 - Start sequence
# 4 - UHC 
# 5 - Awards

execute if score UHC uhcState matches 1 run function uhc_pack:lobby/tick
execute if score UHC uhcState matches 2 run function uhc_pack:pre_generation/tick
execute if score UHC uhcState matches 3 run function uhc_pack:starting/tick
execute if score UHC uhcState matches 4 run function uhc_pack:running/tick

scoreboard players add Tick uhcTime 1
