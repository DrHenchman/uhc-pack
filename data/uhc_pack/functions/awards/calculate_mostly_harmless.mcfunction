scoreboard players set UHC uhcPG 100000
execute as @a[team=!spectate] if score @s uhcDDealt < UHC uhcPG store result score UHC uhcPG run scoreboard players get @s uhcDDealt
execute as @a[team=!spectate] if score @s uhcDDealt = UHC uhcPG run advancement grant @s only uhc_pack:awards/mostly_harmless triggered
scoreboard players reset UHC uhcPG
