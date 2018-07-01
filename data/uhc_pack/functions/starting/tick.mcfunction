
execute if score Tick uhcTime matches 1 run title @a subtitle {"text":"Good luck!"}
execute if score Tick uhcTime matches 1 run title @a title {"text":"UHC is starting!","color":"gold"}
execute if score Tick uhcTime matches 1 as @a at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 1

execute if score Tick uhcTime matches 60 run title @a subtitle ""
execute if score Tick uhcTime matches 60 run title @a title {"text":"5","color":"gold"}
execute if score Tick uhcTime matches 60 as @a at @s run playsound minecraft:block.note.flute player @s ~ ~ ~ 1 0.5

execute if score Tick uhcTime matches 80 run title @a title {"text":"4","color":"gold"}
execute if score Tick uhcTime matches 80 as @a at @s run playsound minecraft:block.note.flute player @s ~ ~ ~ 1 0.5

execute if score Tick uhcTime matches 100 run title @a title {"text":"3","color":"gold"}
execute if score Tick uhcTime matches 100 as @a at @s run playsound minecraft:block.note.flute player @s ~ ~ ~ 1 0.5

execute if score Tick uhcTime matches 120 run title @a title {"text":"2","color":"gold"}
execute if score Tick uhcTime matches 120 as @a at @s run playsound minecraft:block.note.flute player @s ~ ~ ~ 1 0.5

execute if score Tick uhcTime matches 140 run title @a title {"text":"1","color":"gold"}
execute if score Tick uhcTime matches 140 as @a at @s run playsound minecraft:block.note.flute player @s ~ ~ ~ 1 0.5

execute if score Tick uhcTime matches 160 run title @a title {"text":"Begin!","color":"green"}
execute if score Tick uhcTime matches 160.. run function uhc_pack:starting/start
