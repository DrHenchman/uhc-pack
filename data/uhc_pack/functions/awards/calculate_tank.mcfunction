#
# Calculate and grant the tank advancement
#
# Tag: #uhc_pack:events/on_complete
#

scoreboard players set UHC uhcPG 0
execute as @a[team=!spectate] run scoreboard players operation UHC uhcPG > @s uhcDTaken
execute as @a[team=!spectate] if score @s uhcDTaken = UHC uhcPG run advancement grant @s only uhc_pack:awards/tank triggered
scoreboard players reset UHC uhcPG
