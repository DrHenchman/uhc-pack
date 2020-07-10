#
# Calculate and grant the mostly harmless advancement
#
# Tag: #uhc_pack:events/on_complete
#

scoreboard players set UHC uhcPG 100000
execute as @a[team=!spectate] run scoreboard players operation UHC uhcPG < @s uhcDDealt
execute as @a[team=!spectate] if score @s uhcDDealt = UHC uhcPG run advancement grant @s only uhc_pack:awards/mostly_harmless triggered
scoreboard players reset UHC uhcPG
