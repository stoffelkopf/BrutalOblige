BRUTALDOOM.MONSTERS =
{
	--------------
	--Tough Bosses
	--------------
	Juggernaut =
    {
		id = 303
		r = 48
		h = 88
		level = 9
		boss_type = "tough"
		boss_prob = 15
		boss_limit = 1
	    prob = 10
	    crazy_prob = 10
	    health = 8000
	    damage = 200
	    attack = "hitscan"
	    outdoor_factor = 3.0
	    density = 0.1
	    weap_prefs = { bfg=5.0 }
	    room_size = "large"
		nasty = true
		boss_replacement = "Spiderdemon"
	}
	-- found it in BD21.pk3 - needs testing
	-- is working but more tests required -> make a prebuilt map with this boss
	Motherdemon =  
	{
		id = 348
		r = 60
		h = 110
		level = 9
		health = 6000
		boss_type = "tough"
		boss_prob = 15
		boss_limit = 1
		prob = 10 --10
		crazy_prob = 0 --10
		damage = 200
		attack = "hitscan"
		outdoor_factor = 3.0
		density = 0.1
		weap_prefs = { bfg=5.0 }
		room_size = "large"
		nasty = true
		boss_replacement = "Spiderdemon"		
	}
	Zyberdemon =
	{
		id = 324
		r = 40
		h = 110
		level = DOOM.MONSTERS.Cyberdemon.level
		boss_type = DOOM.MONSTERS.Cyberdemon.boss_type
		boss_prob = DOOM.MONSTERS.Cyberdemon.boss_prob
		boss_limit = 1
		prob = DOOM.MONSTERS.Cyberdemon.prob
		crazy_prob = DOOM.MONSTERS.Cyberdemon.crazy_prob
		health = DOOM.MONSTERS.Cyberdemon.health
		damage = DOOM.MONSTERS.Cyberdemon.damage
		attack = "hitscan"
		density = DOOM.MONSTERS.Cyberdemon.density
		weap_min_damage = DOOM.MONSTERS.Cyberdemon.weap_min_damage
		weap_prefs = DOOM.MONSTERS.Cyberdemon.weap_prefs
		room_size = DOOM.MONSTERS.Cyberdemon.room_size
		infight_damage = DOOM.MONSTERS.Cyberdemon.infight_damage
	}
	
	--------------
	--Mini Bosses
	--------------	
	Belphegor =
	{
	    id = 302
	    r = 32
	    h = 88
	    level = 7
        boss_type = "minor"
        boss_prob = 50
	    prob = 6.4
	    crazy_prob = 12
	    health = 2000
	    damage = 150
	    attack = "missile"
	    outdoor_factor = 3.0
	    density = 0.1
	    weap_prefs = { bfg=5.0 }
	    room_size = "medium"
	}	
    Volcabus =
    {
        id = 337
        r = DOOM.MONSTERS.mancubus.r
        h = DOOM.MONSTERS.mancubus.h
        level = DOOM.MONSTERS.mancubus.level+1
        prob = 7
   	    boss_type = "nasty"
        boss_prob = 50
        health = 1050
        damage = DOOM.MONSTERS.mancubus.damage*1.2
        attack = DOOM.MONSTERS.mancubus.attack
        give = DOOM.MONSTERS.mancubus.give
        density = DOOM.MONSTERS.mancubus.density
        room_size = DOOM.MONSTERS.mancubus.room_size
        disloyal = DOOM.MONSTERS.mancubus.disloyal
        trap_factor = DOOM.MONSTERS.mancubus.trap_factor
        infight_damage = DOOM.MONSTERS.mancubus.infight_damage
        weap_min_damage = 110
    }
	
	---------------
	--Infantry--
	---------------	

	-- its in the pk3 but the aracnorb.txt is not included 
	-- Aracnorb =  
	-- {
		-- id = 349
		-- r = 24
		-- h = 56
        -- level = 4
		-- health = 200
		-- damage = 25
		-- attack = "hitscan"
	    -- prob =  30
		-- density = 1.0
	    -- cage_factor = 0  -- never put in cages
	-- }	
    -- found it in BD21.pk3 - needs testing	  
	
	--As of v20b the evil marine replaces the ss. A script checks if it is in a wolfenstein themed level and changes it back if so.
	ss_nazi = REMOVE_ME
	
	EvilMarine =
	{
	    id = 84
	    r = 20 --the evil marine is actually 14 but I've left it as 20 incase it does somehow end up as an ss guard.
	    h = 56 
	    level = 8
	    prob = 0
	    crazy_prob = 7
	    health = 200
	    damage = 75
	    attack = "hitscan"
	    cage_factor = 0  -- never put in cages
	    density = 0.5
        infight_damage = 8.0
	}
	BrutalSS = --the script often fails in Oblige levels hence this as well
	{
	    id = 311
	    r = 20
	    h = 56 
	    level = 1
	    theme_prob = 35
        prob=0
	    health = 90
	    damage = 20
	    attack = "hitscan"
	    cage_factor = 0  -- never put in cages
	    density = 1.0
	    allow_in_theme = "wolf"
        give = { {weapon="Mp40"}, {ammo="bullet",count=20} }
	}
	EasyMarine =
	{
	    id = 307
	    r = 14
	    h = 56 
	    level = 5
	    prob = 0 --9
	    crazy_prob = 7
	    health = 80
	    damage = 5
	    attack = "hitscan"
	    cage_factor = 0  -- never put in cages
	    density = 0.5
        infight_damage = 8.0
	}
    ClassicSS =
    {
        id = 313
        r = DOOM.MONSTERS.ss_nazi.r
        h = DOOM.MONSTERS.ss_nazi.h
        level = DOOM.MONSTERS.ss_nazi.level
        theme_prob  = 140
        prob=0
        health = DOOM.MONSTERS.ss_nazi.health
        damage = DOOM.MONSTERS.ss_nazi.damage
        attack = DOOM.MONSTERS.ss_nazi.attack
        give = DOOM.MONSTERS.ss_nazi.give
        density = DOOM.MONSTERS.ss_nazi.density
        infight_damage = DOOM.MONSTERS.ss_nazi.infight_damage
        allow_in_theme = "wolf"
        give = {ammo="bullet",count=10}
    }  
    Labguy =
    {
        id = 335
        r = DOOM.MONSTERS.zombie.r
        h = DOOM.MONSTERS.zombie.h
        level = DOOM.MONSTERS.zombie.level
        theme_prob = 0
        prob=0
        health = 100
        damage = DOOM.MONSTERS.zombie.damage
        attack = "melee"
        density = DOOM.MONSTERS.zombie.density
        room_size = DOOM.MONSTERS.zombie.room_size
        disloyal = DOOM.MONSTERS.zombie.disloyal
        trap_factor = DOOM.MONSTERS.zombie.trap_factor
        infight_damage = DOOM.MONSTERS.zombie.infight_damage
        give = { {weapon="Axe"} }
        species = "zombie"
        allow_in_theme = "tech"
    }
    AncientArachnotron =
    {
        id = 336
        r = DOOM.MONSTERS.arach.r
        h = DOOM.MONSTERS.arach.h
        level = DOOM.MONSTERS.arach.level+1
        prob = 10
        health = 800
        damage = DOOM.MONSTERS.arach.damage
        attack = DOOM.MONSTERS.arach.attack
        give = DOOM.MONSTERS.arach.give
        density = DOOM.MONSTERS.arach.density
        room_size = DOOM.MONSTERS.arach.room_size
        disloyal = DOOM.MONSTERS.arach.disloyal
        trap_factor = DOOM.MONSTERS.arach.trap_factor
        infight_damage = DOOM.MONSTERS.arach.infight_damage
		weap_min_damage = 90
    }
    Experiment =
    {
       id = 369
       r = DOOM.MONSTERS.revenant.r
       h = 48
       level = 2
       prob=0 --40
       health = 100
       damage = 0.2
       attack = "melee"
       density = 0.85
       room_size = "any"
       infight_damage = 3.5
    }
    Mummy =
    {
       id = 338
       r = DOOM.MONSTERS.revenant.r
       h = 48
       level = 1
       theme_prob = 60 
       prob = 0
       health = 200
       damage = 0.4
       attack = "melee"
       density = 0.85
       weap_min_damage = 40
       room_size = "any"
       infight_damage = 3.5
       allow_in_theme = "egypt2"
    }
 	
    --Seperate Rifle and Pistol Zombie so Oblige can model them more accurately
    zombie = REMOVE_ME
	
    PistolZombie = 
    {
        id = 344
        r = 20
        h = 56 
        level = 1
        prob = 60
        health = 50
        damage = 1.2
        attack = "hitscan"
        give = { {weapon="bdpistol"}, {ammo="clip1",count=10} }
        density = 1.7
        room_size = "small"
        disloyal = true
        trap_factor = 0.01
        infight_damage = 1.9
    }
    RifleZombie = 
    {
        id = 343
        r = 20
        h = 56 
        level = 1
        prob = 60
        health = 50
        damage = 1.8
        attack = "hitscan"
        give = { {weapon="AssaultRifle"}, {ammo="bullet",count=10} }
        density = 1.7
        room_size = "small"
        disloyal = true
        trap_factor = 0.01
        infight_damage = 2.2
    }
    --SMG Zombie supposedly has the exact same DPS etc as shotgun zombie
    SMGZombie =
    {
        id = 363
        r = DOOM.MONSTERS.shooter.r
        h = DOOM.MONSTERS.shooter.h
        level = DOOM.MONSTERS.shooter.level
        prob = DOOM.MONSTERS.shooter.prob
        health = DOOM.MONSTERS.shooter.health
        damage = DOOM.MONSTERS.shooter.damage
        attack = DOOM.MONSTERS.shooter.attack
        give = { {weapon="Smg"}, {ammo="clip1",count=10} }
        weap_needed = { Smg=true }
        weap_min_damage = DOOM.MONSTERS.shooter.weap_min_damage
        density = DOOM.MONSTERS.shooter.density
        species = DOOM.MONSTERS.shooter.species
        room_size = DOOM.MONSTERS.shooter.room_size
        disloyal = DOOM.MONSTERS.shooter.disloyal
        trap_factor = DOOM.MONSTERS.shooter.trap_factor
        infight_damage = DOOM.MONSTERS.shooter.infight_damage
    }
    --ubersoldat is a Wolfenstein themed version of the Chaingunner with less health
    Ubersoldat =
    { 
        id = 366
        r = 16
        h = 52
        level = 2
        theme_prob = 50
        prob=0
        health = 100
        damage = DOOM.MONSTERS.gunner.damage
        attack = DOOM.MONSTERS.gunner.attack
        give = { {weapon="Minigun"}, {ammo="bullet",count=10} }
        weap_min_damage = DOOM.MONSTERS.gunner.weap_min_damage
        density = DOOM.MONSTERS.gunner.density
        species = DOOM.MONSTERS.gunner.species
        room_size = DOOM.MONSTERS.gunner.room_size
        disloyal = DOOM.MONSTERS.gunner.disloyal
        trap_factor = DOOM.MONSTERS.gunner.trap_factor
        infight_damage = DOOM.MONSTERS.gunner.infight_damage
        allow_in_theme = "wolf"
    }
    ADog =
    {
        id = 370
        r = 12
        h = 28 
        level = 1
        theme_prob = 120
        prob=0
        health = 80
        damage = 3
        attack = "melee"
        min_weapon = 1
        room_size = "any"
        allow_in_theme = "wolf"
    }
    DemonDog =
    {
        id = 10307
        r = 20
        h = 32 
        level = 1
        theme_prob = 120
        prob=0
        health = 50
        damage = 3
        attack = "melee"
        min_weapon = 1
        room_size = "any"
        allow_in_theme = "wolf"
    }

   --Vehicles not used atm
    ZombieMainBattleTank =
    {
        id = 9951
        r = 64
        h = 100
        level = 6
        prob = 0 -- 0.01
        boss_type = "tough"
        boss_prob = 0 --1
        crazy_prob = 0 -- 5
        health = 4000
        damage = 200
        attack = "missile"
        density = 0.1
        weap_needed = { railgun=true }
        weap_min_damage = 150
        room_size = "large"
        cage_factor = 0
        nasty = true
    }
    ZombieLightTank =
    {
        id = 9950
        r = 64
        h = 100
        level = 5
        boss_type = "minor"
        boss_prob = 0 --5
        prob = 0 -- 1
        crazy_prob = 0 -- 6
        health = 2000
        damage = 175
        attack = "missile"
        density = 0.1
        weap_needed = { railgun=true }
        weap_min_damage = 150
        room_size = "large"
        cage_factor = 0
        nasty = true
    }
    ZombieHelicopter =
    {
        id = 9953
        r = 56
        h = 140 --actually 96 but made higher so it doesn't put it in rooms where it has no room to fly
        level = 5
        prob = 0 --0.01
        crazy_prob = 0 --15
        health = 1000
        damage = 120
        attack = "missile"
        weap_needed = { launch=true }
        room_size = "large"
        cage_factor = 0
        float = true
        nasty = true
    }
    ZombieMech = --basically copied from the default Cyberdemon, to which it is very similar
    {
        id = 9954
        r = 48
        h = 160
        level = 7
        boss_type = "tough"
        boss_replacement = "Cyberdemon"
        boss_prob = 0 --50
        prob = 0 --1
        crazy_prob = 0 -- 10
        health = 3000
        damage = 125
        attack = "missile"
        density = 0.1
        weap_min_damage = 150
        weap_prefs = { bfg=10.0 }
        room_size = "large"
    }	
}

