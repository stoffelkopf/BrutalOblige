# Project Goals

As feature creep is tending to eat up this project to the point that it actually working frequently goes out the window I've decided to set out the project goals here to keep myself vaguely on track. I'm including what I have already completed so this can also be seen as a sort of feature list.

The intial purpose of the addon was to make Oblige use all the extra content in the Brutal Doom pk3 which never got used. To be more specific:

* Belphegor - Skulltag monster
* Juggernaut - Skulltag monster
* Epic 2 Alien - defined in the pk3 for compatibility with the wad epic2, where it replaces the WolfensteinSS
* Evil Marine - replaces the WolfensteinSS in pretty much all levels which aren't Doom II map31
* Evil grunt - actually called easy marine, replaces the Evil Marine on lower difficulty settings
* Dark Imp - sprites only
* BFG10k - Skulltag weapon (broken kick state)
* Grenade Launcher - Skulltag weapon (broken kick state)
* Railgun - Skulltag weapon (broken kick state)
* Pistol - exactly what it sounds like, has multiple issues
* Flemoids 1, 2 and 3 - Chex Quest monsters
* Quadrumpus - Chex Quest monster, no sprites

Which also got expanded to include fixing the Wolfenstein theme to use the Brutal SS and adding a Chex theme to put the Chex monsters in.

Everything that follows I want to be at least sort of an expansion of this idea.

## Core Brutal Doom stuff

### Monsters

**Done:** Belphegor, Juggernaut, Evil Marine, Evil Grunt, Flemoids 1-3 and Quadrumpus

**Partially done:**

* Dark Imp; needs more and better death states.

**Future:**

* If there are more unused monsters in Brutal Doom V21, and it looks like there will be, I'll be all over them!

### Weapons

**Done:** BFG10k, Grenade Launcher, Railgun and Pistol. These all work as per Skulltag in purist mode (with the exception of the pistol which already had a purist version).

**Future:** wait for V21!

### Themes

**Done:** Wolfenstein and Satan's Hankercheif.

**Future:** Add extra Wolfenstein monsters to fill the roles of Doom monsters.

### Other

**Partially done:** New monsters added to final cast call but a bit glitchy.

## Project Brutality

### Monsters

**Done:** Everything from core Brutal that isn't already in PB, Trites, Shadows. Some new monsters now included in the dynamic spawners.

**Future:** Work out which dynamic spawners to put the evil marines and epic2alien in.

### Themes

**Done:** as for core Brutal.

**Future:** Try and keep in sync with core Brutal.

## Hell on Earth Starterpack

### Monsters

**Done:** Heavy Machine Gun, Dogs.

**Future:** If I can figure out the prefab system then possibly tanks.

### Themes

**Done:** Snowy Wolfenstein

**Partially done:**

* Duke Nukem Theme.
* Using the extra textures in existing themes.

## Brutal Friends

### Items

**Done:**

* Blur sphere returns with original probabilities.
* Teleport Beacon has it's own probabilities.

### Monsters

**Partially done:** Evil Marine variants based on the friendly marines.

## BrutalDoom64

### Monsters

**Done:**

* Nightmare Imps, Spectres and Cacodemons
* HellHound gets it's own probabilities distinct from those of the Archvile
* Archvile returns with original probabilities.
* Chaingunner and Zombie Marine are considered two distinct monsters and their probabilities are controlled seperately. They are also properly related with their specific weapon drops (Chaingun and Assault Rifle).
* Original monsters updated where height, radius, etc has changed.

**Future:** Brutal64 has decorate code for several Wolfenstein style enemies but they all have non-existent sprites. If this is fixed in a future version or I find these sprites then I'll teach Oblige to use them in Wolfenstein maps.

### Weapons

**Done:**

* Assault Rifle, Unmaker plus ammo, Alpha Unmaker.
* Unmaker keys added in 3 secret levels.

### Other

**Done:** 64 monsters in final cast call.

## BrutalDoom64 Maps

**Done:** Option to add the deathmatch music tracks to the list of potential bgm for each map.

**Future:** Doom 64 themes; tech and hell, using the appropriate textures.

### Extra

## Mapinfo related

**Done:**

* Generated maps named to BOMxy (as opposed to MAPxy) so they can potentially exit to existing maps.
* Support for an arbitrary number of music tracks in the random selection. Presets for some commonly available music configurations.
* Secret exits to brutal's included boss levels. Sometimes puts the hellonearthstarterpack bosses in these levels if Starterpack is being used.

## Other

**Done:**

* An implementation of the Mini Mastermind option that works for brutal.
* Doom 4 style Cacodemons.
* Support loading with Final Doom iwads or Doom_Complete and can use the extra textures.

**Partially done:**

* Chaingun Cyberdemon (Zyberdemon). The monster works but is never actually put in any maps.
* Eygpt theme which can work with or without final doom patches.

**Future:**

* More monsters from Chex/Chex 3. In brutal style of course.

## Pipe dreams, stuff that will probably never work but I'll give it a go anyway

* Support for using Heretic iwad
