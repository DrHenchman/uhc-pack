
execute if score Minute uhcTime = EternalDayStart uhcOption run gamerule doDaylightCycle false
execute if score Minute uhcTime = EternalDayStart uhcOption run time set noon
execute if score Minute uhcTime = EternalDayStart uhcOption run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Eternal day","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Activated", "color":"gold"}]
execute if score Minute uhcTime = EternalDayStart uhcOption as @a at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 1 1.5
