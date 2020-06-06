# Most kills is the first thing we check
scoreboard players set UHC uhcPG 0
execute as @a[team=!spectate] run scoreboard players operation UHC uhcPG > @s uhcKills
execute as @a[team=!spectate] if score @s uhcKills = UHC uhcPG run advancement grant @s only uhc_pack:awards/mvp triggered_most_kills
execute unless entity @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true}}] as @a[team=!spectate] run advancement grant @s only uhc_pack:awards/mvp triggered_most_kills

# Then we check most health based on those remaining.
# We need to guard finding the max with a check for deaths, as everyone who has died will have full health
scoreboard players set UHC uhcPG 0
execute as @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true}}] unless score @s uhcDeaths matches 1.. run scoreboard players operation UHC uhcPG > @s uhcHealth
execute as @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true}}] if score @s uhcHealth = UHC uhcPG run advancement grant @s only uhc_pack:awards/mvp triggered_most_health
execute unless entity @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true,triggered_most_health=true}}] as @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true}}] run advancement grant @s only uhc_pack:awards/mvp triggered_most_health

# Finally, we check who dealt the most damage of those remaining
scoreboard players set UHC uhcPG 0
execute as @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true,triggered_most_health=true}}] run scoreboard players operation UHC uhcPG > @s uhcDealt
execute as @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true,triggered_most_health=true}}] if score @s uhcDealt = UHC uhcPG run advancement grant @s only uhc_pack:awards/mvp triggered_most_damage_dealt
execute unless entity @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true,triggered_most_health=true,triggered_most_damage_dealt=true}}] as @a[team=!spectate,advancements={uhc_pack:awards/mvp={triggered_most_kills=true,triggered_most_health=true}}] run advancement grant @s only uhc_pack:awards/mvp triggered_most_damage_dealt

scoreboard players reset UHC uhcPG

