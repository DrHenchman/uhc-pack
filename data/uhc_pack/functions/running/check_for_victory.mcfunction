#
# Check the playing players remaining and see if they are all on the same team
#

# Special case. Each player without a team are treated as separate teams
execute store result score TeamsRemaining uhcState run execute if entity @a[tag=playing,team=]

execute if entity @a[tag=playing,team=redstone] run scoreboard players add TeamsRemaining uhcState 1
execute if entity @a[tag=playing,team=gold] run scoreboard players add TeamsRemaining uhcState 1
execute if entity @a[tag=playing,team=slime] run scoreboard players add TeamsRemaining uhcState 1
execute if entity @a[tag=playing,team=diamond] run scoreboard players add TeamsRemaining uhcState 1
execute if entity @a[tag=playing,team=water] run scoreboard players add TeamsRemaining uhcState 1
execute if entity @a[tag=playing,team=purpur] run scoreboard players add TeamsRemaining uhcState 1
execute if entity @a[tag=playing,team=stone] run scoreboard players add TeamsRemaining uhcState 1
execute if entity @a[tag=playing,team=netherwart] run scoreboard players add TeamsRemaining uhcState 1
execute if entity @a[tag=playing,team=acacia] run scoreboard players add TeamsRemaining uhcState 1
execute if entity @a[tag=playing,team=grass] run scoreboard players add TeamsRemaining uhcState 1
execute if entity @a[tag=playing,team=prismarine] run scoreboard players add TeamsRemaining uhcState 1
execute if entity @a[tag=playing,team=lapis] run scoreboard players add TeamsRemaining uhcState 1
execute if entity @a[tag=playing,team=chorus] run scoreboard players add TeamsRemaining uhcState 1
execute if entity @a[tag=playing,team=bedrock] run scoreboard players add TeamsRemaining uhcState 1

execute if score TeamsRemaining uhcState matches 0..1 run tellraw @a[tag=admin] [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Victory detected","color":"gray"},{"text":" \u2503 "},{"text":"[Click to complete]","color":"green","clickEvent":{"action":"run_command","value":"/function uhc_pack:complete"}}]
