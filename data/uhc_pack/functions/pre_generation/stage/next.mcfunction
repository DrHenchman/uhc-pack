#
# Select the next state of the pre-generation
#

scoreboard players add Stage uhcPG 1

# Generate overworld
execute if score Stage uhcPG matches 1 run scoreboard players set Dimension uhcPG 0
execute if score Stage uhcPG matches 1 run scoreboard players set LoadTime uhcPG 30
execute if score Stage uhcPG matches 1 run bossbar set uhc_pack:pregen name {"text":"Generating the Overworld...","color":"white"}
# Generate nether (load it for longer to let lava flow)
execute if score Stage uhcPG matches 2 run scoreboard players set Dimension uhcPG -1
execute if score Stage uhcPG matches 2 run scoreboard players set LoadTime uhcPG 300
execute if score Stage uhcPG matches 2 run bossbar set uhc_pack:pregen name {"text":"Generating the Nether...","color":"white"}

execute if score Stage uhcPG matches ..2 run function uhc_pack:pre_generation/stage/start
execute unless score Stage uhcPG matches ..2 run function uhc_pack:pre_generation/complete
