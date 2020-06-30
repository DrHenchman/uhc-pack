bossbar set uhc_pack:pregen visible false

scoreboard players reset X uhcPG
scoreboard players reset Y uhcPG
scoreboard players reset Done uhcPG
scoreboard players reset Total uhcPG
scoreboard players reset LoadTime uhcPG
scoreboard players reset Direction uhcPG

scoreboard players reset * uhcPGQueue

function uhc_pack:pre_generation/stage/next
