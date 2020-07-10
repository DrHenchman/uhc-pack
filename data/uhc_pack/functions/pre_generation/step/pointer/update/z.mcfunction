#
# Update the cursor's z coordinate for the pre-generation
#

scoreboard players add Z uhcPG 16

scoreboard players set Invert uhcPG -1
scoreboard players operation Direction uhcPG *= Invert uhcPG
scoreboard players reset Invert uhcPG
