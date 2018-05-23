# Reset the advancement always to it can be run again
advancement revoke @s only uhc_pack:running/drink_milk

execute if score UHC uhcState matches 4 if score UHC uhcMin >= UHC uhcGlow run effect give @s minecraft:glowing 90 0 true
