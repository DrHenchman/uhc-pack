scoreboard players add GID uhcPGSet 1

# Generate overworld
execute if score GID uhcPGSet matches 1 run scoreboard players set Dimension uhcPGSet 0
# Generate nether
execute if score GID uhcPGSet matches 2 run scoreboard players set Dimension uhcPGSet -1

execute if score GID uhcPGSet matches 1..2 run function uhc_pack:pre_generation/generate_dimension/do
execute unless score GID uhcPGSet matches ..2 run function uhc_pack:pre_generation/complete
