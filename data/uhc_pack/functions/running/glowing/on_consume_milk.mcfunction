#
# Regrant the glowing effect to the player
#
# Entity: The player who drank the milk
#

# Due to the way that the advancement trigger is invoked,
# at this point, the milk effect hasn't taken place. So we need
# the glowing effect to take effect next tick
execute if score UHC uhcState matches 4 if score UHCGlow enabled matches 1 if score UHC uhcMin >= UHC uhcGlow at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Effects:[{Id:24,Duration:2000,ShowParticles:false}],Duration:20,Radius:1}
