# Reset the advancement always to it can be run again
advancement revoke @s only uhc_pack:running/drink_milk

# Due to the way which advancement trigger is invoked,
# at this point, the milk effect hasn't taken place. So we need
# this to happen next tick
execute if score UHC uhcState matches 4 if score UHC uhcMin >= UHC uhcGlow at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Effects:[{Id:24,Duration:2000,ShowParticles:false}],Duration:20,Radius:1}
