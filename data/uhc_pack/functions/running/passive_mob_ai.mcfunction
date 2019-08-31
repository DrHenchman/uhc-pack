execute if score UHCPassive uhcEnabled matches 0 run execute as @e[type=#uhc_pack:passive,type=!#uhc_pack:combat_tameable] unless data entity @s Passenger[0] run data merge entity @s {NoAI:1b}
