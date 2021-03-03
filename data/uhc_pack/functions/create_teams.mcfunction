#
# Create all teams
# 
# Tag: #minecraft:load
#

team add spectate
team modify spectate color black
team modify spectate deathMessageVisibility never

team add redstone "Redstone"
team modify redstone color red

team add gold "Gold"
team modify gold color yellow

team add slime "Slime"
team modify slime color green

team add diamond "Diamond"
team modify diamond color aqua

team add water "Water"
team modify water color blue

team add purpur "Purpur"
team modify purpur color light_purple

team add stone "Stone"
team modify stone color gray

team add netherwart "Netherwart"
team modify netherwart color dark_red

team add acacia "Acacia"
team modify acacia color gold

team add grass "Grass"
team modify grass color dark_green

team add prismarine "Prismarine"
team modify prismarine color dark_aqua

team add lapis "Lapis"
team modify lapis color dark_blue

team add chorus "Chorus"
team modify chorus color dark_purple

team add bedrock "Bedrock"
team modify bedrock color dark_gray

# Paper fix. Empty teams are deleted by default and as a result will not have the correct friendly fire option
execute if score UHC uhcState matches 4 if score UHCFriendlyFire uhcEnabled matches 1 run function uhc_pack:starting/friendlyfire_enable
execute if score UHC uhcState matches 4 if score UHCFriendlyFire uhcEnabled matches 0 run function uhc_pack:starting/friendlyfire_disable
