# UHC Pack v0.10 for Minecraft 1.14+

A datapack for Minecraft 1.14+ for running Ultra Hardcore (UHC) tournaments.

## How to setup

1. Download the zip file for the [latest release](https://github.com/DrHenchman/uhc-pack/releases/download/v0.10/uhc-pack.zip) of the datapack
2. Place the zip file in in the `<world>/datapacks/` folder
3. Run `/reload` on your server to detect the new datapack
4. Decide the center of your map and teleport to it e.g. `/tp @s 0 ~ 0`
5. Run `/function uhc_pack:setup` to prepare the Lobby

From here, you can control the rest of the setup the book provided.

After the UHC is complete you can run `/function uhc_pack:complete` to put
everyone into spectator mode and lock in the awards. You can then reveal
the awards using `/function uhc_pack:awards/reveal`.

## Planned Features

* (Semi-?)automatically complete when only a single team is left
* Team joining (on|off controls)
* Vanilla advancements (on|off controls)
* Suspicious stew (on|off controls)
* Level II potions (on|off controls)
* More UHC themed advancements:
    * Cavalry - Kill a player from horseback
    * Win without taking any damage
    * Last to take damage
    * First to find diamonds
    * First to enter the nether
    * First to find a fortress

## Credits

* DrHenchman - Creator of the datapack

## License

UHC Pack - Ultra Hardcore for Minecraft 1.14+
Copyright (C) 2019  DrHenchman

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