BRUTALDOOM.MON_CHOICES =
{
	"default", _("DEFAULT"),
	"none",    _("None at all"),
	"scarce",  _("Scarce"),
	"less",    _("Less"),
	"plenty",  _("Plenty"),
	"more",    _("More"),
	"heaps",   _("Heaps"),
	"insane",  _("INSANE"),
}

BRUTALDOOM.MON_PROBS =
{
	none   = 0
	scarce = 2
	less   = 15
	plenty = 50
	more   = 120
	heaps  = 300
	insane = 2000
}

BRUTALDOOM.DENSITIES =
{
	none   = 0.1
	scarce = 0.2
	less   = 0.4
	plenty = 0.7
	more   = 1.2
	heaps  = 3.3
	insane = 9.9
}

BRUTALDOOM.MON_LIST_BRUTAL=
{
    --Brutal Monsters Control
	Belphegor =
    {
		label="Belphegor",
        choices=BRUTALDOOM.MON_CHOICES
        tooltip="Imagine fighting a Baron of Hell on steroids. You can use that as your happy place when you have to go up against this guy."
    }
    Juggernaut =
    {
        label="Juggernaut",
        choices=BRUTALDOOM.MON_CHOICES
        tooltip="Do you know how much damage the Juggernaut would take if it just rolled straight over you? I'll give you a clue, it's none at all."
    }
  
    Zyberdemon =
    {
        label="Zyberdemon",
        choices=BRUTALDOOM.MON_CHOICES
        tooltip="A Cyberdemon with the rocket launcher replaced with a chaingun"
    }
 
    AncientArachnotron =
    {
        label="Ancient Arachnotron",
        choices=BRUTALDOOM.MON_CHOICES
        tooltip="An Arachnotron running on ancient demonic tech. Bigger and tougher than their more modernised cousins."
    }
    Volcabus =
    {
        label="Volcabus",
        choices=BRUTALDOOM.MON_CHOICES
        tooltip="An even fatter Mancubus with even more massive cannons."
    }
	Motherdemon =
    {
        label="Mother Demon (Beta)",
        choices=BRUTALDOOM.MON_CHOICES
        tooltip="A large demonic larva with dead black eyes, four arms and a skull-like face. Her mouth is filled with many long, sharp teeth. Good luck :)"
    }
	PistolZombie = { label=_("Pistol Zombie"), choices=BRUTALDOOM.MON_CHOICES }
    RifleZombie =  { label=_("Rifle Zombie"), choices=BRUTALDOOM.MON_CHOICES }
    SMGZombie =    { label=_("SMG Zombie"), choices=BRUTALDOOM.MON_CHOICES }
  
}


function BRUTALDOOM.monster_setup(self)  
	for name,opt in pairs(self.options) do
		M = GAME.MONSTERS[name]
		if M and opt.value != "default" then
		M.prob    = BRUTALDOOM.MON_PROBS[opt.value]
		M.density = BRUTALDOOM.DENSITIES[opt.value]

		-- allow Spectres to be controlled individually
		M.replaces = nil

		-- loosen some of the normal restrictions
		M.skip_prob = nil
		M.crazy_prob = nil

		if M.prob > 40 then
			M.level = 1
			M.weap_min_damage = nil
		end

      if M.prob > 200 then
        M.boss_type = nil
      end
    end
  end -- for opt
end

OB_MODULES["brutal_mon_control"] =
{
	label = _("Brutal Doom Monster Control")
	game = { brutaldoom=1 }
	hooks =
	{
		setup = BRUTALDOOM.monster_setup
	}
	options = BRUTALDOOM.MON_LIST_BRUTAL
}