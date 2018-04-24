
execute if score UHC uhcMin >= UHC uhcGlow run effect give @a[team=!spectate] minecraft:glowing 90 0 true
execute if score UHC uhcMin = UHC uhcGlow run tellraw @a {"text":"Eternal day", "color":"green"}
execute if score UHC uhcMin = UHC uhcGlow as @a at @s run playsound entity.firework.launch player @s ~ ~ ~ 1 .5 1
