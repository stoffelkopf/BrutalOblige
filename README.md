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
* Machine Gun and Gauss Canon from Doom 4, upgrade stations appear as well! Credit to Necronixxis for the sprites.
* Doom 4 style cacodemons can appear. This is an additional monster, classic cacos remain intact. Credit to [Merser](http://www.moddb.com/mods/brutal-doom/addons/mersers-sprites-enhancements) for the sprites and code for this one.
* Kicking with the new weapons is no longer invisible.
* Support for SGtMarkIV's Brutal Friends addon, this has it's own section for full details.

**How to use**

1) Download Oblige if you haven't already (at time of writing the most up to date version is 6.20, I imagine this addon should remain compatible with future versions but I can't be sure). Also make sure you have the latest Brutal Doom (v20b).

2) Download or clone this repository.

3) Add all the folders to a zip folder (if you didn't download it as a zip anyway) and rename it to change the extension from .zip to .pk3

4) Copy or move the pk3 to Oblige's addon directory. This will be in the same place as Oblige.exe on Windows or /usr/share/oblige/addons on Linux.

4) Run Oblige. Under the game settings you should be able to set the game to Brutal Doom.

5) On the right, check the box for Nightmare Monsters (or not if you don't want them obviously).

6) Click build to generate a wad with the new maps.

7) Load this wad. If you have brutalv20b.pk3 somewhere gzdoom knows where to look it should be loaded automatically. If you have renamed the pk3 something else then you will need to load it manually (before the generated wad).

8) Rip and tear.

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

* Under certain circumstances Nightmare Imps spawn regular Imp gibs or corpses when killed.
* Somewhere along the line it stopped working with Zandronum. I'm willing to attempt to fix this is anyone asks but if not, screw Zandronum.
* This is just an addon so any known issues with Oblige or Brutal Doom will still be present.
* Duke Nukem theme will never appear in random. This is to do with the awful hack I've used to do the posters so I can't really fix this I'm afraid.
* Doom 4 Cacos might be missing a few death states. If you see one disappear when you kill it please let me know, ideally with as much detail about how you killed it as possible.
* D4 Machine gun can't be dual wielded, this was a deliberate decision, let me know if you disagree with it.
* If you use the starter pack the music will always be randomised regardless of your settings.
* If you get "Script error, "brutalv20b.pk3:cvarinfo" line 1: cvar 'bd_bloodamount' already exists" then you are loading brutal doom twice. Try loading *just* the generated wad, it should pull in brutal automatically.

[Screenshots](http://imgur.com/a/SRr9f)

[More screenshots](http://imgur.com/a/TNK8k)

[Oblige Download](http://oblige.sourceforge.net/i_download.html)
