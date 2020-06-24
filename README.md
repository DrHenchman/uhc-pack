![CI](https://github.com/DrHenchman/uhc-pack/workflows/CI/badge.svg)

# UHC Pack v0.16 for Minecraft 1.15+

A datapack for Minecraft 1.15+ for running Ultra Hardcore (UHC) tournaments.

## How to setup

1. Download the zip file for the [latest release](https://github.com/DrHenchman/uhc-pack/releases/download/v0.16/uhc-pack.zip) of the datapack
2. Place the zip file in in the `<world>/datapacks/` folder
3. Run `/reload` on your server to detect the new datapack
4. Decide the center of your map and teleport to it e.g. `/tp @s 0 ~ 0`
5. Run `/function uhc_pack:setup` to prepare the Lobby

From here, you can control the rest of the setup the book provided.

After the UHC is complete you can run `/function uhc_pack:complete` to put
everyone into spectator mode and lock in the awards. You can then reveal
the awards using `/function uhc_pack:awards/reveal`.

## Features

* *Team selection* - Allow players to select their own teams as well as allow for them to be randomized between a specified number of teams.
  Players can also choose to spectate only. Players who join after the game has started automatically spectate.
* *World configuration* - Pick from a number of world sizes, from 500-3K blocks wide. Chunks can also be pre-generated to avoid lag during gameplay.
  To encourage combat, you can also configure a shrinking border with control over when it starts shrinking, the duration it shrinks for and the
  eventual border size.
* *Minute markers* - To help keep track of time, minute markers can be configured.
* *Late game options* - Encourage teams to engage in PVP by triggering external day and glowing effects.
* *Buffs and Nerfs* - Control the balance of your UHC using toggles for whether strong potions or suspicious stews are allowed.

## Credits

* DrHenchman - Creator of the datapack

## License

UHC Pack - Ultra Hardcore for Minecraft 1.15+
Copyright (C) 2020  DrHenchman

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
