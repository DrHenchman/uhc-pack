# Clone the lobby center's coordinates into the dynamic teleport scoreboard.
# This allows for scoreboard operations to be executed without losing track of these original coordinates.
execute store result score XLobby uhcDynTP run data get entity @e[tag=lobbycenter,limit=1] Pos[0]
execute store result score YLobby uhcDynTP run data get entity @e[tag=lobbycenter,limit=1] Pos[1]
execute store result score ZLobby uhcDynTP run data get entity @e[tag=lobbycenter,limit=1] Pos[2]

scoreboard players operation X uhcDynTP = XLobby uhcDynTP
scoreboard players operation Y uhcDynTP = YLobby uhcDynTP
scoreboard players operation Z uhcDynTP = ZLobby uhcDynTP

# If the destination is located in the nether, some special transformations have to be applied beforehand.
execute if score Dimension uhcPG matches -1 run function uhc_pack:pre_generation/stage/step/teleport/find_middle/nether

# Subtract the lobby's coordinates to effectively calculate the offset from the lobby center
scoreboard players operation X uhcDynTP -= XLobby uhcDynTP
scoreboard players operation Y uhcDynTP -= YLobby uhcDynTP
scoreboard players operation Z uhcDynTP -= ZLobby uhcDynTP

scoreboard players reset XLobby uhcDynTP
scoreboard players reset YLobby uhcDynTP
scoreboard players reset ZLobby uhcDynTP
