#
# Calculate and grant the MVP advancement
#
# Tag: #uhc_pack:events/on_complete
#

# Most kills is the first thing we check
scoreboard players set UHC uhcPG 0
execute as @a[team=!spectate] run scoreboard players operation UHC uhcPG > @s uhcKills
execute as @a[team=!spectate] if score @s uhcKills = UHC uhcPG run advancement grant @s only uhc_pack:awards/mvp triggered_most_kills
execute unless entity @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true}}] run advancement grant @a[team=!spectate] only uhc_pack:awards/mvp triggered_most_kills

# Then we check most health based on those remaining.
#
# We need to guard these checks against 2 special case conditions:
#  - The player is alive and have taken no damage and don't have a scoreboard value
#  - The player has died and respawned and as a result has full health
#
# First we need to handle a missing scoreboard and immediately grant the advancement to any matching players
execute as @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true}}] unless score @s uhcHealth matches 0.. run advancement grant @s only uhc_pack:awards/mvp triggered_most_health
# Next, we find the player with the max health but only if players who haven't taken damage exist,
# but only take into account players who have had no deaths
scoreboard players set UHC uhcPG 0
execute unless entity @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true,triggered_most_health=true}}] as @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true}}] unless score @s uhcDeaths matches 1.. run scoreboard players operation UHC uhcPG > @s uhcHealth
execute unless entity @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true,triggered_most_health=true}}] as @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true}}] if score @s uhcHealth = UHC uhcPG run advancement grant @s only uhc_pack:awards/mvp triggered_most_health
execute unless entity @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true,triggered_most_health=true}}] run advancement grant @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true}}] only uhc_pack:awards/mvp triggered_most_health

# Finally, we check who dealt the most damage of those remaining
scoreboard players set UHC uhcPG 0
execute as @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true,triggered_most_health=true}}] run scoreboard players operation UHC uhcPG > @s uhcDealt
execute as @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true,triggered_most_health=true}}] if score @s uhcDealt = UHC uhcPG run advancement grant @s only uhc_pack:awards/mvp triggered_most_damage_dealt
execute unless entity @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true,triggered_most_health=true,triggered_most_damage_dealt=true}}] run advancement grant @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true,triggered_most_health=true}}] only uhc_pack:awards/mvp triggered_most_damage_dealt

scoreboard players reset UHC uhcPG

