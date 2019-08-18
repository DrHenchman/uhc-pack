
execute if score UHCEter uhcEnabled matches 1 if score UHC uhcMin = UHC uhcEter run gamerule doDaylightCycle false
execute if score UHCEter uhcEnabled matches 1 if score UHC uhcMin = UHC uhcEter run time set noon
execute if score UHCEter uhcEnabled matches 1 if score UHC uhcMin = UHC uhcEter run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Eternal day","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Activated", "color":"gold"}]
execute if score UHCEter uhcEnabled matches 1 if score UHC uhcMin = UHC uhcEter as @a at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 1 1.5
