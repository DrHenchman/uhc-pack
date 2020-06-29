scoreboard players reset @s uhcPGQueue
scoreboard players add Done uhcPG 1
execute store result bossbar uhc_pack:pregen value run scoreboard players get Done uhcPG

kill @s
execute at @s run forceload remove ~ ~
