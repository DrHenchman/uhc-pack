
execute if score Minute uhcTime >= GlowingStart uhcOption run effect give @a[team=!spectate] minecraft:glowing 90 0 true
execute if score Minute uhcTime = GlowingStart uhcOption run tellraw @a [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Glowing","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Activated", "color":"gold"}]
execute if score Minute uhcTime = GlowingStart uhcOption as @a at @s run playsound minecraft:entity.evocation_illager.cast_spell player @s ~ ~ ~ 1 1.2
