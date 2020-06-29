forceload add 0 0
summon minecraft:armor_stand 0 250 0 {Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,Tags:["pre_generator","new"]}

execute as @e[tag=pre_generator,tag=new,limit=1] run function uhc_pack:pre_generation/stage/step/teleport/dynamic/teleport
