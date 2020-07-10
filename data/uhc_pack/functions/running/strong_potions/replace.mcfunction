#
# Replace the strong potion from the player's inventory
#
# Entity: The player
# Location: The location of the player
#

tag @s remove strong_potion

# Regular potions
execute store success score @s uhcPotion run clear @s minecraft:potion{Potion:"minecraft:strong_harming"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:potion{Potion:"minecraft:harming"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:potion{Potion:"minecraft:strong_healing"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:potion{Potion:"minecraft:healing"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:potion{Potion:"minecraft:strong_leaping"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:potion{Potion:"minecraft:leaping"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:potion{Potion:"minecraft:strong_poison"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:potion{Potion:"minecraft:poison"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:potion{Potion:"minecraft:strong_regeneration"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:potion{Potion:"minecraft:regeneration"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:potion{Potion:"minecraft:strong_slowness"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:potion{Potion:"minecraft:slowness"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:potion{Potion:"minecraft:strong_strength"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:potion{Potion:"minecraft:strength"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:potion{Potion:"minecraft:strong_swiftness"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:potion{Potion:"minecraft:swiftness"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:potion{Potion:"minecraft:strong_turtle_master"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:potion{Potion:"minecraft:turtle_master"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion

# Splash potions
execute store success score @s uhcPotion run clear @s minecraft:splash_potion{Potion:"minecraft:strong_harming"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:splash_potion{Potion:"minecraft:harming"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:splash_potion{Potion:"minecraft:strong_healing"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:splash_potion{Potion:"minecraft:healing"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:splash_potion{Potion:"minecraft:strong_leaping"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:splash_potion{Potion:"minecraft:leaping"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:splash_potion{Potion:"minecraft:strong_poison"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:splash_potion{Potion:"minecraft:poison"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:splash_potion{Potion:"minecraft:strong_regeneration"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:splash_potion{Potion:"minecraft:regeneration"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:splash_potion{Potion:"minecraft:strong_slowness"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:splash_potion{Potion:"minecraft:slowness"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:splash_potion{Potion:"minecraft:strong_strength"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:splash_potion{Potion:"minecraft:strength"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:splash_potion{Potion:"minecraft:strong_swiftness"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:splash_potion{Potion:"minecraft:swiftness"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:splash_potion{Potion:"minecraft:strong_turtle_master"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:splash_potion{Potion:"minecraft:turtle_master"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion

# Lingering potions
execute store success score @s uhcPotion run clear @s minecraft:lingering_potion{Potion:"minecraft:strong_harming"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:lingering_potion{Potion:"minecraft:harming"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:lingering_potion{Potion:"minecraft:strong_healing"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:lingering_potion{Potion:"minecraft:healing"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:lingering_potion{Potion:"minecraft:strong_leaping"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:lingering_potion{Potion:"minecraft:leaping"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:lingering_potion{Potion:"minecraft:strong_poison"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:lingering_potion{Potion:"minecraft:poison"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:lingering_potion{Potion:"minecraft:strong_regeneration"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:lingering_potion{Potion:"minecraft:regeneration"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:lingering_potion{Potion:"minecraft:strong_slowness"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:lingering_potion{Potion:"minecraft:slowness"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:lingering_potion{Potion:"minecraft:strong_strength"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:lingering_potion{Potion:"minecraft:strength"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:lingering_potion{Potion:"minecraft:strong_swiftness"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:lingering_potion{Potion:"minecraft:swiftness"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion
execute store success score @s uhcPotion run clear @s minecraft:lingering_potion{Potion:"minecraft:strong_turtle_master"} 1
execute if score @s uhcPotion matches 1 run give @s minecraft:lingering_potion{Potion:"minecraft:turtle_master"}
execute if score @s uhcPotion matches 1 run tag @s add strong_potion

playsound minecraft:entity.witch.drink player @s[tag=strong_potion] ~ ~ ~ 1 0.9
tellraw @s[tag=strong_potion] [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Strong potions","color":"gray"},{"text":" \u2503 "},{"text":"Disabled","color":"red"}]
tag @s remove strong_potion

