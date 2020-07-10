#
# Check whether border shrinking should start this minute
#
# Tag: #uhc_pack:minute
#

execute if score UHCShrink uhcEnabled matches 1 if score UHC uhcMin = UHC uhcSBStrt run function uhc_pack:running/border_shrinking/activate
