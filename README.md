**The currently supported version of Brutal Doom is bd21testaug09.pk3**

# BrutalOblige

For those of you who don't know [Oblige](http://oblige.sourceforge.net/) is a random map generator for Doom. It's really good and you should check it out.
Something you also might not know is that brutaldoomv20b.pk3 contains a lot of stuff that you don't always get to play with, including monsters and weapons. With this in mind I made an addon to tell Oblige all about Brutal Doom's extra goodies and how to use them in maps.

**Features**

* New monsters: Belphegor, Dark Imp, Epic 2 Alien, Evil Grunt, Evil Marine and Juggernaut
* New weapons: BFG 10k, Grenade Launcher and Railgun
* Probability of each of the new monsters/weapons appearing can be tweaked or switched off completely
* Grenades appear alongside other ammo pickups 
* Wolfenstein theme fixed so that it is populated by SS guards (if you run a Wolf themed map made without this addon it is filled with evil marines)
* Satan's Hankerchief theme; did someone order Brutal Chex Quest? Features textures from everyone's favourite cereal based fps and 4 different types of flemoids to zorch your way through.
* Nightmare Monsters; a separate module I've made which adds the Nightmare Demon from PSX Doom and the Nightmare Imp from Doom64. This can be used without Brutal Doom but if used with the monsters have more and gorier death states.
* Doom 4 style cacodemons can appear. This is an additional monster, classic cacos remain intact. Credit to [Merser](http://www.moddb.com/mods/brutal-doom/addons/mersers-sprites-enhancements) for the sprites and code for this one.
* Kicking with the new weapons is no longer invisible.
* Support for SGtMarkIV's Brutal Friends addon, this has it's own section for full details.


**How to use - Latest development version**

1) Download Oblige if you haven't already and make sure you have the latest supported Brutal Doom. See below for current supported versions.

2) Download or clone this repository.

3) Add all the folders to a zip folder called BrutalOblige.zip

Rename it to change the extension from .zip to .pk3, if on Windows you can use the included zip2pk3.bat to do this for you.

Note that if you downloaded this from gitlab rather than cloning the repo you can't just rename that .zip, first you must unzip it, then put the folders that are *inside* the BrutalOblige-whatever folder that comes out into a zip. This is the way Gitlab works, there's nothing I can do about it.

4) Copy or move the pk3 to Oblige's addon directory. This will be in the same place as Oblige.exe on Windows or /usr/share/oblige/addons on Linux.

5) Run Oblige, select Menu, Addon List and check the box for BrutalOblige. Restart Oblige, Brutal Doom should now appear as an option in the game menu.

6) Click build to generate a wad with the new maps.

7) Load this wad. If you have the .pk3 somewhere gzdoom knows where to look it should be loaded automatically. If you have renamed the pk3 something else then you will need to load it manually (before the generated wad).

8) Happy bug hunting.

# Current supported versions

  | Version | Expected filename
-- | -- | --
Oblige | 7.70 |  
Brutal Doom | 21 public beta | bd21testaug09.pk3
Project Brutality | 2.03 | Project Brutality 2.03.pk3
Brutal Doom 64 | 2 | bd64gamev2.pk3


**Now with Project Brutality Support!**

* Keeps the Epic 2 Alien, Evil Grunt and Evil Marine without conflicting with PB's built in Belphegor, Dark Imps or Juggernaut.
* Wolfenstein fix still applies.
* Satan's Hankerchief still available.
* Nightmare Imps behave like the Brutality Imps including the ability to crawl on the ceiling.

Use the same way as for Brutal Doom but with the latest Project Brutality (v2.03) and select Project Brutality from the game menu. Wads made for PB wont work with Brutal and vice-versa because each has some stuff the other doesn't.

If you downloaded before the Brutality support was added then Satan's Hankercheif maps may sometimes have a missing floor texture, that's my bad and I've fixed it in the latest download. The changed files are brutaldoom.lua, nightmare_monsters.lua and flem.wad

**Now with additional content from hellonearthstarterpack.wad**

* Works with brutal or brutality
* New interpics for each theme
* Theme specific skys
* Wolfenstein theme now snowy (as in the starter pack) and features classic SS, Brutal SS and dogs (all toggleable)
* Heavy Machinegun emplacements (warning: not at all balanced!), toggleable
* Secret levels: If you make a full 32 map wad there will be 3 secret exits on random levels. The first on levels 1-9, the second on levels 11-19 and the third on levels 21-29. The second goes to map 31 (which itself has a secret exit to 32), where the others go I will leave as a surprise.
* A proper ending after the last Oblige level, no matter how many there are.
* A few new textures
* Duke Nukem theme

Just check the box for Brutal Doom Starter Pack and as long as you have hellonearthstarterpack.wad it should load automatically. Load it manually if you've renamed it.

**How with support for Brutal Friends**

* Both the teleport device and blur spheres can appear in maps (in vanilla maps the teleport device replaces the blursphere)
* Blur sphere spawn probabilities are as for vanilla Oblige, teleport device has a very low chance of appearing normally, but a high chance of appearing in secret areas.
* Watch this space, I have further plans...

As for the starter pack check the box and bfriend1.pk3 should load automatically unless you've renamed it.

**Known issues**

* Somewhere along the line it stopped working with Zandronum. I'm willing to attempt to fix this is anyone asks but if not, screw Zandronum.
* This is just an addon so any known issues with Oblige or Brutal Doom will still be present.
* Doom 4 Cacos might be missing a few death states. If you see one disappear when you kill it please let me know, ideally with as much detail about how you killed it as possible.
* If you use the starter pack the music will always be randomised regardless of your settings.
* If you get "Script error, "brutalv20b.pk3:cvarinfo" line 1: cvar 'bd_bloodamount' already exists" then you are loading brutal doom twice. Try loading *just* the generated wad, it should pull in brutal automatically.
* Currently any vanilla Doom/Doom2 maps generated while this mod is active can have missing textures or objects. This will be fixed before the next release.
* double check that the pk3 is BrutalOblige.pk3 not BrutalOblige.pk3.zip

[Screenshots](http://imgur.com/a/SRr9f)

[More screenshots](http://imgur.com/a/TNK8k)

[Oblige Download](http://oblige.sourceforge.net/i_download.html)
