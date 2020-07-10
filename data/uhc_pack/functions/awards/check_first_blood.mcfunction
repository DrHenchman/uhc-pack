#
# Check and grant the first blood advancement to the player if they are the
# first one to kill another player. If multiple players have killed another
# player in the same tick, choose one arbitrarily
#
# Tag: #uhc_pack:events/on_player_death
#

execute unless entity @a[advancements={uhc_pack:awards/first_blood={triggered=true,kill_player=true}}] as @a[advancements={uhc_pack:awards/first_blood={kill_player=true}},limit=1] run advancement grant @s only uhc_pack:awards/first_blood triggered
