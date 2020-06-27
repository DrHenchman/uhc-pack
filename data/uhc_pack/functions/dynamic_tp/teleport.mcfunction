# Teleport the target marker to the desired location one axis at a time
# There is no need to load any other chunks, since @s selected entities stay in memory and do not have to be reselected
execute as @s if score X uhcDynTP matches 1.. run function uhc_pack:dynamic_tp/positive/x
execute as @s if score X uhcDynTP matches ..-1 run function uhc_pack:dynamic_tp/negative/x

execute as @s if score Y uhcDynTP matches 1.. run function uhc_pack:dynamic_tp/positive/y
execute as @s if score Y uhcDynTP matches ..-1 run function uhc_pack:dynamic_tp/negative/y

execute as @s if score Z uhcDynTP matches 1.. run function uhc_pack:dynamic_tp/positive/z
execute as @s if score Z uhcDynTP matches ..-1 run function uhc_pack:dynamic_tp/negative/z

execute as @s at @s store success score loadedDest uhcDynTP run forceload query ~ ~
execute as @s at @s if score loadedDest uhcDynTP matches 0 run forceload add ~ ~

# Teleport all subjects to the target
tp @e[tag=tp_subject] @s
# Clean up the forceload for the destination (if it wasn't loaded before)
execute as @s at @s if score loadedDest uhcDynTP matches 0 run forceload remove ~ ~
