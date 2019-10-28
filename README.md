**The curently supported version of Brutal Doom is brutalv21.pk3**

# BrutalOblige

For those of you who don't know [Oblige](http://oblige.sourceforge.net/) is a random map generator for Doom. It's really good and you should check it out.
Something you also might not know is that brutaldoomv20b.pk3 contains a lot of stuff that you don't always get to play with, including monsters and weapons. With this in mind I made an addon to tell Oblige all about Brutal Doom's extra goodies and how to use them in maps.

**Features**

* New monsters: Belphegor, Juggernaut, Mother Demon, Zyberdemon, Volcabus, Ancient Arachnotron, Mummy
* New weapons: BFG 10k, Grenade Launcher and Railgun
* Probability of each of the new monsters/weapons appearing can be tweaked or switched off completely
* Grenades appear alongside other ammo pickups 
* Wolfenstein theme fixed so that it is populated by SS guards (if you run a Wolf themed map made without this addon it is filled with evil marines)
* Nightmare Monsters; a separate module I've made which adds the Nightmare Demon from PSX Doom and the Nightmare Imp from Doom64. This can be used without Brutal Doom but if used with the monsters have more and gorier death states.
* Kicking with the new weapons is no longer invisible.


**How to use - Latest development version**

1) Download Oblige if you haven't already and make sure you have the latest supported Brutal Doom. See below for current supported versions.

2) Download or clone this repository.

3) If on Windows run BuildPK3.bat, requires an up to date version of Powershell and .NET
If on *nix run BuildPK3.sh, requires zip

If this builds successfully then move on to step 4. If this method fails or otherwise can't be used then try the manual method in the next step

3 - Manual) Add all the folders to a zip folder called BrutalOblige.zip

Rename it to change the extension from .zip to .pk3, if on Windows you can use the included zip2pk3.bat to do this for you.

Note that if you downloaded this from gitlab rather than cloning the repo you can't just rename that .zip, first you must unzip it, then put the folders that are *inside* the BrutalOblige-whatever folder that comes out into a zip. This is the way Gitlab works, there's nothing I can do about it.

4) Copy or move the pk3 to Oblige's addon directory. This will be in the same place as Oblige.exe on Windows or /usr/share/oblige/addons on Linux.

5) Run Oblige, select Menu, Addon List and check the box for BrutalOblige. Restart Oblige, Brutal Doom should now appear as an option in the game menu.

6) Click build to generate a wad with the new maps.

7) Load this wad **after** Brutal Doom

8) Happy bug hunting.

# Current supported versions

  | Version | Expected filename
-- | -- | --
Oblige | 7.70 |  
Brutal Doom | 21 | brutalv21.pk3


* Secret levels: If you make a full 32 map wad there will be 3 secret exits on random levels. The first on levels 1-9, the second on levels 11-19 and the third on levels 21-29. The second goes to map 31 (which itself has a secret exit to 32), where the others go I will leave as a surprise.
* A proper ending after the last Oblige level, no matter how many there are.


**Known issues**

* Somewhere along the line it stopped working with Zandronum. I'm willing to attempt to fix this is anyone asks but if not, screw Zandronum.
* This is just an addon so any known issues with Oblige or Brutal Doom will still be present.
* If you get "Script error, "brutalv20b.pk3:cvarinfo" line 1: cvar 'bd_bloodamount' already exists" then you are loading brutal doom twice. Try loading *just* the generated wad, it should pull in brutal automatically.
* Currently any vanilla Doom/Doom2 maps generated while this mod is active can have missing textures or objects. This will be fixed before the next release.
* double check that the pk3 is BrutalOblige.pk3 not BrutalOblige.pk3.zip

**A note on compiled acs code**
This mod contains some precompiled acs objects in brutaloblige/acs. The sourcecode for these is inlcuded in the same folder with the .acs extension. If you prefer to compile this code yourself you will need acc (I compiled with version 1.56) which is available in source and binary forms on the zdoom [download page](https://zdoom.org/downloads). The compiled object should have the same name as the source file but with .acs replaced with .o and be placed in the acs folder.

[Oblige Download](http://oblige.sourceforge.net/i_download.html)