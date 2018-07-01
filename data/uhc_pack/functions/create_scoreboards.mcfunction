# Common scoreboards
scoreboard objectives add uhcTime dummy Time
scoreboard objectives add uhcState dummy UHC State
scoreboard objectives add uhcCmd trigger Command Trigger
scoreboard objectives add uhcOption dummy Options
scoreboard objectives add uhcPG dummy Pre-generation

# UHC scoreboards
scoreboard objectives add uhcHealth health Health
scoreboard objectives setdisplay list uhcHealth
scoreboard objectives add uhcDeaths deathCount Deaths
scoreboard objectives add uhcDDealt minecraft.custom:minecraft.damage_dealt Damage Dealt
scoreboard objectives add uhcDTaken minecraft.custom:minecraft.damage_taken Damage Taken
scoreboard objectives add uhcKills minecraft.custom:minecraft.player_kills Kills
