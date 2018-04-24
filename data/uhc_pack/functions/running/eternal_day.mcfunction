
execute if score UHC uhcMin = UHC uhcEter run gamerule doDaylightCycle false
execute if score UHC uhcMin = UHC uhcEter run time set noon
execute if score UHC uhcMin = UHC uhcEter run tellraw @a {"text":"Glowing", "color":"green"}
execute if score UHC uhcMin = UHC uhcEter as @a at @s run playsound entity.firework.launch player @s ~ ~ ~ 1 .5 1
