#
# Reapply night vision if it is enabled
#
# Tag: #uhc_pack:minute
#

execute if score UHCNightVision uhcEnabled matches 1 run effect give @a[team=!spectate] minecraft:night_vision 90 0 true
