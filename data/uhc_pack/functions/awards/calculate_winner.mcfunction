#
# Calculate and grant the WINNER advancement
#
# Tag: #uhc_pack:events/on_complete
#

# Special case. As players without teams are solo, only give the advancement to the player
# still playing
execute if entity @a[tag=playing,team=] run advancement grant @a[tag=playing,team=] only uhc_pack:awards/winner triggered

# Check for any remaining players in each team still alive, and if there are, grant everyone in the team the winner advancement
execute if entity @a[tag=playing,team=redstone] run advancement grant @a[team=redstone] only uhc_pack:awards/winner triggered
execute if entity @a[tag=playing,team=gold] run advancement grant @a[team=gold] only uhc_pack:awards/winner triggered
execute if entity @a[tag=playing,team=slime] run advancement grant @a[team=slime] only uhc_pack:awards/winner triggered
execute if entity @a[tag=playing,team=diamond] run advancement grant @a[team=diamond] only uhc_pack:awards/winner triggered
execute if entity @a[tag=playing,team=water] run advancement grant @a[team=water] only uhc_pack:awards/winner triggered
execute if entity @a[tag=playing,team=purpur] run advancement grant @a[team=purpur] only uhc_pack:awards/winner triggered
execute if entity @a[tag=playing,team=stone] run advancement grant @a[team=stone] only uhc_pack:awards/winner triggered
execute if entity @a[tag=playing,team=netherwart] run advancement grant @a[team=netherwart] only uhc_pack:awards/winner triggered
execute if entity @a[tag=playing,team=acacia] run advancement grant @a[team=acacia] only uhc_pack:awards/winner triggered
execute if entity @a[tag=playing,team=grass] run advancement grant @a[team=grass] only uhc_pack:awards/winner triggered
execute if entity @a[tag=playing,team=prismarine] run advancement grant @a[team=prismarine] only uhc_pack:awards/winner triggered
execute if entity @a[tag=playing,team=lapis] run advancement grant @a[team=lapis] only uhc_pack:awards/winner triggered
execute if entity @a[tag=playing,team=chorus] run advancement grant @a[team=chorus] only uhc_pack:awards/winner triggered
execute if entity @a[tag=playing,team=bedrock] run advancement grant @a[team=bedrock] only uhc_pack:awards/winner triggered
