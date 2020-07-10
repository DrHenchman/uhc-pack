#
# Update the cursor's x coordinate for the pre-generation
#

execute if score Direction uhcPG matches 1 run scoreboard players add X uhcPG 16
execute unless score Direction uhcPG matches 1 run scoreboard players remove X uhcPG 16
