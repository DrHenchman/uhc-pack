# Reset options
scoreboard players set UHC uhcTeams 4
scoreboard players set UHC uhcMM 20
scoreboard players set UHC uhcNextMM 0
scoreboard players set UHC uhcBSize 1008
scoreboard players set UHC uhcSBStrt 60
scoreboard players set UHC uhcSBSize 16
scoreboard players set UHC uhcSBDur 40
scoreboard players set UHC uhcEter 70
scoreboard players set UHC uhcGlow 80
scoreboard players set UHCShrink uhcEnabled 1
scoreboard players set UHCMM uhcEnabled 1
scoreboard players set UHCEter uhcEnabled 1
scoreboard players set UHCGlow uhcEnabled 1

# Display options for toggles
scoreboard players set @e[type=minecraft:armor_stand,tag=lobby,tag=toggle,tag=toggle_enabled,limit=1] uhcSBStrt 1
scoreboard players set @e[type=minecraft:armor_stand,tag=lobby,tag=toggle,tag=toggle_enabled,limit=1] uhcMM 1
scoreboard players set @e[type=minecraft:armor_stand,tag=lobby,tag=toggle,tag=toggle_enabled,limit=1] uhcEter 1
scoreboard players set @e[type=minecraft:armor_stand,tag=lobby,tag=toggle,tag=toggle_enabled,limit=1] uhcGlow 1
scoreboard players set @e[type=minecraft:armor_stand,tag=lobby,tag=toggle,tag=toggle_disabled,limit=1] uhcSBStrt 0
scoreboard players set @e[type=minecraft:armor_stand,tag=lobby,tag=toggle,tag=toggle_disabled,limit=1] uhcMM 0
scoreboard players set @e[type=minecraft:armor_stand,tag=lobby,tag=toggle,tag=toggle_disabled,limit=1] uhcEter 0
scoreboard players set @e[type=minecraft:armor_stand,tag=lobby,tag=toggle,tag=toggle_disabled,limit=1] uhcGlow 0
