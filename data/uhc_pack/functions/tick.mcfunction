#
# Call the corresponding tick function for the current UHC state 
#
# Tag: #minecraft:tick
#

# uhcState - The state machine scoreboard
#
# 1 - Lobby
# 3 - Start sequence
# 4 - UHC
# 5 - Awards
execute if score UHC uhcState matches 1 run function uhc_pack:lobby/tick
execute if score UHC uhcState matches 3 run function uhc_pack:starting/tick
execute if score UHC uhcState matches 4 run function uhc_pack:running/tick

scoreboard players add UHC uhcTick 1
