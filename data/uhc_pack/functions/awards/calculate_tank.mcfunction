scoreboard players set UHC uhcPG 0
execute as @a[team=!spectate] if score @s uhcDTaken > UHC uhcPG store result score UHC uhcPG run scoreboard players get @s uhcDTaken
execute as @a[team=!spectate] if score @s uhcDTaken = UHC uhcPG run advancement grant @s only uhc_pack:awards/tank triggered
scoreboard players reset UHC uhcPG
