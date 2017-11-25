gui.import("brutaldoom")
--gui.import("brutalthemes")
gui.import("hereticbrutal")

puristrailgunreload={}

BRUTAL64 = { }

BRUTAL64.MATERIALS = BRUTALDOOM.MATERIALS
BRUTAL64.LIQUIDS = BRUTALDOOM.LIQUIDS
BRUTAL64.ENTITIES = BRUTALDOOM.ENTITIES
BRUTAL64.THEMES = DOOM.THEMES
BRUTAL64.ROOM_THEMES = DOOM.ROOM_THEMES

local modversion = "bd64gamev2.pk3"

BRUTAL64.music = 
{
	songs = { }
}
BRUTAL64.music.songs = BRUTALDOOM.music.songs

gui.import("brutal64maps")
gui.import("brutal64/brutal64mapinfo")
gui.import("brutal64/brutal64getlevels")

function BRUTAL64.gameinfo()

  local data =
  {
      '//ZDoom GAMEINFO lump for Brutal Oblige\n'
  }
        
  table.insert(data,'IWAD="' .. BRUTALDOOM.PARAMETERS.iwad .. '"\n')

  table.insert(data,'LOAD="' .. modversion .. '","bfriend1.pk3"')
--throws no error if not found so load it regardless of if that module's actually being used
  if BRUTALDOOM.PARAMETERS.starterpack == true then
      table.insert(data,',"hellonearthstarterpack.wad"')
  end
  if BRUTALDOOM.PARAMETERS.musicpreset == "doommetal" then
      table.insert(data,',"DoomMetalVol4.wad"')
  end
  if BRUTALDOOM.PARAMETERS.musicpreset == "idkfa" then
      table.insert(data,',"IDKFAv2.wad"')
  end
  
  table.insert(data,'\n')

  gui.wad_add_text_lump("GAMEINFO", data);
end

function BRUTAL64.monstersdecorate()

  local data =
	{
        'actor Oblige64NightmareImp : NightmareImp 325\n'
		'{\n'
                '//$Category "Monsters"\n'
                '//$EditorSprite "TRO2A1"\n'
                'Tag "Nightmare Imp"\n'
		'}\n'
		'actor Oblige64NightmareCaco : NightmareCacodemon 326\n'
		'{\n'
                '//$Category "Monsters"\n'
                '//$EditorSprite "HEA2A1"\n'
                'Tag "Nightmare Cacodemon"\n'
		'}\n'
		'actor NCacoBall : 64CacodemonBall {}\n' --not present in brutal64 V2
		'actor Oblige64Archvile : Archvile 327\n'
		'{\n'
                '//$Category "Monsters"\n'
                '//$EditorSprite "VILEA1"\n'
                'Tag "Archvile"\n'
		'}\n'
		'actor Oblige64ChaingunGuy : 64ChaingunGuy 328\n'
		'{\n'
                '//$Category "Monsters"\n'
                '//$EditorSprite "MPOSA1"\n'
                'Tag "Zombie Chaingunner"\n'
		'}\n'
		'actor Oblige64Zombiemarine : 64ZombieMarine 329\n'
		'{\n'
                '//$Category "Monsters"\n'
                '//$EditorSprite "CPOSA1"\n'
                'Tag "Zombie Marine"\n'
		'}\n'
	}
    gui.wad_add_text_lump("DECORATE", data);
end

function BRUTAL64.weaponsdecorate()

  local data =
	{
		'actor ObligeRifleSpawner : RifleSpawner 330 {}\n'
		'actor ObligeSoulAmmo : SoulAmmo 331 {}\n'
	}
    gui.wad_add_text_lump("DECORATE", data);
end

BRUTAL64.MONSTERS =
{
 NightmareCaco =
  {
    id = 326
    r = 31
    h = 56 
    level = 5
    prob = 35
    health = 700
    damage = 5
    attack = "missile"
    density = 0.5
    min_weapon = 1
    float = true
    room_size = "large"
  }
  NightmareImp =
  {
    id = 325
    r = 20
    h = 56 
    level = 2
    prob = 130
    health = 60
    damage = 1.5
    attack = "missile"
    density = 1.0
    room_size = "small"
    trap_factor = 0.3
    infight_damage = 4.0
  }
  --BD64 replaces the archvile with the HellHound. The next 3 entries correct oblige for this
  vile = REMOVE_ME --clear and use a seperate hellhound definition so probability can be controlled seperately
  HellHound =
  {
    id = 64
    r = 20
    h = 56 
    level = 6
    prob = 30
    crazy_prob = 20
    health = 800
    damage = 20
    attack = "Missile"
    density = 0.15
    room_size = "medium"
    min_weapon = 4
    infight_damage = 18
  }
  ReplacementVile = --same as Archvile in regular Oblige
  {
    id = 327
    r = 20
    h = 56 
    level = 6.5
    boss_type = "nasty"
    boss_prob = 50
    prob = 5
    crazy_prob = 15
    health = 700
    damage = 25
    attack = "hitscan"
    density = 0.15
    room_size = "medium"
    min_weapon = 4
    nasty = true
    infight_damage = 18
  }
  --Seperate the zombie chaingunner and zombie marine
  gunner = REMOVE_ME
  Chaingunner64 =
  {
    id = 328
    r = 20
    h = 56 
    level = 3
    prob = 60
    health = 70
    damage = 5.5
    attack = "hitscan"
    give = { {weapon="chain"}, {ammo="bullet",count=10} }
    min_weapon = 1
    density = 0.75
    species = "zombie"
    room_size = "large"
    disloyal = true
    trap_factor = 2.4
    infight_damage = 25
  }
  ZombieMarine =
  {
    id = 329
    r = 20
    h = 56 
    level = 3
    prob = 60
    health = 70
    damage = 5.0
    attack = "hitscan"
    give = { {weapon="AssaultRifle"}, {ammo="bullet",count=10} }
    min_weapon = 1
    density = 0.75
    species = "zombie"
    room_size = "large"
    disloyal = true
    trap_factor = 2.4
    infight_damage = 25
  }
  --Give Oblige the correct proportions for the 64 spiderdemon
  Spiderdemon = REMOVE_ME
  Spiderdemon64 = 
  {
    id = 7
    r = 62
    h = 100
    level = 9
    boss_type = "tough"
    boss_prob = 15
    boss_limit = 1 -- because they infight
    prob = 1.0
    crazy_prob = 10
    health = 3000
    damage = 100
    attack = "hitscan"
    density = 0.1
    min_weapon = 5
    weap_prefs = { bfg=10.0 }
    room_size = "large"
    infight_damage = 700
    boss_replacement = "Cyberdemon"
  }
}

