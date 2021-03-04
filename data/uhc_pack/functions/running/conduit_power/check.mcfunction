#
# Reapply conduit power if it is enabled
#
# Tag: #uhc_pack:minute
#

execute if score UHCConduit uhcEnabled matches 1 run effect give @a[team=!spectate] minecraft:conduit_power 90 0 true
