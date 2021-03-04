#
# Reveal the advancements
#

# Temporarily re-enable advancements if they have been switched off
execute if score UHCShowAdvs uhcEnabled matches 0 run gamerule announceAdvancements true

advancement grant @a[team=!spectate] only uhc_pack:awards/winner revealed

advancement grant @a[team=!spectate] only uhc_pack:awards/early_exit revealed
advancement grant @a[team=!spectate] only uhc_pack:awards/first_blood revealed
advancement grant @a[team=!spectate] only uhc_pack:awards/mostly_harmless revealed
advancement grant @a[team=!spectate] only uhc_pack:awards/heavy_hitter revealed
advancement grant @a[team=!spectate] only uhc_pack:awards/tank revealed
advancement grant @a[team=!spectate] only uhc_pack:awards/mvp revealed

# Re-disable advancements
execute if score UHCShowAdvs uhcEnabled matches 0 run gamerule announceAdvancements false
