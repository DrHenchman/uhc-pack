# All of these teleports should have the x-axis travel one chunk short to prevent drift on that axis
execute if score UHC uhcBSize matches 496 as @s at @s run tp @s ~-480 253 ~16
execute if score UHC uhcBSize matches 1008 as @s at @s run tp @s ~-992 253 ~16
execute if score UHC uhcBSize matches 1520 as @s at @s run tp @s ~-1508 253 ~16
execute if score UHC uhcBSize matches 2032 as @s at @s run tp @s ~-2016 253 ~16
execute if score UHC uhcBSize matches 2544 as @s at @s run tp @s ~-2528 253 ~16
execute if score UHC uhcBSize matches 3056 as @s at @s run tp @s ~-3040 253 ~16

scoreboard players add Z uhcPG 16
scoreboard players set X uhcPG 0
