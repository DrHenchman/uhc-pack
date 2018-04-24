execute if score UHC uhcMin = UHC uhcNextMM if score UHC uhcMin matches 1.. run tellraw @a [{"text":"| Mark | ","color":"gray"},{"score":{"name":"UHC","objective":"uhcNextMM"},"color":"green"},{"text":" Minutes", "color":"green"}]
execute if score UHC uhcMin = UHC uhcNextMM if score UHC uhcMin matches 1.. as @a at @s run playsound entity.firework.launch voice @s ~ ~ ~ 1 .5 1
execute if score UHC uhcMin = UHC uhcNextMM run scoreboard players operation UHC uhcNextMM += UHC uhcMM
