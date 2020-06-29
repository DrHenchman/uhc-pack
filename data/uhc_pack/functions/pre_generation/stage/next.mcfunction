scoreboard players add Stage uhcPGSet 1

# Generate overworld
execute if score Stage uhcPGSet matches 1 run scoreboard players set Dimension uhcPGSet 0
execute if score Stage uhcPGSet matches 1 run scoreboard players set LoadTime uhcPGSet 30
# Generate nether (load it for longer to let lava flow)
execute if score Stage uhcPGSet matches 2 run scoreboard players set Dimension uhcPGSet -1
execute if score Stage uhcPGSet matches 2 run scoreboard players set LoadTime uhcPGSet 300

execute if score Stage uhcPGSet matches 1..2 run function uhc_pack:pre_generation/stage/generate
execute unless score Stage uhcPGSet matches ..2 run function uhc_pack:pre_generation/complete
