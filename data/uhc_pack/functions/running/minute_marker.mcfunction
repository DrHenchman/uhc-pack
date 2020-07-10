#
# Check if a minute marker is due to go off this minute
#
# Tag: #uhc_pack:minute
#

execute if score UHCMM uhcEnabled matches 1 if score UHC uhcMin = UHC uhcNextMM if score UHC uhcMin matches 1.. run tellraw @a [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Mark","color":"gray"},{"text":" \u2503 "},{"score":{"name":"UHC","objective":"uhcNextMM"},"color":"gold"},{"text":" Minutes", "color":"gold"}]
execute if score UHCMM uhcEnabled matches 1 if score UHC uhcMin = UHC uhcNextMM if score UHC uhcMin matches 1.. as @a at @s run playsound entity.firework_rocket.launch voice @s ~ ~ ~ 1 .5 1
execute if score UHCMM uhcEnabled matches 1 if score UHC uhcMin = UHC uhcNextMM run scoreboard players operation UHC uhcNextMM += UHC uhcMM
