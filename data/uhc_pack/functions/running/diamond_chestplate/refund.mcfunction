give @s minecraft:diamond 8

tellraw @s [{"text":"UHC","color":"light_purple"},{"text":" \u2503 ","color":"reset"},{"text":"Diamond chestplates","color":"gray"},{"text":" \u2503 ","color":"reset"},{"text":"Disabled","color":"red"}]
execute at @s run playsound minecraft:entity.item.break player @s ~ ~ ~ 1 0.5

scoreboard players set @s uhcDiaChest 0
