# Brutal Oblige
**The curently supported version of Brutal Doom is V21**

**Requirements:**

* Oblige / Onlige64 Version 7.70 (For those of you who don't know [Oblige](http://oblige.sourceforge.net/) is a random map generator for Doom. It's really good and you should check it out)
* Brutal Doom Version 21
* doom2.wad or doom_complete.pk3

This mod uses some code and Prefabs from the ObAddon project: https://github.com/caligari87/ObAddon

**Features**

* New monsters: Belphegor, Juggernaut, Mother Demon, Volcabus, Ancient Arachnotron, Zyberdemon (from 00_Zombie_00) 
* New weapons: BFG 10k, Grenade Launcher and Railgun
* Probability of each of the new monsters/weapons appearing can be tweaked or switched off completely
* Grenades appear alongside other ammo pickups 
* Skyboxes with random weather effects
* Secret levels: If you make a full 32 map wad there will be 3 secret exits on random levels. The first on levels 1-9, the second on level 15 and the third on levels 21-29. The second goes to map 31 (which itself has a secret exit to 32).
* Wolfenstein theme (Monsters, Bosses, Prefabs, Decorations)
* More level sizes (from micro to extreme)
* Sky Generator (Obaddon)
* Layout Absurdity Module (Obaddon)
* Call of Duty Mode (Obaddon)
* Prebuilt Level Control
* DoomComplete.pk3 support
* Music shuffler
* Episode selection support
* Fog generator (Obaddon)
* Dynamic lights support (Obaddon)
* Glowing flats support (Obaddon)
* Psychadelic Theme (Obaddon)
* Brightness module (extra brightness for levels)
* Nightmare Monsters; a separate module I've made which adds the Nightmare Demon from PSX Doom and the Nightmare Imp from Doom64. This can be used without Brutal Doom but if used with the monsters have more and gorier death states.
* A proper ending after the last Oblige level, no matter how many there are
* Debugging module
* Universal Intermission Screen support
* Better floors and ceilings
* Support for Extra Monsters from realm667.com (https://gitlab.com/Stoffelkopf/realm667-oblige)


**How to use - Latest development version**

1) Download or clone this repository.

2) If on Windows run BuildPK3.bat, requires an up to date version of Powershell and .NET
If on *nix run BuildPK3.sh, requires zip

If this builds successfully then move on to step 4. If this method fails or otherwise can't be used then try the manual method in the next step

	3) - Manual) Add all the folders to a zip folder called BrutalOblige.zip

Rename it to change the extension from .zip to .pk3, if on Windows you can use the included zip2pk3.bat to do this for you.

Note that if you downloaded this from gitlab rather than cloning the repo you can't just rename that .zip, first you must unzip it, then put the folders that are *inside* the BrutalOblige-whatever folder that comes out into a zip. This is the way Gitlab works, there's nothing I can do about it.

4) Copy or move the pk3 to Oblige's addon directory. This will be in the same place as Oblige.exe on Windows or /usr/share/oblige/addons on Linux.

5) Run Oblige, select Menu, Addon List and check the box for BrutalOblige. Restart Oblige, Brutal Doom should now appear as an option in the game menu.

6) Click build to generate a wad with the new maps.

7) Load this wad **after** Brutal Doom

8) Happy bug hunting.


**Known issues**

* This is just an addon so any known issues with Oblige or Brutal Doom will still be present.
* If you get "Script error, "brutalv20b.pk3:cvarinfo" line 1: cvar 'bd_bloodamount' already exists" then you are loading brutal doom twice. Try loading *just* the generated wad, it should pull in brutal automatically.
* double check that the pk3 is BrutalOblige.pk3 not BrutalOblige.pk3.zip

[Oblige Download](http://oblige.sourceforge.net/i_download.html)