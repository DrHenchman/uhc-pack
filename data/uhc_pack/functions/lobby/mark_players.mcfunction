# Add the 'playing' tag for all players who are participating in the UHC
# This is important for the death function
tag @a[team=!spectate,tag=!playing] add playing
tag @a[team=spectate,tag=playing] remove playing

# Count the amount of people that currently have the "playing" tag.
execute store result score Players uhcState run execute if entity @a[tag=playing]
function uhc_pack:lobby/update_sidebar