BRUTAL64.WEAPONS =
{
	AssaultRifle = --roughly the same as the chaingun
	{
	    id=330
	    level = 2
		pref = 70
		upgrades = "pistol"
		add_prob = 40
		attack = "hitscan"
		rate = 8.5
		accuracy = 85
		damage = 10
		ammo = "bullet"
		per = 1
		give = { {ammo="bullet",count=0} } --yes really
		bonus_ammo = 50
	}
	Unmaker = --roughly the same as the rocket launcher
    {
		id = 9901
		level = 5
		pref = 30
		add_prob = 45
		hide_prob = 30
		attack = "missile"
		rate = 1.7
		accuracy = 80
		damage = 170
		splash = { 65,20,5 }
		ammo = "SoulAmmo"
		per = 1
		give = { {ammo="SoulAmmo",count=40} }
		bonus_ammo = 5
    }
	AlphaUnmaker =
    {
		id = 9351
		level = 5
		pref = 30
		add_prob = 55
		hide_prob = 20
		attack = "missile"
		rate = 1.7
		accuracy = 80
		damage = 170
		splash = { 65,20,5 }
		ammo = "cell"
		per = 1
		give = { {ammo="cell",count=40} }
		bonus_ammo = 5
    }
}

BRUTAL64.PICKUPS =
{
  -- AMMO --
  SoulAmmo =
  {
    id = 331
    kind = "ammo"
    add_prob = 10
    give = { {ammo="SoulAmmo",count=3} }
  }
}

function BRUTAL64.ukeymaps()
    
    --UKEY01--
    gui.wad_insert_file("brutaloblige/maps/UnmakerKeys/1/UKEY01.dat","UKEY01");
    gui.wad_insert_file("brutaloblige/maps/UnmakerKeys/1/TEXTMAP.txt","TEXTMAP");
    gui.wad_insert_file("brutaloblige/maps/UnmakerKeys/1/BEHAVIOR.lmp","BEHAVIOR"); -- yes without a u
    gui.wad_insert_file("brutaloblige/maps/UnmakerKeys/1/ENDMAP.dat","ENDMAP");
    
    --UKEY02--
    gui.wad_insert_file("brutaloblige/maps/UnmakerKeys/2/UKEY02.dat","UKEY02");
    gui.wad_insert_file("brutaloblige/maps/UnmakerKeys/2/TEXTMAP.txt","TEXTMAP");
    gui.wad_insert_file("brutaloblige/maps/UnmakerKeys/2/BEHAVIOR.lmp","BEHAVIOR");
    gui.wad_insert_file("brutaloblige/maps/UnmakerKeys/2/ENDMAP.dat","ENDMAP");
    
    --UKEY03--
    gui.wad_insert_file("brutaloblige/maps/UnmakerKeys/3/UKEY03.dat","UKEY03");
    gui.wad_insert_file("brutaloblige/maps/UnmakerKeys/3/TEXTMAP.txt","TEXTMAP");
    gui.wad_insert_file("brutaloblige/maps/UnmakerKeys/3/BEHAVIOR.lmp","BEHAVIOR");
    gui.wad_insert_file("brutaloblige/maps/UnmakerKeys/3/ENDMAP.dat","ENDMAP");
end

function BRUTAL64.setup()
	gui.printf("running brutal64 setup\n");
    BRUTAL64.setukeyexits();
end

function BRUTAL64.all_done()
	DOOM.all_done();
	BRUTALDOOM.texturesetup();
	BRUTAL64.gameinfo();
	BRUTAL64.monstersdecorate();
	BRUTAL64.weaponsdecorate();
    BRUTAL64.ukeymaps();
	BRUTAL64.create_mapinfo();
	gui.printf("OB_THEMES:\n" .. table.tostring(OB_THEMES) ..'\n')
	if BRUTALDOOM.PARAMETERS.iwad == "heretic.wad" then
		heretic64_monstersetup();
		heretic_soundsetup();
	end
end

OB_GAMES["brutal64"] =
{
  label = "Brutal Doom 64"

  extends = "doom2"

  format = "doom"

  engine = { boom=0, gzdoom=1, zandronum=0 }

  tables =
  {
	BRUTAL64
	BRUTALDOOM.PARAMETERS
  }

  hooks =
  {
    setup = BRUTAL64.setup
    get_levels = BRUTAL64.get_levels
    end_level  = DOOM.end_level
    all_done   = BRUTAL64.all_done
  }
}
