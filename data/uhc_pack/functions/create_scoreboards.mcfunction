# Common scoreboards
scoreboard objectives add uhcTick dummy
scoreboard objectives add uhcState dummy
scoreboard objectives add uhcMM dummy
scoreboard objectives add uhcNextMM dummy
scoreboard objectives add uhcBSize dummy
scoreboard objectives add uhcSBStrt dummy
scoreboard objectives add uhcSBDur dummy
scoreboard objectives add uhcSBSize dummy
scoreboard objectives add uhcEter dummy
scoreboard objectives add uhcGlow dummy
scoreboard objectives add uhcEnabled dummy

# Lobby scoreboards
scoreboard objectives add uhcOpt trigger
scoreboard objectives add uhcTeams dummy

# Pre-generation scoreboards
scoreboard objectives add uhcPG dummy "Pre-generation"

# UHC scoreboards
scoreboard objectives add uhcMin dummy
scoreboard objectives add uhcHealth health "Health"
scoreboard objectives setdisplay list uhcHealth
scoreboard objectives add uhcDeaths deathCount "Deaths"
scoreboard objectives add uhcDDealt minecraft.custom:minecraft.damage_dealt "Damage Dealt"
scoreboard objectives add uhcDTaken minecraft.custom:minecraft.damage_taken "Damage Taken"
scoreboard objectives add uhcKills minecraft.custom:minecraft.player_kills "Kills"
