--curent highest used id number 333 (Chex yellow key)

math.randomseed( os.time() ) --get some randomisation
math.random()
math.random()

secretexit1 = math.random(1,9)
secretexit2 = math.random(11,19)
secretexit3 = math.random(20,29)

local boss1 = "cyberdemon"
local boss2 = "mastermind"

local generickickstate = [[
                DoKick:
                	TNT1 A 0
                	TNT1 A 0 A_Takeinventory("Zoomed",1)
                        TNT1 A 0 A_ZoomFactor(1.0)
                        TNT1 A 0 A_Takeinventory("ADSmode",1)
                	NULL A 0 A_JumpIf (momZ > 0, "AirKick")
                	NULL A 0 A_JumpIf (momZ < 0, "AirKick")
                	RIFF A 0 A_FireCustomMissile("KickAttackDetectDowned", 0, 0, 0, 0)
                        TNT1 A 0 A_jumpifinventory("PowerStrength",1,"BerserkerKick")
                	TNT1 A 0 A_PlaySound("KICK")
                	TNT1 A 0 SetPlayerProperty(0,1,0)
                	KICK BCD 1
                	RIFF A 0 A_FireCustomMissile("KickAttack", 0, 0, 0, -7)
                        KICK H 5
                	KICK A 0 A_Takeinventory("Kicking",1)
                	KICK I 1
                	KICK GFEDCBA 1
                	TNT1 A 0 SetPlayerProperty(0,0,0)
                	TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")
                	Goto Ready
                BerserkerKick:
                	TNT1 A 0 A_PlaySound("KICK")
                	TNT1 A 0 SetPlayerProperty(0,1,0)
                	KICK BCD 1
                        RIFF A 0 A_FireCustomMissile("SuperKickAttack", 0, 0, 0, -7)
                        KICK H 5
                	KICK A 0 A_Takeinventory("Kicking",1)
                	KICK I 1
                	KICK GFEDCBA 1
                	TNT1 A 0 SetPlayerProperty(0,0,0)
                	TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")
                	Goto Ready
                AirKick:
                        TNT1 A 0 A_jumpifinventory("PowerStrength",1,"SuperAirKick")
                	TNT1 A 0 A_PlaySound("KICK")
                	TNT1 A 0 A_Recoil (-6)
                        KICK JKLMN 1
                        RIFF A 0 A_FireCustomMissile("AirKickAttack", 0, 0, 0, -31)
                        KICK O 3
                	KICK A 0 A_Takeinventory("Kicking",1)
                	KICK PQRST 2
                        TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")
                	Goto Ready
                SuperAirKick:
                	TNT1 A 0 A_PlaySound("KICK")
                	TNT1 A 0 A_Recoil (-6)
                	KICK JKLMN 1
                        RIFF A 0 A_FireCustomMissile("SuperAirKickAttack", 0, 0, 0, -31)
                        KICK O 3
                	KICK A 0 A_Takeinventory("Kicking",1)
                	KICK PQRST 2
                	TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")
                	Goto Ready
                ]]
                
local genericgrenadestate = [[
                TossGrenade:
                    TNT1 A 0
                    TNT1 A 0 A_TakeInventory("TossGrenade", 1)
                    TNT1 A 0 A_JumpIfInventory("GrenadeAmmo", 1, 1)
                    Goto NoGrenade
                    GRTH ABCD 1
                    TNT1 A 0 A_GiveInventory("FiredGrenade", 1)
                    TNT1 A 0 A_PLaySound ("GRNPIN")
                    GRTH EEFG 1
                    TNT1 A 0 A_PLaySound ("GRNTOSS")
                    GRTH HI 1
                    TNT1 A 0 A_TakeInventory("GrenadeAmmo", 1)
                    TNT1 A 0 A_FireCustomMissile("HandGrenade", random(-2,2), 0, 0, 0, 0, 0)
                    TNT1 A 0 A_TakeInventory("FiredGrenade", 1)
                    GRTH JKLM 1
                    TNT1 A 1
                    TNT1 A 0 A_TakeInventory("TossGrenade", 1)
                    Goto Ready
                NoGrenade:
                    TNT1 A 0
                    TNT1 A 0 A_Print("No Grenades Left.")
                    Goto Ready
                ]]
				
local chexkeys = [[
		ACTOR ChexBlueCard : CustomInventory 331
		{
		  Inventory.PickupMessage "$GOTBLUECARD"
		  States
		  {
		  Spawn:
		    BCKY A 10
		    BCKY B 10 Bright
		    Loop
		   Pickup:
			 TNT1 A 0 A_GiveInventory("BlueCard", 1)
			 Stop
		  }
		}
		ACTOR ChexRedCard : CustomInventory 332
		{
		  Inventory.PickupMessage "$GOTREDCARD"
		  States
		  {
		  Spawn:
		    RCKY A 10
		    RCKY B 10 Bright
		    Loop
		   Pickup:
			 TNT1 A 0 A_GiveInventory("RedCard", 1)
			 Stop
		  }
		}
		ACTOR ChexYellowCard : CustomInventory 333
		{
		  Inventory.PickupMessage "$GOTYELWCARD"
		  States
		  {
		  Spawn:
		    YCKY A 10
		    YCKY B 10 Bright
		    Loop
		   Pickup:
			 TNT1 A 0 A_GiveInventory("YellowCard", 1)
			 Stop
		  }
		}
		]]

BRUTALDOOM = { }

BRUTALITY = { }

BRUTALDOOM4 = { }

BRUTALFRIENDS = { }

DOOMMETAL = { }

BRUTALDOOM.SECRET_EXITS = { }

STARTERPACK = { }

gui.import("brutalthemes") --this has to come after the tables are declared
gui.import("hereticbrutal")
gui.import("brutality")
gui.import("starterpack")
gui.import("UniversalIntermissionCompat/BrutalINTM")

BRUTALDOOM.YES_NO =
{
    "yes", "Yes"
    "no", "No"
}

BRUTALDOOM.VERSIONS = 
{
	"brutalv20b.pk3",	"V20b"
}

BRUTALDOOM.PARAMETERS =
{
	doom_metal = false
    starterpack = false
    skygenerator = false
	brutalfriends = false
    iwad = 'Doom2.wad'
    musicpreset = 'iwad'
	brutalversion = "brutalv20b.pk3"
	brutalityversion = "Project Brutality 2.03.pk3"
}

BRUTALDOOM.IWADS =
{
    "Doom2.wad",    "Doom 2"
    "Tnt.wad",      "TNT:Eviloution"
    "Plutonia.wad", "Plutonia"
    "doom_complete.pk3",    "Doom Complete"
    "freedoom2.wad",    "Freedoom 2"
	"heretic.wad",	"Heretic" --Nowhere near ready yet!
}

BRUTALDOOM.MONSTERS =
{
	Belphegor =
	  {
	    id = 302
	    r = 32
	    h = 88
	    level = 8
	    prob = 17
	    crazy_prob = 12
	    health = 2000
	    damage = 150
	    attack = "missile"
	    outdoor_factor = 3.0
	    density = 0.1
	    weap_prefs = { bfg=5.0 }
	    room_size = "medium"
	  }
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
	  Flemoid1 =
	  {
	    id = 304
	    r = 20
	    h = 56 
	    level = 1
	    prob = 35
	    crazy_prob = 35
	    health = 70
	    damage = 1
	    attack = "Missile"
	    density = 1.5
	    room_size = "small"
	    infights = true
	    theme = "satanshankerchief"
	  }
	  Flemoid2 =
	  {
	    id = 305
	    r = 20
	    h = 56 
	    level = 2
	    prob = 35
	    crazy_prob = 35
	    health = 90
	    damage = 1
	    attack = "Missile"
	    density = 1.5
	    room_size = "small"
	    infights = true
	    theme = "satanshankerchief"
	  }
	  Flemoid3 =
	  {
	    id = 306
	    r = 20
	    h = 56 
	    level = 3
	    prob = 35
	    crazy_prob = 35
	    health = 200
	    damage = 1
	    attack = "Missile"
	    density = 1.5
	    room_size = "small"
	    infights = true
	    theme = "satanshankerchief"
	  }
	  Quadrumpus =
	  {
	    id = 310
	    r = 20
	    h = 64 
	    level = 7
	    prob = 20
	    crazy_prob = 20
	    health = 400
	    damage = 1
	    attack = "Missile"
	    density = 0.7
	    room_size = "medium"
	    infights = true
	    theme = "satanshankerchief"
	  }
	--As of v20b the evil marine replaces the ss. A script checks if it is in a wolfenstein themed level and changes it back if so.
	ss_dude = REMOVE_ME
	EvilMarine =
	  {
	    id = 84
	    r = 20 --the evil marine is actually 14 but I've left it as 20 incase it does somehow end up as an ss guard.
	    h = 56 
	    level = 8
	    prob = 8
	    crazy_prob = 7
	    health = 200
	    damage = 75
	    attack = "hitscan"
	    cage_factor = 0  -- never put in cages
	    density = 1.0
	  }
	BrutalSS = --the script often fails in Oblige levels hence this as well
	  {
	    id = 311
	    r = 20
	    h = 56 
	    level = 1
	    prob = 35
	    crazy_prob = 20
	    health = 90
	    damage = 20
	    attack = "hitscan"
	    cage_factor = 0  -- never put in cages
	    density = 1.5
	    theme = "wolf"
	  }
	  EasyMarine =
	  {
	    id = 307
	    r = 14
	    h = 56 
	    level = 4
	    prob = 10
	    crazy_prob = 7
	    health = 80
	    damage = 5
	    attack = "hitscan"
	    cage_factor = 0  -- never put in cages
	    density = 1.0
	  }
	  DarkImp =
	  {
	    id = 308
	    r = 25
	    h = 56 
	    level = 1
	    prob = 65
	    health = 120
	    damage = 3
	    attack = "missile"
	    room_size = "small"
	  }
	  Epic2Alien =
	  {
	    id = 309
	    r = 20
	    h = 56 
	    level = 4
	    prob = 15
	    crazy_prob = 7
	    health = 80
	    damage = 20
	    attack = "hitscan"
	    cage_factor = 0  -- never put in cages
	    density = 1.0
	  }
      ClassicSS =
      {
          id = 313
          r = 20
          h = 56 
          level = 1
          theme = "wolf"
          prob = 20
          crazy_prob = 7
          health = 50
          damage = 5
          attack = "hitscan"
          give = { {ammo="bullet",count=5} }
          density = 1.5
      }
      Zyberdemon =
      {
          id = 324
          r = 40
          h = 132
          level = 8
          prob = 17
          crazy_prob = 12
          health = 4000
          damage = 150
          attack = "hitscan"
          density = 0.1
          min_weapon = 4
          --weap_prefs = { bfg=10.0 }
          room_size = "medium"
      }
      --existing monsters height corrected
      Cyberdemon =
      {
          id = 16
          r = 40
          h = 132
          level = 8
          prob = 17
          crazy_prob = 12
          health = 4000
          damage = 150
          attack = "missile"
          density = 0.1
          min_weapon = 4
          weap_prefs = { bfg=10.0 }
          room_size = "medium"
      }
      Spiderdemon =
      {
          id = 7
          r = 128
          h = 100
          level = 9
		  boss_type = "tough"
		  boss_prob = 15
		  boss_limit = 1 -- because they infight
          prob = 20
          crazy_prob = 18
          health = 3000
          damage = 200
          attack = "hitscan"
          density = 0.2
          min_weapon = 5
          weap_prefs = { bfg=10.0 }
          room_size = "large"
		  boss_replacement = "Cyberdemon"
      }
}

BRUTALDOOM4.MONSTERS =
{
 D4caco =
  {
    id = 316
    r = 31
    h = 56 
    level = 3
    prob = 50
    health = 400
    damage = 5
    attack = "missile"
    density = 0.5
    min_weapon = 1
    float = true
    room_size = "large"
  }   
}

BRUTALFRIENDS.MONSTERS =
{
 EnemyMarine3 =
	  {
	    id = 319
	    r = BRUTALDOOM.MONSTERS.EasyMarine.r
	    h = BRUTALDOOM.MONSTERS.EasyMarine.h
	    level = BRUTALDOOM.MONSTERS.EasyMarine.level
	    prob = BRUTALDOOM.MONSTERS.EasyMarine.prob
	    crazy_prob = BRUTALDOOM.MONSTERS.EasyMarine.crazy_prob
	    health = BRUTALDOOM.MONSTERS.EasyMarine.health
	    damage = BRUTALDOOM.MONSTERS.EasyMarine.damage
	    attack = BRUTALDOOM.MONSTERS.EasyMarine.attack
	    cage_factor = BRUTALDOOM.MONSTERS.EasyMarine.cage_factor
	    density = BRUTALDOOM.MONSTERS.EasyMarine.density
	  }
}

--decorate definition
function BRUTALDOOM.decorate()
	gui.wad_insert_file("brutaloblige/decorates/BrutalMonsters.dec","BRUMONS");
	gui.wad_insert_file("brutaloblige/decorates/DarkImp.dec","DARKIMPD");
end

function BRUTALDOOM4.caco()
	gui.wad_insert_file("brutaloblige/decorates/D4Caco.dec","DECORATE");
end

function BRUTALDOOM4.decorateweapons()
	gui.wad_insert_file("brutaloblige/decorates/D4Weapons.dec","DECORATE");
end

function BRUTALDOOM.epic()
  gui.wad_merge_sections("brutaloblige/brutaloblige.wad");
end

BRUTALDOOM.music =
{
  songs =
  {
    "d_runnin", "d_runni2", "d_stalks", "d_stlks2", "d_stlks3", "d_countd", "d_count2", "d_betwee", "d_doom", "d_doom2", "d_the_da", "d_theda2", "d_theda3", "d_shawn", "d_shawn2", "d_shawn3", "d_ddtblu", "d_ddtbl2", "d_ddtbl3", "d_in_cit", "d_dead", "d_dead2", "d_romero", "d_romer2", "d_messag", "d_messg2", "d_ampie", "d_adrian", "d_tense", "d_openin", 
    --wolf
    "d_evil", "d_ultima"
  }
}

BRUTALDOOM.doom1songs = --not in the iwad but might be in doom metal etc
{
    "d_e1m1", "d_e1m2", "d_e1m3", "d_e1m4", "d_e1m5", "d_e1m6", "d_e1m7", "d_e1m8", "d_e1m9",
    "d_e2m1", "d_e2m2", "d_e2m3", "d_e2m4", "d_e2m5", "d_e2m6", "d_e2m7", "d_e2m8", "d_e2m9",
    "d_e3m1", "d_e3m2", "d_e3m3", "d_e3m4", "d_e3m5", "d_e3m6", "d_e3m7", "d_e3m8", "d_e3m9"
}

BRUTALDOOM.doom_completesongs =
{
    --tnt
    "t_runnin", "t_runni2", "t_stalks", "t_stlks2", "t_stlks3", "t_countd", "t_count2", "t_betwee", "t_doom", "t_doom2", "t_the_da", "t_theda2", "t_theda3", "t_shawn", "t_shawn2", "t_shawn3", "t_ddtblu", "t_ddtbl2", "t_ddtbl3", "t_in_cit", "t_dead", "t_dead2", "t_romero", "t_romer2", "t_messag", "t_messg2", "t_ampie", "t_adrian", "t_tense", "t_openin", "t_evil", "t_ultima"
    --Plutonia
    "p_runnin", "p_runni2", "p_stalks", "p_stlks2", "p_stlks3", "p_countd", "p_count2", "p_betwee", "p_doom", "p_doom2", "p_the_da", "p_theda2", "p_theda3", "p_shawn", "p_shawn2", "p_shawn3", "p_ddtblu", "p_ddtbl2", "p_ddtbl3", "p_in_cit", "p_dead", "p_dead2", "p_romero", "p_romer2", "p_messag", "p_messg2", "p_ampie", "p_adrian", "p_tense", "p_openin", "p_evil", "p_ultima"
}

BRUTALDOOM.zd64music =
{
	"MAPWD01", "MAPWD02", "MAPWD03", "MAPWD04", "MAPWD05", "MAPWD06", "MAPWD07", "MAPWD08", "MAPWD09", "MAPWD10", "MAPWD11", "MAPWD12",
	"MAPWD13", "MAPWD14", "MAPWD15", "MAPWD16", "MAPWD17", "MAPWD18", "MAPWD19", "MAPWD20", "MAPWD21", "MAPWD22", "MAPWD23", "MAPWD24",
	"MAPWD25", "MAPWD26", "MAPWD27", "MAPWD28", "MAPWD29", "MAPWD30", "MAPWD31", "MAPWD32"
}

BRUTALDOOM.musicpresets =
{
    "iwad", "All music in the iwad"
    "doom2",    "Doom 2 only"
    "doommetal",    "Doom Metal Vol 4"
    "idkfa",    "IDKFA"
    "generic",  "Unspecified music mod (Doom 1 and 2 tracks)"
    "doom1",    "Doom 1 music mod"
	"ZD64MUSIC", "Doom 64"
}

function BRUTALDOOM.mergesongs()
    if BRUTALDOOM.PARAMETERS.musicpreset == "doommetal" or BRUTALDOOM.PARAMETERS.musicpreset == "generic" or (BRUTALDOOM.PARAMETERS.musicpreset == "iwad" and BRUTALDOOM.PARAMETERS.iwad == "doom_complete.pk3") then
        for k,v in pairs(BRUTALDOOM.doom1songs) do table.insert(BRUTALDOOM.music.songs, v) end
    end
    if BRUTALDOOM.PARAMETERS.musicpreset == "iwad" and BRUTALDOOM.PARAMETERS.iwad == "doom_complete.pk3" then
        for k,v in pairs(BRUTALDOOM.doom_completesongs) do table.insert(BRUTALDOOM.music.songs, v) end
    end
    if BRUTALDOOM.PARAMETERS.musicpreset == "idkfa" or BRUTALDOOM.PARAMETERS.musicpreset == "doom1" then --just doom1 songs
        BRUTALDOOM.music.songs=BRUTALDOOM.doom1songs
    end
	if BRUTALDOOM.PARAMETERS.musicpreset == "ZD64MUSIC" then --just the songs in ZD64MUSIC.PK3, which are named differently.
        BRUTALDOOM.music.songs=BRUTALDOOM.zd64music
    end
    gui.printf("iwad: " .. BRUTALDOOM.PARAMETERS.iwad ..'\n')
    gui.printf("Music preset: " .. BRUTALDOOM.PARAMETERS.musicpreset ..'\n')
    gui.printf("Music: \n" .. table.tostring(BRUTALDOOM.music.songs) ..'\n')
end

function DOOMMETAL.setup(self)
    for name,opt in pairs(self.options) do
        local value = self.options[name].value
        if value == "yes" then
            BRUTALDOOM.PARAMETERS[name] = true
        elseif value == "no" then
            BRUTALDOOM.PARAMETERS[name] = false
        else
            BRUTALDOOM.PARAMETERS[name] = value
        end
    end
end

function BRUTALDOOM.gameinfo()

  local data =
  {
      '//ZDoom GAMEINFO lump for Brutal Oblige\n'
  }
        
  table.insert(data,'IWAD="' .. BRUTALDOOM.PARAMETERS.iwad .. '"\n')

  table.insert(data,'LOAD="' .. BRUTALDOOM.PARAMETERS.brutalversion .. '"')
  if BRUTALDOOM.PARAMETERS.starterpack == true then
      table.insert(data,',"hellonearthstarterpack.wad"')
  end
  if BRUTALDOOM.PARAMETERS.brutalfriends == true then
      table.insert(data,',"bfriend1.pk3"')
  end
  if BRUTALDOOM.PARAMETERS.musicpreset == "doommetal" then
      table.insert(data,',"DoomMetalVol4.wad"')
  end
  if BRUTALDOOM.PARAMETERS.musicpreset == "idkfa" then
      table.insert(data,',"IDKFAv2.wad"')
  end
  if BRUTALDOOM.PARAMETERS.musicpreset == "ZD64MUSIC" then
      table.insert(data,',"ZD64MUSIC.PK3"')
  end
  
  table.insert(data,'\n')

  gui.wad_add_text_lump("GAMEINFO", data);
end

function BRUTALFRIENDS.setup()
	gui.wad_insert_file("brutaloblige/decorates/BrutalFriends.dec","DECORATE");
	BRUTALDOOM.PARAMETERS.brutalfriends = true;
end

function BRUTALDOOM.setsecretexits()
  --GAME.SECRET_EXITS.MAP08 = false --works to set secret exit
  if secretexit1 == 1 then GAME.SECRET_EXITS.BOM01 = true end --there must be a better way but I don't know it
  if secretexit1 == 2 then GAME.SECRET_EXITS.BOM02 = true end
  if secretexit1 == 3 then GAME.SECRET_EXITS.BOM03 = true end
  if secretexit1 == 4 then GAME.SECRET_EXITS.BOM04 = true end
  if secretexit1 == 5 then GAME.SECRET_EXITS.BOM05 = true end
  if secretexit1 == 6 then GAME.SECRET_EXITS.BOM06 = true end
  if secretexit1 == 7 then GAME.SECRET_EXITS.BOM07 = true end
  if secretexit1 == 8 then GAME.SECRET_EXITS.BOM08 = true end
  if secretexit1 == 9 then GAME.SECRET_EXITS.BOM09 = true end
  if secretexit1 == 10 then GAME.SECRET_EXITS.BOM10 = true end
  if secretexit2 == 11 then GAME.SECRET_EXITS.BOM11 = true end
  if secretexit2 == 12 then GAME.SECRET_EXITS.BOM12 = true end
  if secretexit2 == 13 then GAME.SECRET_EXITS.BOM13 = true end
  if secretexit2 == 14 then GAME.SECRET_EXITS.BOM14 = true end
  if secretexit2 == 15 then GAME.SECRET_EXITS.BOM15 = true end
  if secretexit2 == 16 then GAME.SECRET_EXITS.BOM16 = true end
  if secretexit2 == 17 then GAME.SECRET_EXITS.BOM17 = true end
  if secretexit2 == 18 then GAME.SECRET_EXITS.BOM18 = true end
  if secretexit2 == 19 then GAME.SECRET_EXITS.BOM19 = true end
  if secretexit3 == 20 then GAME.SECRET_EXITS.BOM20 = true end
  if secretexit3 == 21 then GAME.SECRET_EXITS.BOM21 = true end
  if secretexit3 == 22 then GAME.SECRET_EXITS.BOM22 = true end
  if secretexit3 == 23 then GAME.SECRET_EXITS.BOM23 = true end
  if secretexit3 == 24 then GAME.SECRET_EXITS.BOM24 = true end
  if secretexit3 == 25 then GAME.SECRET_EXITS.BOM25 = true end
  if secretexit3 == 26 then GAME.SECRET_EXITS.BOM26 = true end
  if secretexit3 == 27 then GAME.SECRET_EXITS.BOM27 = true end
  if secretexit3 == 28 then GAME.SECRET_EXITS.BOM28 = true end
  if secretexit3 == 29 then GAME.SECRET_EXITS.BOM29 = true end
  gui.printf('Secret exit table:\n' .. table.tostring(GAME.SECRET_EXITS) .. '\n')
end

function BRUTALDOOM.get_levels()
    gui.printf("brutaldoom.get_levels code is running\n")
    local MAP_LEN_TAB = { few=4, episode=11, game=32 }

  local MAP_NUM = MAP_LEN_TAB[OB_CONFIG.length] or 1

  local EP_NUM = 1
  if MAP_NUM > 11 then EP_NUM = 2 end
  if MAP_NUM > 30 then EP_NUM = 3 end

  -- create episode info...

  for ep_index = 1,3 do
    local ep_info = GAME.EPISODES["episode" .. ep_index]
    assert(ep_info)

    local EPI = table.copy(ep_info)

    EPI.levels = { }

    table.insert(GAME.episodes, EPI)
  end

  -- create level info...

  for map = 1,MAP_NUM do
    -- determine episode from map number
    local ep_index
    local ep_along

    local game_along = map / MAP_NUM

    if map > 30 then
      ep_index = 3 ; ep_along = 0.5 ; game_along = 0.5
    elseif map > 20 then
      ep_index = 3 ; ep_along = (map - 20) / 10
    elseif map > 11 then
      ep_index = 2 ; ep_along = (map - 11) / 9
    else
      ep_index = 1 ; ep_along = map / 11
    end

    if OB_CONFIG.length == "single" then
      game_along = rand.pick({ 0.2, 0.3, 0.4, 0.7 })
      ep_along = game_along

    elseif OB_CONFIG.length == "few" then
      ep_along = game_along
    end

    assert(ep_along <= 1.0)
    assert(game_along <= 1.0)

    local EPI = GAME.episodes[ep_index]
    assert(EPI)

    local LEV =
    {
      episode = EPI

      name  = string.format("BOM%02d", map)
      patch = string.format("BOP%02d", map-1)

      ep_along = ep_along
      game_along = game_along
    }

    table.insert( EPI.levels, LEV)
    table.insert(GAME.levels, LEV)

    --LEV.secret_exit = GAME.SECRET_EXITS[LEV.name]
    if GAME.SECRET_EXITS[LEV.name] then
        LEV.secret_exit = true
    end

    -- secret levels
    if map == 31 then
      LEV.theme_name = "wolf"
      LEV.name_class = "URBAN"
      LEV.is_secret = true
    end
    if map == 32 then
      LEV.theme_name = "satanshankerchief"
      LEV.name_class = "TECH"
      LEV.is_secret = true
    end

    -- prebuilt levels
    local pb_name = LEV.name
    
    LEV.prebuilt = GAME.PREBUILT_LEVELS[pb_name]

    if LEV.prebuilt then
      LEV.name_class = LEV.prebuilt.name_class or "BOSS"
    end

    if MAP_NUM == 1 or (map % 10) == 3 then
      LEV.demo_lump = string.format("DEMO%d", ep_index)
    end
  end
end

function BRUTALDOOM.texturesetup()
  local data =
  {
      'Texture SKELPOSTER, 64, 64\n'
      '{\n'
	  'Patch O_BLACK, 0, 0\n'
	  'Patch O_BLACK, 48, 0\n'
	  'Patch SKELJ1, 7, 2\n'
      'Graphic BO_DOOM, 0, 33\n'
      '}\n'
	'Texture "CXCRATE1", 64, 128\n'
    '{\n'
    '	Patch "CCRATEL1", 0, 0\n'
    '	Patch "CCRATER1", 32, 0\n'
    '	Patch "CCRATEL1", 0, 64\n'
    '	Patch "CCRATER1", 32, 64\n'
    '}\n'
    '\n'
    'Texture "CXCRATE2", 64, 128\n'
    '{\n'
    '	Patch "DCRATEL1", 0, 0\n'
    '	Patch "DCRATER1", 32, 0\n'
    '	Patch "DCRATEL1", 0, 64\n'
    '	Patch "DCRATER1", 32, 64\n'
    '}\n'
    '\n'
    'Texture "CXCRATE3", 64, 128\n'
    '{\n'
    '	Patch "DCRATEL1", 0, 0\n'
    '	Patch "DCRATER1", 32, 0\n'
    '	Patch "CCRATEL1", 0, 64\n'
    '	Patch "CCRATER1", 32, 64\n'
    '}\n'
    '\n'
    'Texture "CXCRATEL", 64, 128\n'
    '{\n'
    '	Patch "DCRATEL1", 0, 0\n'
    '	Patch "DCRATER1", 32, 0\n'
    '	Patch "CCRATEL1", 0, 64\n'
    '	Patch "CCRATER1", 32, 64\n'
    '}\n'
    '\n'
    'Texture "CXCRATET", 64, 16\n'
    '{\n'
    '	Patch "VDCRATE1", 0, 0\n'
    '	Patch "VDCRATE1", 16, 0\n'
    '	Patch "VDCRATE1", 32, 0\n'
    '	Patch "VDCRATE1", 48, 0\n'
    '}\n'
    '\n'
    'Texture "CXCRATEW", 128, 128\n'
    '{\n'
    '	Patch "CCRATEL1", 0, 64\n'
    '	Patch "CCRATEM1", 40, 64\n'
    '	Patch "CCRATEM1", 32, 64\n'
    '	Patch "CCRATEM1", 48, 64\n'
    '	Patch "CCRATEM1", 56, 64\n'
    '	Patch "CCRATER1", 96, 64\n'
    '	Patch "CCRATEM1", 88, 64\n'
    '	Patch "CCRATEM1", 80, 64\n'
    '	Patch "CCRATEM1", 72, 64\n'
    '	Patch "CCRATEM1", 64, 64\n'
    '	Patch "DCRATEL1", 0, 0\n'
    '	Patch "DCRATER1", 96, 0\n'
    '	Patch "DCRATEM1", 48, 0\n'
    '	Patch "DCRATEM1", 40, 0\n'
    '	Patch "DCRATEM1", 32, 0\n'
    '	Patch "DCRATEM1", 72, 0\n'
    '	Patch "DCRATEM1", 64, 0\n'
    '	Patch "DCRATEM1", 56, 0\n'
    '	Patch "DCRATEM1", 80, 0\n'
    '	Patch "DCRATEM1", 88, 0\n'
    '}\n'
	  
  }
  local doom1data =
  {
	'texture SP_DUDE6, 64, 128\n'
	'{\n'
		'Patch WALL48_2, 0, 0\n'
		'Graphic BOSSJ0, 6, 32\n'
	'}\n'
	'texture SKINTEK2, 64, 128\n'
	'{\n'
	   'XScale 1.0\n'
	   'YScale 1.0\n'
	   'Patch GTGREN01, 0, 0\n'
	'}\n'
  }
  local tntdata =
  {
    '//Freedoom TNT patch equivalents\n'
    'texture STWALL, 128, 128\n'
    '{\n'
    'Patch FRSTWALL, 0, 0\n'
    '}\n'
    'texture STONEW1, 128, 128\n'
    '{\n'
    'Patch FRSTONEW, 0, 0\n'
    '}\n'
    'texture STONEW5, 128, 128\n'
    '{\n'
    'Patch FRSTONEW, 0, 0\n'
    '}\n'
    'Texture METALDR, 128, 128\n'
    '{\n'
    '	Patch WALL47_1, 0, 0\n'
    '	Patch WALL47_1, 64, 0\n'
    '	Patch WALL42_3, 21, 0\n'
    '	Patch WALL42_3, 85, 0\n'
    '	Patch W111_3, 0, 0\n'
    '	Patch W111_3, 0, 64\n'
    '	Patch W111_3, 64, 0\n'
    '	Patch W111_3, 64, 64\n'
    '	Patch SW2_1, 52, 37\n'
    '}\n'
    'Texture SMSTONE6, 128, 128\n'
    '{\n'
    '	Patch FRSTONEW, 0, 0\n'
    '	Patch W107_1, 0, 0\n'
    '}\n'
    'Texture BIGWALL, 128, 128\n'
    '{\n'
    '	Patch FRBIGWAL, 0, 0\n'
    '}\n'
    'Texture MURAL1, 128, 128\n'
    '{\n'
    '	Patch FMURAL1, 0, 0\n'
    '}\n'
    'Texture MURAL2, 128, 128\n'
    '{\n'
    '	Patch FMURAL2, 0, 0\n'
    '}\n'
    'Texture BIGMURAL, 256, 128\n'
    '{\n'
    '	Patch FBIGMURL, 0, 0\n'
    '}\n'
    'Texture CAVERN1, 128, 128\n'
    '{\n'
    '	Patch FRCAVE1, 0, 0\n'
    '}\n'
    'Texture CAVERN4, 128, 128\n'
    '{\n'
    '	Patch FRCAVE4, 0, 0\n'
    '}\n'
    'Texture CAVERN5, 64, 128\n'
    '{\n'
    '	Patch FRCAVE5, 0, 0\n'
    '}\n'
    'Texture CAVERN6, 128, 128\n'
    '{\n'
    '	Patch FRCAVE6, 0, 0\n'
    '}\n'
    'Texture CAVERN7, 128, 128\n'
    '{\n'
    '	Patch FRCAVE7, 0, 0\n'
    '}\n'
    'Texture ALTAQUA, 128, 128\n'
    '{\n'
    '	Patch FRAQUA, 0, 0\n'
    '}\n'
    'Texture DOKGRIR, 128, 128\n'
    '{\n'
    '        Patch FDOKGRIR, 0, 0\n'
    '}\n'
    'Texture DOKODO1B, 64, 128\n'
    '{\n'
    '        Patch FRKODO1B, 0, 0\n'
    '}\n'
    'Texture DOKODO2B, 64, 128\n'
    '{\n'
    '        Patch FRKODO1B, 0, 0\n'
    '}\n'
	'Texture LONGWALL, 256, 128\n'
	'{\n'
	'	Patch FLNGWALL, 0, 0\n'
	'}\n'
  }
  local plutoniadata =
  {
      '//Freedoom Plutonia patch equivalents\n'
      'Texture "A-CAMO1", 128, 128\n'
        '{\n'
        'Patch FRCAM1, 0, 0\n'
        '}\n'
        'Texture "A-CAMO2", 256, 128\n'
        '{\n'
        'Patch FRCAM1, 0, 0\n'
        'Patch FRCAM1, 128, 0\n'
        'Patch W107_1, 0, 0\n'
        '}\n'
        'Texture "A-CAMO3", 256, 128\n'
        '{\n'
        'Patch FRCAM1, 0, 0\n'
        'Patch FRCAM1, 128, 0\n'
        'Patch W106_1, 0, 0\n'
        '}\n'
        'Texture "A-CAMO4", 128, 128\n'
        '{\n'
        'Patch FRCAM4, 0, 0\n'
        '}\n'
        'Texture "A-CAMO5", 128, 128\n'
        '{\n'
        'Patch FRCAM5, 0, 0\n'
        '}\n'
        'Texture "A-BROWN4", 128, 128\n'
        '{\n'
        '	Patch BROWNF, 0, 0\n'
        '	Patch W111_2, 0, 0\n'
        '	Patch W111_3, 64, 64\n'
        '	Patch W111_2, 0, 64\n'
        '	Patch W111_3, 64, 0\n'
        '	Patch BOSFA0, 47, 49\n'
        '}\n'
  }
  if BRUTALDOOM.PARAMETERS.iwad != "heretic.wad" then
	  if BRUTALDOOM.PARAMETERS.iwad != "Tnt.wad" and BRUTALDOOM.PARAMETERS.iwad != "doom_complete.pk3" then
		  combine(data,tntdata)
	  end
	  if BRUTALDOOM.PARAMETERS.iwad != "doom_complete.pk3" then
		  combine(data,doom1data)
	  end
	  if BRUTALDOOM.PARAMETERS.iwad != "Plutonia.wad" and BRUTALDOOM.PARAMETERS.iwad != "doom_complete.pk3" then
		  combine(data,plutoniadata)
	  end
  else
      heretic_freetexture();
  end
    gui.wad_add_text_lump("TEXTURES", data);
    
    local decaldata = 
    {
        'decal Skel_Poster\n'
        '{\n'
        '    pic SKELPOSTER\n'
        '}\n'
    }
    gui.wad_add_text_lump("DECALDEF", decaldata);
end

BRUTALDOOM.MAPINFO = { }

function BRUTALDOOM.create_mapinfo()
    gui.printf("Mapinfo code is starting\n");
	
	if OB_MODULES["universal_intermissions"].enabled == true then
		gui.printf('Using UI\n');
	else
		gui.printf('Not using UI\n');
	end
    
local castcall =
[[
Intermission Brutal_FinalIntermission
    {
    	Image
    	{
    		// This is only here to initialize the background and the music
    		Background = "$bgcastcall"
    		Time = -1
    		Music = "$MUSIC_EVIL"
    	}
    	Link = BrutalDoomCast
    }
Intermission BrutalDoomCast
    {
    	Cast
    	{
    		CastClass = "Zombieman"
    		CastName = "$CC_ZOMBIE"
    		AttackSound = "Missile", 1, "grunt/attack"
    	}
    	Cast
    	{
    		CastClass = "ShotgunGuy"
    		CastName = "$CC_SHOTGUN"
    		AttackSound = "Missile", 1, "shotguy/attack"
    	}
    	Cast
    	{
    		CastClass = "ChaingunGuy"
    		CastName = "$CC_HEAVY"
    		AttackSound = "Missile", 1, "chainguy/attack"
    		AttackSound = "Missile", 2, "chainguy/attack"
    		AttackSound = "Missile", 3, "chainguy/attack"
    	}
    	Cast
    	{
    		CastClass = "DoomImp"
    		CastName = "$CC_IMP"
    		AttackSound = "Missile", 2, "imp/attack"
    	}
    	Cast
    	{
    		CastClass = "ObligeDarkImp"
    		CastName = "Dark Imp"
    		AttackSound = "Missile", 2, "imp/attack"
    	}
    	Cast
    	{
    		CastClass = "Demon"
    		CastName = "$CC_DEMON"
    		AttackSound = "Melee", 1, "demon/melee"
    	}
    	Cast
    	{
    		CastClass = "LostSoul"
    		CastName = "$CC_LOST"
    		AttackSound = "Missile", 1, "skull/melee"
    	}
    	Cast
    	{
    		CastClass = "Cacodemon"
    		CastName = "$CC_CACO"
    		AttackSound = "Missile", 1, "caco/attack"
    	}
    	Cast
    	{
    		CastClass = "ObligeEasyMarine"
    		CastName = "Evil Grunt"
    		AttackSound = "Missile", 1, "grunt/attack"
    	}
        Cast
    	{
    		CastClass = "EvilMarine"
    		CastName = "Evil Marine"
    		AttackSound = "Missile", 1, "PLSM9"
    	}
    	Cast
    	{
    		CastClass = "HellKnight"
    		CastName = "$CC_HELL"
    		AttackSound = "Missile", 1, "baron/attack"
    	}
    	Cast
    	{
    		CastClass = "BaronOfHell"
    		CastName = "$CC_BARON"
    		AttackSound = "Missile", 1, "baron/attack"
    	}
    	Cast
    	{
    		CastClass = "ObligeBelphegor"
    		CastName = "Belphegor"
    		AttackSound = "Missile", 1, "baron/attack"
    	}
    	Cast
    	{
    		CastClass = "Arachnotron"
    		CastName = "$CC_ARACH"
    		AttackSound = "Missile", 1, "baby/attack"
    	}
    	Cast
    	{
    		CastClass = "PainElemental"
    		CastName = "$CC_PAIN"
    		AttackSound = "Missile", 2, "skull/melee"
    	}
    	Cast
    	{
    		CastClass = "Revenant"
    		CastName = "$CC_REVEN"
    		AttackSound = "Missile", 1, "skeleton/attack"
    		AttackSound = "Melee", 1, "skeleton/swing"
    		AttackSound = "Melee", 3, "skeleton/melee"
    	}
    	Cast
    	{
    		CastClass = "Fatso"
    		CastName = "$CC_MANCU"
    		AttackSound = "Missile", 1, "fatso/attack"
    		AttackSound = "Missile", 4, "fatso/attack"
    		AttackSound = "Missile", 7, "fatso/attack"
    	}
    	Cast
    	{
    		CastClass = "Archvile"
    		CastName = "$CC_ARCH"
    		AttackSound = "Missile", 1, "vile/start"
    	}
    	Cast
    	{
    		CastClass = "SpiderMastermind"
    		CastName = "$CC_SPIDER"
    		AttackSound = "Missile", 1, "spider/attack"
    		AttackSound = "Missile", 2, "spider/attack"
    	}
    	Cast
    	{
    		CastClass = "ObligeJuggernaut"
    		CastName = "Juggernaut"
    		AttackSound = "Missile", 1, "weapons/rocklf"
    		AttackSound = "Missile", 3, "weapons/rocklf"
    		AttackSound = "Missile", 5, "weapons/rocklf"
    	}
        Cast
    	{
    		CastClass = "Cyberdemon"
    		CastName = "$CC_CYBER"
    		AttackSound = "Missile", 1, "weapons/rocklf"
    		AttackSound = "Missile", 3, "weapons/rocklf"
    		AttackSound = "Missile", 5, "weapons/rocklf"
    	}
    	Cast
    	{
    		CastClass = "DoomPlayer"
    		CastName = "$CC_HERO"
    		AttackSound = "Missile", 0, "weapons/sshotf"
    	}
    	Link = BrutalDoomCast	// restart cast call
    }
]]
    
  gui.printf("Mapinfo code is running\n");
  local data =
  {
    "//\n"
    "// MAPINFO LUMP created by OBLIGE\n"
    "//\n"
    "//Secret exits are in maps " .. tostring(secretexit1) .. ', ' .. tostring(secretexit2) .. ' and ' .. tostring(secretexit3) .. '\n'
    "clearepisodes\n\n"
    'episode bom01\n'
    '{\n'
    'name = "Brutal Oblige"\n'
    '}\n\n'
    'map E2M8 "Tower of Babel" //brutality\n'
    '{\n'
    'next = "BOM0' .. tostring(secretexit1 + 1) .. '"\n'
    'sky1 = "SKY3"\n'
    'EnterPic = "INTERPIC"//changeifdoomcomplete\n'
    'ExitPic = "INTERPIC"//changeifdoomcomplete\n'
    'cluster = 10\n'
    'music = "d_messag"//changeifdoommetal\n'
    'SpecialAction = "ObligeCyberdemonLord", "Exit_Normal", 0\n'
    'SpecialAction = "ObligeInfernal", "Exit_Normal", 0\n'
    'SpecialAction = "ObligeCyberdemonBoss", "Exit_Normal", 0\n'
    'SpecialAction = "CyberdemonBoss", "Exit_Normal", 0\n'
    '}\n'
    'map E3M8 "Dis" //brutality\n'
    '{\n'
    'next = "BOM' .. tostring(secretexit3 + 1) .. '"\n'
    'sky1 = "SKY3"\n'
    'EnterPic = "INTERPIC"//changeifdoomcomplete\n'
    'ExitPic = "INTERPIC"//changeifdoomcomplete\n'
    'cluster = 10\n'
    'music = "d_openin"//changeifdoommetal\n'
    'SpecialAction = "CyberdemonLordMinor", "Exit_Normal", 0\n'
    'SpecialAction = "ObligeCyberdemonLordMinor", "Exit_Normal", 0\n'
    '}\n'
    --brutality has the naming correct whilst brutal has this bollocks
    'map E5M8 "Tower of Babel" //brutalv20b\n'
    '{\n'
    'next = "BOM0' .. tostring(secretexit1 + 1) .. '"\n'
    'sky1 = "SKY3"\n'
    'EnterPic = "INTERPIC"//changeifdoomcomplete\n'
    'ExitPic = "INTERPIC"//changeifdoomcomplete\n'
    'cluster = 10\n'
    'music = "d_messag"//changeifdoommetal\n'
    'SpecialAction = "ObligeCyberdemonBoss", "Exit_Normal", 0\n'
    'SpecialAction = "CyberdemonBoss", "Exit_Normal", 0\n'
    'SpecialAction = "ObligeInfernal", "Exit_Normal", 0\n'
    'SpecialAction = "ObligeCyberdemonLord", "Exit_Normal", 0\n'
    '}\n'
    'map E3M10 "Dis" //brutalv20b\n'
    '{\n'
    'next = "BOM' .. tostring(secretexit3 + 1) .. '"\n'
    'sky1 = "SKY3"\n'
    'EnterPic = "INTERPIC"//changeifdoomcomplete\n'
    'ExitPic = "INTERPIC"//changeifdoomcomplete\n'
    'cluster = 10\n'
    'music = "d_openin"//changeifdoommetal\n'
    'SpecialAction = "CyberdemonLordMinor", "Exit_Normal", 0\n'
    'SpecialAction = "ObligeSuperMastermind", "Exit_Normal", 0\n'
    'SpecialAction = "SuperMastermind", "Exit_Normal", 0\n'
    'SpecialAction = "ObligeCyberdemonLordMinor", "Exit_Normal", 0\n'
    '}\n'
  }

  --- music ---
  local epi_list = BRUTALDOOM.music
  local dest = { }

  each _,src in epi_list do
    dest = table.copy(src)
    
    -- this shuffle algorithm ensures first entry is never the same
    --once again I can't quite work out the code so I have left this even though I only need half of it
    for i = 1, (#dest) do
      local k = rand.irange(i + 1, #dest)
      dest[i], dest[k] = dest[k], dest[i]
    end
  end
    --after this dest[1-#src] are the music tracks
    dest[31] = "d_evil" --map 31 always wolf themed
	
	if OB_CONFIG.game == "brutality" then
		dest[30] = "TitleMap" --Brutality Theme for final level
	end

  local firstmap = 1
  local mapnum = 1

  --- level names ---
  --L.name is MAP01 etc, L.descritption is the nice name
  --L.theme_name gives the theme
  each L in GAME.levels do
    local prefix = PARAM.bex_map_prefix

    if L.description and prefix then --keep the prefix stuff from the bex incase something else relies on it
      local id

      if string.sub(L.name, 1, 1) == 'E' then
        -- Doom I : ExMy
        id = "bom" .. L.name

      else
        local pos = 4
        if string.sub(L.name, pos, pos) == '0' then
          pos = pos + 1
        end

        -- Doom II / Final Doom : HUSTR_%d
        id = "bom" .. string.sub(L.name, pos)
      end

      local nextmap = 'next = "' .. L.name ..'"\n'

      local sky1 = 'sky1 = "RSKY1' --default sky. Final " deliberately ommitted so a B can be added before it, see the roll for extra sky bit.
      local enterpic = '"INTERPIC"' --default intermissionpic
      if L.theme_name == "hell" then
        sky1 = 'sky1 = "RSKY3'
      elseif L.theme_name == "urban" then
        sky1 = 'sky1 = "RSKY2'
      elseif L.theme_name == "satanshankerchief" then
	local n = rand.irange(1,3)
        sky1 = 'sky1 = "CHEXSKY' .. n
        enterpic = '"CHEXINT"'
      end
	  
	  --Universal Intermission Screen
	  if OB_MODULES["universal_intermissions"].enabled == true then
		enterpic = '"$BINTM"'
	  end
      
      --roll for extra sky
      if BRUTALDOOM.PARAMETERS.skygenerator == true and rand.irange(1,2) == 2 and L.theme_name != "satanshankerchief" then
          sky1 = sky1 .. 'B'
      end

      sky1 = sky1 .. '"\n' --put in the newline here for convinience
      enterpic = enterpic .. '\n'

      local text = L.name .. ' "' .. L.description ..'"'; --the mapinfo key

      --say that this map comes after the last map
      if firstmap == 0 then
	if mapnum != 31 and mapnum != 32 and mapnum != 33 then --yes I could just do <31 but it might be possible to make Oblige do more than 32 maps in which case this will still work. Number is 1 higher because this is inserted at the start of the next map.
          table.insert(data, nextmap)
        else
	  if mapnum != 32 and mapnum != 33 then
            table.insert(data, 'next = "EndGame3"\n')
	  end
	end
        if mapnum >=11 and mapnum < 21 then--mapnum == 17 then --map 16 has the secret exit to wolf levels. Number is 1 higher because this is inserted at the start of the next map.
          table.insert(data, 'secretnext = "BOM31"\n')
        end
        if mapnum < 11 then --give map 8 a secret exit to tower of bable (included in the brutal and brutality pk3s)
	  if boss1 == "cyberlordmajor" then --if big CyberLord at babel then make that the second boss battle 
	    if OB_CONFIG.game == "brutality" then
              table.insert(data, 'secretnext = "E3M8"\n')
	    elseif OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E3M10"\n')
	    end
	  else
	    if OB_CONFIG.game == "brutality" then
              table.insert(data, 'secretnext = "E2M8"\n')
	    elseif OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E5M8"\n')
	    end
	  end
        end
        if mapnum >= 21 and mapnum < 30 then --give map 24 a secret exit to spider mastermind battle (included in the brutal and brutality pk3s)
	  if boss1 == "cyberlordmajor" then --if big CyberLord at babel then make this the first boss battle 
	    if OB_CONFIG.game == "brutality" then
              table.insert(data, 'secretnext = "E2M8"\n')
	    elseif OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E5M8"\n')
	    end
	  else
	    if OB_CONFIG.game == "brutality" then
              table.insert(data, 'secretnext = "E3M8"\n')
	    elseif OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E3M10"\n')
	    end
	  end
        end
        if mapnum == 32 then --first secret level (wolf)
          table.insert(data, 'next = "BOM' .. tostring(secretexit2 + 1) .. '"\n')
          table.insert(data, 'secretnext = "BOM32"\n')
        end
        table.insert(data, '\n}\n') --close last map's definition
      else
        firstmap = 0
      end

      --open definition for map
      table.insert(data, string.format("%s %s\n{\n", "map", text))
      --enter map information
      table.insert(data, sky1)
      table.insert(data, 'EnterPic = ' .. enterpic)
      table.insert(data, 'ExitPic = ' .. enterpic)
      table.insert(data, 'cluster = 10\n')
      table.insert(data, 'music = "' .. dest[mapnum] .. '"\n')
      mapnum = mapnum + 1
    end
  end -- for L

  if mapnum == 33 then --second secret level (chex)
    table.insert(data, 'next = "BOM' .. tostring(secretexit2 + 1) .. '"\n')
  else
    table.insert(data, 'next = EndSequence, "Brutal_FinalIntermission"\n') --last map ends the game unless it is a secret level (ie anything more or less than full game)
  end
  table.insert(data, "\n}\n"); --close final map definition
  
  --insert final intermission
  table.insert(data, castcall)

--make sure there are no 0s in stupid places
for i = 1, (#data) do --for every value in data
  data[i] = string.gsub(data[i], '"BOM010"','"BOM10"')
  data[i] = string.gsub(data[i], '"BOM011"','"BOM11"')
  data[i] = string.gsub(data[i], '"BOM012"','"BOM12"')
  data[i] = string.gsub(data[i], '"BOM013"','"BOM13"')
  data[i] = string.gsub(data[i], '"BOM014"','"BOM14"')
  data[i] = string.gsub(data[i], '"BOM015"','"BOM15"')
  data[i] = string.gsub(data[i], '"BOM016"','"BOM16"')
  data[i] = string.gsub(data[i], '"BOM017"','"BOM17"')
  data[i] = string.gsub(data[i], '"BOM018"','"BOM18"')
  data[i] = string.gsub(data[i], '"BOM019"','"BOM19"')
  data[i] = string.gsub(data[i], '"BOM020"','"BOM20"')
  data[i] = string.gsub(data[i], '"BOM021"','"BOM21"')
  data[i] = string.gsub(data[i], '"BOM022"','"BOM22"')
  data[i] = string.gsub(data[i], '"BOM023"','"BOM23"')
  data[i] = string.gsub(data[i], '"BOM024"','"BOM24"')
  data[i] = string.gsub(data[i], '"BOM025"','"BOM25"')
  data[i] = string.gsub(data[i], '"BOM026"','"BOM26"')
  data[i] = string.gsub(data[i], '"BOM027"','"BOM27"')
  data[i] = string.gsub(data[i], '"BOM028"','"BOM28"')
  data[i] = string.gsub(data[i], '"BOM029"','"BOM29"')
  data[i] = string.gsub(data[i], '"BOM030"','"BOM30"')
  data[i] = string.gsub(data[i], '"BOM031"','"BOM31"')
  data[i] = string.gsub(data[i], '"BOM032"','"BOM32"')
  data[i] = string.gsub(data[i], '"BOM1"','"BOM01"')
  data[i] = string.gsub(data[i], '"BOM2"','"BOM02"')
  data[i] = string.gsub(data[i], '"BOM3"','"BOM03"')
  data[i] = string.gsub(data[i], '"BOM4"','"BOM04"')
  data[i] = string.gsub(data[i], '"BOM5"','"BOM05"')
  data[i] = string.gsub(data[i], '"BOM6"','"BOM06"')
  data[i] = string.gsub(data[i], '"BOM7"','"BOM07"')
  data[i] = string.gsub(data[i], '"BOM8"','"BOM08"')
  data[i] = string.gsub(data[i], '"BOM9"','"BOM09"')
  --if using doom metal E2M8 and E3M8 can use the doom1 music
  if BRUTALDOOM.PARAMETERS.musicpreset == "doommetal" or BRUTALDOOM.PARAMETERS.musicpreset == "generic" then
      data[i] = string.gsub(data[i], '"d_messag"//changeifdoommetal','"d_e2m8"')
      data[i] = string.gsub(data[i], '"d_openin"//changeifdoommetal','"d_e3m8"')
  end
  --change interpics for babel and dis if using Universial Intermissions
  if OB_MODULES["universal_intermissions"].enabled == true then
	data[i] = string.gsub(data[i], '"INTERPIC"//changeifdoomcomplete','"$BINTM"')
  end
  if BRUTALDOOM.PARAMETERS.iwad == "doom_complete.pk3" then
      data[i] = string.gsub(data[i], '"INTERPIC"//changeifdoomcomplete','"INTER_E4"')
      if BRUTALDOOM.PARAMETERS.musicpreset == "iwad" then
          data[i] = string.gsub(data[i], '"d_messag"//changeifdoommetal','"d_e2m8"')
          data[i] = string.gsub(data[i], '"d_openin"//changeifdoommetal','"d_e3m8"')
      end
  end
end

if BRUTALDOOM.PARAMETERS.starterpack == true then
    gui.wad_add_text_lump("BASEMI", data);
else
    gui.wad_add_text_lump("MAPINFO", data);
end

end

function BRUTALDOOM.all_done()
  BRUTALDOOM.decorate();
  BRUTALDOOM4.caco();
  BRUTALDOOM4.decorateweapons();
  BRUTALDOOM.flem_nukage();
  DOOM.all_done();
  BRUTALDOOM.epic();
  BRUTALDOOM.gameinfo();
  BRUTALDOOM.mixhanky();
  BRUTALDOOM.texturesetup();
  BRUTALDOOM.mergesongs();
  if BRUTALDOOM.PARAMETERS.skygenerator == true then
      BRUTALDOOM.generate_skies();
  end
  if BRUTALDOOM.PARAMETERS.iwad == 'freedoom2.wad' then
      BRUTALDOOM.freedoom_language();
  end
  if BRUTALDOOM.PARAMETERS.iwad == "heretic.wad" then
	heretic_monstersetup();
	heretic_iwadsetup();
  end
  if OB_MODULES["universal_intermissions"].enabled == true then
	BRUTALDOOM.createintm();
  end
  BRUTALDOOM.create_mapinfo();
end

function BRUTALITY.all_done()
  BRUTALITY.decorate();
  BRUTALDOOM4.caco();
  BRUTALDOOM.flem_nukage();
  DOOM.all_done();
  BRUTALDOOM.epic();
  BRUTALITY.gameinfo();
  BRUTALDOOM.mixhanky();
  BRUTALDOOM.texturesetup();
  BRUTALDOOM.setsecretexits();
  if doom_metal == true then
      DOOMMETAL.mergesongs();
  end
  if skygenerator == true then
      BRUTALDOOM.generate_skies();
  end
  BRUTALDOOM.create_mapinfo();
end

function BRUTALDOOM.mixhanky()
    if OB_CONFIG.length == 32 then --if a full game then only map32 can be chex themed.
        OB_THEMES["satanshankerchief"].mixed_prob=0
    end
end

function BRUTALDOOM.freedoom_language()
    --overwrites the freedoom dehacked which turns Imp to serpent etc
    local data =
    {
        '[STRINGS]\n\n'
        'OB_STEALTHBABY = %o thought %g saw an arachnotron.\n'
        'OB_STEALTHVILE = %o thought %g saw an archvile.\n'
        'OB_STEALTHBARON = %o thought %g saw a Baron of Hell.\n'
        'OB_STEALTHCACO = %o thought %g saw a cacodemon.\n'
        'OB_STEALTHCHAINGUY = %o thought %g saw a chaingunner.\n'
        'OB_STEALTHDEMON = %o thought %g saw a demon.\n'
        'OB_STEALTHKNIGHT = %o thought %g saw a Hell Knight.\n'
        'OB_STEALTHIMP = %o thought %g saw an imp.\n'
        'OB_STEALTHFATSO = %o thought %g saw a mancubus.\n'
        'OB_STEALTHUNDEAD = %o thought %g saw a revenant.\n'
        'OB_STEALTHSHOTGUY = %o thought %g saw a sergeant.\n'
        'OB_STEALTHZOMBIE = %o thought %g saw a zombieman.\n'
        'OB_UNDEADHIT = %o was punched by a revenant.\n'
        'OB_IMPHIT = %o was slashed by an imp.\n'
        'OB_CACOHIT = %o got too close to a cacodemon.\n'
        'OB_DEMONHIT = %o was bit by a demon.\n'
        'OB_SPECTREHIT = %o was eaten by a spectre.\n'
        'OB_BARONHIT = %o was ripped open by a Baron of Hell.\n'
        'OB_KNIGHTHIT = %o was gutted by a Hell Knight.\n'
        'OB_ZOMBIE = %o was killed by a zombieman.\n'
        'OB_SHOTGUY = %o was shot by a sergeant.\n'
        'OB_VILE = %o was incinerated by an archvile.\n'
        "OB_UNDEAD = %o couldn't evade a revenant's fireball.\n"
        'OB_FATSO = %o was squashed by a mancubus.\n'
        'OB_CHAINGUY = %o was perforated by a chaingunner.\n'
        'OB_SKULL = %o was spooked by a lost soul.\n'
        'OB_IMP = %o was burned by an imp.\n'
        'OB_CACO = %o was smitten by a cacodemon.\n'
        'OB_BARON = %o was bruised by a Baron of Hell.\n'
        'OB_KNIGHT = %o was splayed by a Hell Knight.\n'
        'OB_SPIDER = %o stood in awe of the spider demon.\n'
        'OB_BABY = %o let an arachnotron get %h.\n'
        'OB_CYBORG = %o was splattered by a cyberdemon.\n'
        'OB_WOLFSS = %o met a Nazi.\n'
        'CC_ZOMBIE = ZOMBIEMAN\n'
        'CC_SHOTGUN = SHOTGUN GUY\n'
        'CC_HEAVY = HEAVY WEAPON DUDE\n'
        'CC_IMP = IMP\n'
        'CC_DEMON = DEMON\n'
        'CC_LOST = LOST SOUL\n'
        'CC_CACO = CACODEMON\n'
        'CC_HELL = HELL KNIGHT\n'
        'CC_BARON = BARON OF HELL\n'
        'CC_ARACH = ARACHNOTRON\n'
        'CC_PAIN = PAIN ELEMENTAL\n'
        'CC_REVEN = REVENANT\n'
        'CC_MANCU = MANCUBUS\n'
        'CC_ARCH = ARCH-VILE\n'
        'CC_SPIDER = THE SPIDER MASTERMIND\n'
        'CC_CYBER = THE CYBERDEMON\n'
        'CC_HERO = OUR HERO\n'
    }
    gui.wad_add_text_lump("DEHACKED", data);
end
----------------------------------------------------------------
BRUTALDOOM.WEAPONS =
{
	HandGrenade =
	{
	    id=299
	    pref=1
	    add_prob=0
	    --start_prob=10
	    rate=1
	    damage=70
	    splash={60,45,30,30,20,10}
	    attack="missile"
	    ammo="grenade"
	    per=1
	    rarity=2
	    give={ {ammo="grenade",count=1} }
	}
	GrenadeLauncher =
	{
	    id=298
	    level = 3
    	pref = 30
    	add_prob = 25
	    --start_prob=10
	    rate=1
	    damage=100
	    splash={60,45,30,30,20,10}
	    attack="missile"
	    ammo="rocket"
	    per=1
	    rarity=2
	    give={ {ammo="rocket",count=6} }
	}
	railgun =
	{
	    id=297
	    level = 5
    	pref = 30
    	add_prob = 15
	    --start_prob=10
	    rate=1
	    damage=1000
	    attack="missile"
	    ammo="cell"
	    per=1
	    rarity=2
	    give={ {ammo="cell",count=1} }
	}
        bfg10k =
	  {
	    id = 296
	    level = 8
	    pref = 15
	    add_prob = 20
	    mp_prob = 6
	    attack = "missile"
	    rate = 0.65  -- tweaked value, normally 0.8
	    damage = 300
	    splash = {70,70,70,70, 70,70,70,70, 70,70,70,70}
	    ammo = "cell"
	    per = 40
	    give = { {ammo="cell",count=40} }
	    bonus_ammo = 40
	  }
        pistol =
        {
            id = 320
            level = 1
            add_prob = 5
            pref = 5
            attack = "hitscan"
            rate = 1.8
            damage = 10
            ammo = "bullet"
            give = { {ammo="bullet",count=15} }
            per = 1
        }
        mg42 =
	{
	    id=321
	    level = 9
    	    pref = 1
    	    add_prob = 2
	    start_prob=0
	    rate=1
	    damage=1000
	    attack="hitscan"
	    ammo="clip" --not really but no existing ammo type
	    per=1
	    give={ {ammo="clip",count=600} }
	}
        --[[oldskoolplasma =
        {
            id = 322
            level = 6 --regular plasma rifle is 5
            pref = 30
            add_prob = 15
            attack = "missile"
            rate = 11
            damage = 20
            ammo = "cell"
            per = 1
            give = { {ammo="cell",count=40} }
            bonus_ammo = 40
        }]]--
}

BRUTALDOOM.AMMOS = --might not be neccessary
{
	grenade = { start_bonus = 1  }
}

BRUTALDOOM4.WEAPONS =
{
    D4Machinegun =
    {
        id = 314
        level = 3
        pref = 50
        add_prob = 0 --stupidly op, remove for now sort out later
        start_prob = 0
        attack = "hitscan"
        rate = 9.0 --chaingun is 8.5
        damage = 10
        ammo = "bullet"
        per = 1
        give = { {ammo="bullet",count=20} }
        bonus_ammo = 50
    }
    D4UpgradeStation = --treating this as a weapon works well enough
  {
    id = 315
    level = 4
    pref = 50
    add_prob = 0
    start_prob = 0
    attack = "hitscan"
    rate = 8.5
    damage = 10
    ammo = "bullet"
    per = 1
    give = { {ammo="bullet",count=20} }
    bonus_ammo = 10
  }
  D4GaussCannon =
  {
      id = 317
      level = 8
      pref = 10
      add_prob = 0
      mp_prob = 0
      attack = "missile"
      rate = 1
      damage = 50
      splash = { 50,20,5 }
      ammo = "cell"
      per = 15
      give = { {ammo="cell",count=50} }
      bonus_ammo = 40
  }
}


BRUTALDOOM.NICE_ITEMS =
{
	goggles = REMOVE_ME --seem to be broken in v20b and were never that useful in oblige maps anyway
}

BRUTALFRIENDS.NICE_ITEMS =
{
    invis = REMOVE_ME
    replacementinvis =
  {
    id = 318
    kind = "powerup"
    add_prob = 5
    secret_prob = 50 --vanilla is 70
    time_limit = 100
  }
  FriendTeleportBeacon =
  {
    id = 2024
    kind = "other"
    add_prob = 5
    secret_prob = 110
  }
}

BRUTALDOOM.PICKUPS =
{
  -- AMMO --

  grenade =
  {
    id = 300
    kind = "ammo"
    add_prob = 10
    give = { {ammo="grenade",count=5} } --actually it only gives 1 but this was the only way to stop Oblige flooding maps with them
  }
  Skel_Poster =
  {
      id = 323
      r = 36
      h = 128
      kind = "health"  --not ideal but it works
      rank = 1
      add_prob = 20
      give = { {health=10} }
      theme_prob = 200
  }
}


BRUTALDOOM.PLAYER_MODEL =
{
    doomer =
    {
        stats   = { health=0, bullet=0, shell=0, rocket=0, cell=0, grenade=0 }
        weapons = { fist=1, pistol=1, HandGrenade=1 }
    }
}

function BRUTALDOOM.setup()
    
BRUTALDOOM.setsecretexits();
    
local pistolpickupmessage = {
    "You got the Pistol! Woop-de-fucking-do!",
    "You got a tiny pistol! It'll look great next to your assault rifle!",
    "You got the Pistol! Hoo-fucking-ray!",
    "They say guns don't kill people, looking at this thing, I believe them",
    "The pen is mightier than the sword. And the sword is better than this.",
    "A standard issue UAC Pistol. Proof, if any more were needed, that the UAC are bastards who hate you.",
    "What the fuck is this?! And I don't mean that in a maybe it will be good if you find three secret keys way...",
    "Picked up a pistol that you really don't need!",
    "Picked up 15 bullets. Unfortunately they're inside this shitty pistol."
}
    
local data =
	{
		'//Brutal Doom additions\n'
		'#include "BRUMONS" \n'
		'//weapons\n\n'
		'actor HandGrenadesOblige : HandGrenades 299\n'
		'{\n'
                '//$Category "Weapons"\n'
                '//$EditorSprite "GRNDH0"\n'
                'Tag "Hand Grenades"\n'
		'}\n'
		'\n'
		'actor GrenadeAmmoOblige : GrenadeAmmo 300\n'
		'{\n'
                '//$Category "Ammunition"\n'
                '//$EditorSprite "GRNDH0"\n'
                'Tag "Grenade"\n'
		'}\n'
		'\n'
		'actor GrenadeBoxOblige : GrenadeBox 301\n'
		'{\n'
                '//$Category "Ammunition"\n'
                '//$EditorSprite "GRNDH0"\n'
                'Tag "Grenade Box"\n'
		'}\n'
		'\n'
		'actor GrenadeLauncherOblige : GrenadeLauncher 298\n'
		'{\n'
                '//$Category "Weapons"\n'
                '//$EditorSprite "GLAPA0"\n'
                'Tag "Grenade Launcher"\n'
		'Inventory.PickupMessage "You got the grenade launcher!"\n'
		'Weapon.SlotNumber 5\n'
                'States\n'
                '{\n', 
                generickickstate,
                '\n}\n'
		'\n}\n'
		'\n'
		'actor RailGunOblige : RailGun 297\n'
		'{\n'
                '//$Category "Weapons"\n'
                '//$EditorSprite "SRCGA0"\n'
                'Tag "Rail Gun"\n'
		'Weapon.SlotNumber 6\n'
                'States\n'
                '{\n'
                ,generickickstate,
                '\n}\n'
		'}\n'
		'\n'
		'actor BFG10KOblige : BFG10K 296\n'
		'{\n'
                '//$Category "Weapons"\n'
                '//$EditorSprite "bfg2A0"\n'
                'Tag "BFG10k"\n'
                'Weapon.SlotNumber 7\n'
                'States\n'
                '{\n'
                ,generickickstate,
                '\n}\n'
		'}\n'
		'\n'
                'ACTOR BrutalPistolOblige : Weapon 320\n'
                '{\n'
                '//$Category "Weapons"\n'
                'Tag "Shitty Pistol"\n'
                '	Weapon.AmmoUse1 0\n'
                '	Weapon.AmmoGive1 0\n'
                '	Weapon.AmmoUse2 0\n'
                '	Weapon.AmmoGive2 15\n'
                '	Weapon.AmmoType1 "Clip2"\n'
                '	Weapon.AmmoType2 "BDPistolAmmo"\n'
                '	Obituary "%k shot %o down with a pistol."\n'
                '       Weapon.SlotNumber 2\n'
                '    AttackSound "None"\n'
                '    Inventory.PickupSound "CLIPIN"\n'
                '	Inventory.Pickupmessage "',pistolpickupmessage[math.random(1,#pistolpickupmessage)],'"\n'
                '	+WEAPON.WIMPY_WEAPON\n'
                '    +WEAPON.NOAUTOAIM\n'
                '    +WEAPON.NOAUTOFIRE\n'
                '	+WEAPON.CHEATNOTWEAPON\n'
                '    +FORCEXYBILLBOARD\n'
                '	Scale 0.9\n'
                '	States\n'
                '	{\n'
                '       Steady:\n'
                '       TNT1 A 1\n'
                '       Goto Ready\n'
                '	PickUp:\n'
                '	TNT1 A 0\n'
                '	TNT1 A 0 A_Playsound("PICKUPONELINER")\n'
                '	TNT1 A 0\n'
                '	Stop\n'
                '	\n'
                '	\n'
                '	Flash:\n'
                '	TNT1 A 0\n'
                '	TNT1 A 0 A_JumpIfInventory("FlashlightAction", 1, "CheckFlashlight")\n'
                '	TNT1 A 1\n'
                '	TNT1 A 0 A_JumpIfInventory("IsFlashlightOn", 1, "FlashOn")\n'
                '	Goto Flash\n'
                '	FlashOn:\n'
                '	TNT1 A 0 A_FireCustomMissile("FlashlightProjectile", 0, 0, 0, 0, 0, 0)\n'
                '	TNT1 A 0 A_FireCustomMissile("FlashlightSource", 0, 0, 0, 0, 0, 0)\n'
                '	Goto Flash \n'
                '	CheckFlashLight:\n'
                '	TNT1 A 1\n'
                '	TNT1 A 0 A_TakeInventory("FlashlightAction")\n'
                '	TNT1 A 0 A_JumpIfInventory("IsFlashlightOn", 1, "TurnOffFlashlight")\n'
                '	TNT1 A 0 A_GiveInventory("IsFlashlightOn", 1)\n'
                '	Goto Flash\n'
                '	TurnOffFlashlight:\n'
                '	TNT1 A 0 A_TakeInventory("IsFlashlightOn", 1)\n'
                '	Goto Flash\n'
                '	\n'
                '	Ready:\n'
                '        //TNT1 A 1 A_JumpIfInventory("GoFatality", 1, "Steady")\n'
                '        TNT1 A 0 A_PlaySound("CLIPIN")\n'
                '        PISS AB 1\n'
                '        TNT1 AAAAAAAA 0\n'
                '        TNT1 A 0 //A_JumpIfInventory("BDPistolAmmo",1,2)\n'
                '        //Goto Reload\n'
                '        TNT1 AAAA 0\n'
                '\n'
                '        TNT1 A 0 A_JumpIfInventory("Kicking",1,"DoKick")\n'
                '        TNT1 A 0 A_JumpIfInventory("Taunting",1,"Taunt")\n'
                '		TNT1 A 0 A_JumpIfInventory("Salute1", 1, "Salute")\n'
                '		TNT1 A 0 A_JumpIfInventory("Salute2", 1, "Salute")\n'
                '        TNT1 A 0 A_JumpIfInventory("Reloading",1,"Reload")\n'
                '		TNT1 A 0 A_JumpIfInventory("TossGrenade",1,"TossGrenade")\n'
                '		PISG A 1 A_WeaponReady\n'
                '		TNT1 A 0 A_GunFlash\n'
                '		Goto Ready+9\n'
                '	Deselect:\n'
                '        PISS BA 1\n'
                '		TNT1 AAAAAAAAAAAAAAAAAA 0 A_Lower\n'
                '		TNT1 A 0 A_TakeInventory("TossGrenade", 1)\n'
                '		TNT1 A 1 A_Lower\n'
                '		Wait\n'
                '	Select:\n'
                '	\n'
                '	TNT1 A 0 A_Takeinventory("FistsSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("SawSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("ShotgunSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("SSGSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("MinigunSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("PlasmaGunSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("RocketLauncherSelected",1)\n'
                '    TNT1 A 0 A_Takeinventory("GrenadeLauncherSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("BFGSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("BFG10kSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("RailGunSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("SubMachineGunSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("RevenantLauncherSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("LostSoulSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("FlameCannonSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("HasBarrel",1)\n'
                '	\n'
                '		TNT1 A 0 A_Raise\n'
                '		Wait\n'
                '    Fire:\n'
                '        TNT1 A 0 A_JumpIfInventory("BDPistolAmmo",1,2)\n'
                '        Goto Reload\n'
                '        TNT1 AAAA 0\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_FireCustomMissile("YellowFlareSpawn",0,0,0,0)\n'
                '		PISF A 1 BRIGHT A_FireBullets (2, 2, -1, 11, "HitPuff")\n'
                '        RIFF A 0 A_FireCustomMissile("Tracer", random(-2,2), 0, -1, 0)\n'
                '		TNT1 A 0 A_FireCustomMissile("ShakeYourAssMinor", 0, 0, 0, 0)\n'
                '		TNT1 A 0 A_Takeinventory("BDPistolAmmo",1)\n'
                '        PISF B 1\n'
                '		TNT1 A 0 A_FireCustomMissile("RifleCaseSpawn",5,0,8,-9)\n'
                '		PISF C 1 A_WeaponReady(1)\n'
                '		PISG A 7 A_WeaponReady(1)\n'
                '		Goto Ready+6\n'
                '		\n'
                '	NoAmmo:\n'
                '	PISG A 1\n'
                '	Goto Ready+10\n'
                '	\n'
                '    Reload:\n'
                '		PISG A 1 A_WeaponReady\n'
                '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
                '		TNT1 A 0 A_Takeinventory("ADSmode",1)\n'
                '		TNT1 A 0 A_JumpIfInventory("BDPistolAmmo",15,26)\n'
                '\n'
                '        TNT1 A 0 A_JumpIfInventory("Clip2",1,3)\n'
                '        Goto NoAmmo\n'
                '        TNT1 AAA 0\n'
                '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
                '        TNT1 A 0 A_ZoomFactor(1.0)\n'
                '        TNT1 A 0 A_PlaySound("Reload")\n'
                '		TNT1 A 0 A_GiveInventory ("Pumping", 1)\n'
                '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
                '		RIFR C 0 A_FireCustomMissile("EmptyClip2Spawn",-5,0,8,-4)\n'
                '        PISR A 6 \n'
                '        PISR BCDEFG 3\n'
                '		\n'
                '		TNT1 AAAAAAAAAAAAAAAAAAAAAAAAAAA 0\n'
                '		TNT1 A 0 A_JumpIfInventory("BDPistolAmmo",15,15)\n'
                '		TNT1 A 0 A_JumpIfInventory("Clip2",1,3)\n'
                '		Goto Ready+6\n'
                '        TNT1 AAAAAA 0\n'
                '		TNT1 A 0 A_Giveinventory("BDPistolAmmo",1)\n'
                '		TNT1 A 0 A_Takeinventory("Clip2",1)\n'
                '		Goto Reload+28\n'
                '		\n'
                '		TNT1 AAAAAAAAAA 0\n'
                '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
                '        Goto Ready+6\n'
                '		TNT1 AAAA 0\n'
                '				TNT1 A 0 A_Takeinventory("Reloading",1)\n'
                '        Goto Ready+6\n'
                ' 	Spawn:\n'
                '		PIST A -1\n'
                '		Stop\n'
                '	Taunt:\n'
                '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
                '        TNT1 A 0 A_ZoomFactor(1.0)\n'
                '		TNT1 A 0 A_Takeinventory("Taunting",1)\n'
                '		TNT1 A 0 A_JumpIfInventory("RealismMode", 1, "CheckGrab")\n'
                '        TNT1 A 10\n'
                '		FUCK A 1\n'
                '		TNT1 A 0 BRIGHT A_FireCustomMissile("Taunter", 0, 0, -1, 0)\n'
                '		TNT1 A 0 BRIGHT A_FireCustomMissile("Taunter", -9, 0, -1, 0)\n'
                '		TNT1 A 0 BRIGHT A_FireCustomMissile("Taunter", 9, 0, -1, 0)\n'
                '        FUCK B 1 A_PlaySound("FUCK", 2)\n'
                '        FUCK CD 1 A_AlertMonsters\n'
                '		FUCK E 15 A_Takeinventory("Taunting",1)\n'
                '        FUCK DCBA 1\n'
                '        TNT1 A 10\n'
                '		Goto Ready\n'
                '	Salute:\n'
                '	    TNT1 A 0 SetPlayerProperty(0,1,0)\n'
                '		TNT1 A 0 A_ALertMonsters\n'
                '		SALU ABCDEDCDEDCDEDCBA 4\n'
                '		TNT1 A 0 A_TakeInventory("Salute1",1)\n'
                '		TNT1 A 0 A_TakeInventory("Salute2",1)\n'
                '		TNT1 A 0 SetPlayerProperty(0,0,0)\n'
                '		Goto Ready\n'
                '		\n'
                '	CheckGrab:\n'
                '	    TNT1 A 0 \n'
                '		TNT1 A 0 A_JumpIfTargetInLOS("CheckDistanceGrab")\n'
                '		Goto Ready+6\n'
                '	CheckDistanceGrab:\n'
                '	    TNT1 A 0 \n'
                '		TNT1 A 0 A_JumpIfCloser(100, "Grab")\n'
                '		Goto Ready+6\n'
                '	CheckIfCanGrab:\n'
                '	    TNT1 A 0 \n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("CanGrab", 1, "Grab")\n'
                '		Goto Ready+6	\n'
                '	Grab:\n'
                '	    PKUP ABC 2\n'
                '		TNT1 A 0 A_CustomMissile("PickupProjectile")\n'
                '		PKUP DEF 2\n'
                '		Goto Ready\n'
                '	TossGrenade:	\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_TakeInventory("TossGrenade", 1)\n'
                '		TNT1 A 0 A_JumpIfInventory("GrenadeAmmo", 1, 1)\n'
                '		Goto NoGrenade\n'
                '		GRTH ABCD 1\n'
                '		TNT1 A 0 A_GiveInventory("FiredGrenade", 1)\n'
                '		TNT1 A 0 A_PLaySound ("GRNPIN")\n'
                '		GRTH EEFG 1\n'
                '		TNT1 A 0 A_PLaySound ("GRNTOSS")\n'
                '		GRTH HI 1\n'
                '		TNT1 A 0 A_TakeInventory("GrenadeAmmo", 1)\n'
                '		TNT1 A 0 A_FireCustomMissile("HandGrenade", random(-2,2), 0, 0, 0, 0, 0)\n'
                '	    TNT1 A 0 A_TakeInventory("FiredGrenade", 1)\n'
                '		GRTH JKLM 1\n'
                '		TNT1 A 1 \n'
                '		TNT1 A 0 A_TakeInventory("TossGrenade", 1)\n'
                '		Goto Ready	\n'
                '	NoGrenade:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_Print("No Grenades Left.")\n'
                '		Goto REady+6	\n'
                ,generickickstate,
                '	}\n'
                '}\n'
                'actor MG42Oblige : HitlersBuzzsaw 321\n'
		'{\n'
                '//$Category "Weapons"\n'
                'Tag "MG42"\n'
                'Weapon.SlotNumber 4\n'
		'}\n'
                '\n'
                'actor OldSkoolPlasmaRifle : ClassicPlasmaRifle\n'
                '{\n'
                '   states\n'
                '   {\n'
                '   Steady:\n'
                '   Ready:\n'
                '        TNT1 A 0 A_JumpIfInventory("TossGrenade",1,"TossGrenade")\n'
                '        TNT1 A 0 A_JumpIfInventory("Kicking",1,"DoKick")\n'
                '        3LSG A 1 A_WeaponReady\n'
                '        Loop\n'
                '   Select:\n'
                '        TNT1 A 0 A_Giveinventory("HasPlasmaWeapon",1)\n'
                '        3LSG A 1 A_Raise\n'
                '        Loop\n'
                '    Deselect:\n'
                '        TNT1 A 0 A_Takeinventory("HasPlasmaWeapon",1)\n'
                '        3LSG A 1 A_Lower\n'
                '        Loop\n',
                generickickstate,
                genericgrenadestate,
                '   Fire:\n'
                '    TNT1 A 0 A_FireCustomMissile("OldSkoolPlasmaBall", 0, 1, 0, -10)\n'
                '    3LSF EF 1 BRIGHT\n'
                '    3KPL A 1\n'
                '    TNT1 A 0 A_Refire\n'
                '    3KPL ABCDEFF 1\n'
                '    3KPL G 6\n'
                '    3KPL FFEDCBA 1\n'
                '    Goto Ready\n'
                '   }\n'
                '}\n'
                '\n'
                'actor OldSkoolPlasmaBall : ClassicPlasmaBall\n'
                '{\n'
                    'Decal "SmallerScorch"\n'
                '}\n'
                'actor LethalZorch : ClassicPlasmaBall\n'
                '{\n'
                'Translation "192:207=16:31"\n'
                'Decal "SmallerScorch"\n'
                'States\n'
                '{\n'
                '	Spawn2:\n'
                '		PLSS ABAB 1 Bright A_SpawnItem("RedFlareSmall")\n'
                '		Loop\n'
                '	Death:\n'
                '	    TNT1 A 0\n'
                '		TNT1 A 0 A_CustomMissile ("zorchfire", 0, 0, random (0, 360), 2, random (0, 360))\n'
                '		TNT1 AAAAA 0 A_CustomMissile ("zorchparticle", 0, 0, random (0, 360), 2, random (0, 360))\n'
                '		PLSE ABC 2 BRIGHT A_SpawnItem("RedFlare")\n'
                '		PLSE DE 2 Bright A_SpawnItem("RedFlareSmall")\n'
                '		Stop\n'
                '}\n'
                '}\n'
                'actor zorchfire : BluePlasmaFire\n'
                '{\n'
                'Translation "192:207=16:31"\n'
                '}\n'
                'actor zorchparticle : BluePlasmaParticle\n'
                '{\n'
                'Translation "192:207=16:31"\n'
                '}\n'
                '\n'
                'Actor UnrestrictedZorcher : OldSkoolPlasmaRifle\n'
                '{\n'
                'Inventory.Pickupmessage "Set zorchers to kill! (Slot 6)"\n'
                'States\n'
                '	{\n'
                '	Ready:\n'
                '		ZORC A 1 A_WeaponReady\n'
                '		Loop\n'
                '	Deselect:\n'
                '                TNT1 A 0 A_Takeinventory("HasPlasmaWeapon",1)\n'
                '		ZORC A 1 A_Lower\n'
                '		Loop\n'
                '	Select:\n'
                '                TNT1 A 0 A_Giveinventory("HasPlasmaWeapon",1)\n'
                '		ZORC A 1 A_Raise\n'
                '		Loop\n'
                '	Fire:\n'
                '		TNT1 A 0 A_FireCustomMissile("LethalZorch", 0, 1, 0, -10)\n'
                '		ZORC CD 1 BRIGHT\n'
                '		ZORC CD 1\n'
                '		TNT1 A 0 A_Refire\n'
                '		ZORC CDAB 1\n'
                '		ZORC AB 6\n'
                '		ZORC A 1\n'
                '		Goto Ready\n'
                '	Spawn:\n'
                '		ZORP A -1\n'
                '		Stop\n'
                '	}\n'
                '}\n'
                '\n'
                'actor zorcheronground 322\n'
                '{\n'
                '//$Category "Weapons"\n'
                '//$EditorSprite "ZORPA0"\n'
                'Tag "93 series Plasma Rifle/Unrestricted Zorcher"\n'
                'States\n'
                '{\n'
                    'Spawn:\n'
                    'TNT1 A 0 A_CheckProximity("Chexspawn","ObligeFlemoid1",32767,1,CPXF_NOZ | CPXF_COUNTDEAD)\n'
                    'TNT1 A 0 A_CheckProximity("Chexspawn","ObligeFlemoid2",32767,1,CPXF_NOZ | CPXF_COUNTDEAD)\n'
                    'TNT1 A 0 A_CheckProximity("Chexspawn","ObligeFlemoid3",32767,1,CPXF_NOZ | CPXF_COUNTDEAD)\n'
                    'TNT1 A 0 A_CheckProximity("Chexspawn","ObligeQuadrumpus",32767,1,CPXF_NOZ | CPXF_COUNTDEAD)\n'
                    'TNT1 A 1\n'
                    'TNT1 A 0 A_SpawnItem("OldSkoolPlasmaRifle",0,0)\n'
                    'stop\n'
                    'Chexspawn:\n'
                    'TNT1 A 0 A_SpawnItem("UnrestrictedZorcher",0,0)\n'
                    'stop\n'
                '}\n'
                '}\n'
                '\n'
        'actor SkelPosterDecal\n'
		'{\n'
		  'Radius 2\n'
		  'Height 2\n'
		  'Damage 0\n'
		  'Speed 100\n'
		  'Decal Skel_Poster\n'
		  'Projectile\n'
		  '+RIPPER\n'
		  '+BLOODLESSIMPACT\n'
		  'States\n'
		  '{\n'
		  'Spawn:\n'
		    'TNT1 A 1\n'
		    'goto Death\n' --only lasting 1 tic give it enough time to hit a nearby wall but not enough to cross a room (and hit a pillar)
		  'Death:\n'
		    'TNT1 A 1\n'
		    'stop\n'
		  '}\n'
		'}\n'
		'actor SkelPosterPainter 323\n'
		'{\n'
		  '//$Category decals\n'
		  'Radius 36\n'
		  'Height 2\n'
		  '+NOINTERACTION\n'
		  '+NOGRAVITY\n'
		  'States\n'
		  '{\n'
		  'Spawn:\n'
			'TNT1 A 0 A_SpawnItem("Stimpack",0,0)\n'
			'TNT1 A 0 A_JumpIf(ceilingz-floorz<height,"End")\n'
			'TNT1 A 0 A_Jump(256,"Angle1","Angle2","Angle3","Angle4")\n'
			'Goto Paint\n'
		  'Angle1:\n'
		    	'TNT1 A 0 A_SetAngle(0)\n'
		    	'Goto Paint\n'
		  'Angle2:\n'
		    	'TNT1 A 0 A_SetAngle(90)\n'
		    	'Goto Paint\n'
		  'Angle3:\n'
		    	'TNT1 A 0 A_SetAngle(180)\n'
		    	'Goto Paint\n'
		  'Angle4:\n'
		    	'TNT1 A 0 A_SetAngle(270)\n'
		    	'Goto Paint\n'
		  'Paint:\n'
		    	'TNT1 A 1 A_SpawnItemEx ("SkelPosterDecal", 0, 0, 75, 100, 0, 0, 0, 0, 0)\n'
		    	'Goto End\n'
		  'End:\n'
			'TNT1 A -1\n'
		    	'Stop\n'
		  '}\n'
		'}\n',
		chexkeys
		
	}
    gui.wad_add_text_lump("DECORATE", data);

local confdata =
	{
	'setslot 1 Chain_Saw ClassicModernSaw Melee_Attacks ClassicFist ClassicSaw\n'
	'setslot 2 DualRifles Rifle  BrutalPistol ClassicPistol MP40 BrutalPistolOblige\n'
	'setslot 3 Shot_Gun SSG ClassicShotgun ClassicSSG\n'
	'setslot 4 MiniGun ClassicChaingun HitlersBuzzsaw MG42Oblige D4Machinegun\n'
	'setslot 5 GrenadeLauncher Rocket_Launcher ClassicRocketLauncher GrenadeLauncherOblige\n'
	'setslot 6 RailGun DualPlasmaRifles Plasma_Gun ClassicPlasmaRifle OldSkoolPlasmaRifle RailGunOblige UnrestrictedZorcher\n'
	'setslot 7 BFG10k BIG_FUCKING_GUN VanillaBFG9000 BFG10KOblige D4GaussCannon\n'
	'setslot 8 HellishMissileLauncher\n'
	'setslot 9 FlameCannon\n'
	'setslot 0 HandGrenades HandGrenadesOblige\n'

	}
    gui.wad_add_text_lump("KEYCONF", confdata);

end

function BRUTALDOOM.flem_nukage()
	gui.wad_merge_sections("brutaloblige/flem.wad")
	local flemdata =
	{
	'flat SNOT1\n'
		'pic SNOT1 tics 5\n'
		'pic SNOT2 tics 5\n'
		'pic SNOT3 tics 5\n'
	'flat SNOT4\n'
		'pic SNOT4 tics 4\n'
		'pic SNOT5 tics 4\n'
		'pic SNOT6 tics 4\n'
		'pic SNOT7 tics 4\n'
	'texture SNTFL1\n'
		'pic SNTFL1 tics 4\n'
		'pic SNTFL2 tics 4\n'
		'pic SNTFL3 tics 4\n'
	'// CQ3 Animated Sky\n'
	'texture CHEXSKY3\n'
		'pic CHEXSKY3 tics 3\n'
		'pic CJSKY3B tics 3\n'
		'pic CJSKY3C tics 3\n'
		'pic CJSKY3D tics 3\n'
		'pic CJSKY3E tics 3\n'
		'pic CJSKY3F tics 3\n'
		'pic CJSKY3G tics 3\n'
		'pic CJSKY3H tics 3\n'
	}
gui.wad_add_text_lump("ANIMDEFS", flemdata);
	flemdata =
	{
		'splash 	Flem\n'
		'{\n'
		 'smallclass 	nukageSplashBase\n'
		 'smallclip		6\n'
		 'baseclass		nukageSplashBase\n'
		 'chunkclass	    sludgechunk\n'
		 'chunkxvelshift	8\n'
		 'chunkyvelshift	8\n'
		 'chunkzvelshift	6\n'
		 'chunkbasezvel	2\n'
		 'sound		world/lavasizzle\n'
		 'NoAlert\n'
		'}\n'
		'\n'
		'terrain	 Flem\n'
		'{\n'
		 'splash 	Flem\n'
		 'footclip	 6\n'
		 'liquid\n'
		'}\n'
		'\n'
		'floor SNOT1 Flem\n'
		'floor SNOT2 Flem\n'
		'floor SNOT3 Flem\n'
		'floor SNOT4 Flem\n'
		'floor SNOT5 Flem\n'
		'floor SNOT6 Flem\n'
		'floor SNOT7 Flem\n'
	}
gui.wad_add_text_lump("TERRAIN", flemdata);
end

OB_GAMES["brutaldoom"] =
{
  label = "Brutal Doom"

  extends = "doom2"

  format = "doom"

  engine = { boom=0, gzdoom=1, zandronum=0 }

  tables =
  {
    BRUTALDOOM
    BRUTALDOOM4
  }

  hooks =
  {
    setup       = BRUTALDOOM.setup
    get_levels  = BRUTALDOOM.get_levels
    all_done	= BRUTALDOOM.all_done
  }
}

OB_GAMES["brutality"] =
{
  label = "Project Brutality"

  extends = "brutaldoom"

  format = "doom"

  tables =
  {
    BRUTALITY
  }

  hooks =
  {
    setup = BRUTALITY.setup
    all_done = BRUTALITY.all_done
  }
}
  
OB_MODULES["brutalfriends"] =
{
  label = "Brutal Friends"

  game = { brutaldoom=1 }
  playmode = { sp=1, coop=1 }
  
  hooks =
  {
    setup = BRUTALFRIENDS.setup
  }

  tables =
  {
    BRUTALFRIENDS
  }
}

OB_MODULES["brutaltweaks"] =
{
  label = "Brutal Doom Tweaks"

  game = { brutaldoom=1, brutal64=1 }
  playmode = { sp=1, coop=1 }
  
  tables =
  {
      DOOMMETAL
  }
  
  hooks =
  {
    setup = DOOMMETAL.setup
  }
  options =
  {
      iwad =
      {
          label="iwad"
          choices=BRUTALDOOM.IWADS
          tooltip="Sets which iwad to load Brutal Doom with"
      }
      musicpreset =
      {
          label="Music"
          choices=BRUTALDOOM.musicpresets
      }
      skygenerator =
      {
          label="Additional Skies"
          choices=BRUTALDOOM.YES_NO
          tooltip="Generates an extra sky texture for each theme. The will be a 50/50 split between levels of that theme which use the original and those which use this new texture."
      }
  }
}


---Sky Generator---
BRUTALDOOM.sky_colormaps =
{
  -- star colors --

  STARS =
  {
    8, 7, 6, 5,
    111, 109, 107, 104, 101,
    98, 95, 91, 87, 83, 4
  }

  -- cloud colors --

  GREY_CLOUDS =
  {
    106, 104, 102, 100,
    98, 96, 94, 92, 90,
    88, 86, 84, 82, 80
  }

  DARK_CLOUDS =
  {
    7, 6, 5,
    110, 109, 108, 107, 106,
    105, 104, 103, 102, 101
  }

  BLUE_CLOUDS =
  {
    245, 245, 244, 244, 243, 242, 241,
    240, 206, 205, 204, 204, 203, 203
  }

  HELL_CLOUDS =
  {
    188, 185, 184, 183, 182, 181, 180,
    179, 178, 177, 176, 175, 174, 173
  }

  ORANGE_CLOUDS =
  {
    234, 232, 222, 220, 218, 216, 214, 211
  }

  HELLISH_CLOUDS =
  {
    0, 0, 0, 0, 0, 47, 191, 190, 191, 47, 0, 0
  }

  BROWN_CLOUDS =
  {
     2, 1,
     79, 78, 77, 76, 75, 74, 73,
     72, 71, 70, 69, 67, 66, 65
  }

  BROWNISH_CLOUDS =
  {
    239, 238, 237, 236, 143, 142, 141,
    140, 139, 138, 137, 136, 135, 134,
    133, 130, 129, 128
  }

  YELLOW_CLOUDS =
  {
    167, 166, 165, 164, 163, 162,
    161, 160, 228, 227, 225
  }

  GREEN_CLOUDS =
  {
    127, 126, 125, 124, 123, 122, 121,
    120, 119, 118, 117, 115, 113, 112
  }

  JADE_CLOUDS =
  {
    12, 11, 10, 9,
    159, 158, 157, 156, 155, 154, 153, 152
  }

  DARKRED_CLOUDS =
  {
     47, 46, 45, 44, 43, 42, 41, 40, 39, 37, 36, 34
  }

  PEACH_CLOUDS =
  {
     68, 66, 64, 62, 60, 58, 57
  }

  WHITE_CLOUDS =
  {
     99, 98, 97, 96, 95, 94, 93,
     92, 91, 90, 89, 88, 87, 86,
     85, 84, 83, 81
  }

  SKY_CLOUDS =
  {
    194, 195, 196, 197, 199, 201
  }

  PURPLE_CLOUDS =
  {
    254, 253, 252, 251, 250, 251, 252, 253, 254
  }

  RAINBOW_CLOUDS =
  {
    191, 186, 181, 176,
    231, 161, 164, 167,
    242, 207, 204, 199,
    115, 119, 123, 127
  }

  BLACK_N_WHITE =
  {
    0, 4, 0, 4, 0, 4, 0, 4
  }

  -- hill colors --

  BLACK_HILLS =
  {
    0, 0, 0
  }

  BROWN_HILLS =
  {
    0, 2, 1, 79, 77, 75, 73, 70, 67, 64
  }

  TAN_HILLS =
  {
    239, 237, 143, 140, 136, 132, 128
  }

  GREEN_HILLS =
  {
    0, 7,
    127, 126, 125, 124, 123,
    122, 120, 118, 116, 113
  }

  DARKGREEN_HILLS =
  {
    0, 7, 127, 126, 125, 124
  }

  HELL_HILLS =
  {
    0, 6, 47, 45, 43, 41, 39, 37, 35, 33
  }

  DARKBROWN_HILLS =
  {
    8, 7, 2, 1, 79, 78, 77, 76, 75
  }

  GREENISH_HILLS =
  {
    0, 7, 12, 11, 10, 9, 15, 14, 13,
    159, 158, 157, 156, 155, 154
  }
}


BRUTALDOOM.sky_themes =
{
  urban =
  {
    clouds =
    {
      SKY_CLOUDS = 150
      BLUE_CLOUDS = 80
      WHITE_CLOUDS = 80
      GREY_CLOUDS = 80
      DARK_CLOUDS = 50

      BROWN_CLOUDS = 40
      BROWNISH_CLOUDS = 40
      PEACH_CLOUDS = 40
      GREEN_CLOUDS = 20
      JADE_CLOUDS = 20
    }

    hills =
    {
      TAN_HILLS = 30
      BROWN_HILLS = 50
      DARKBROWN_HILLS = 50
      GREENISH_HILLS = 30
      BLACK_HILLS = 5
    }

    dark_hills =
    {
      DARKGREEN_HILLS = 50
      DARKBROWN_HILLS = 50
    }
  }


  hell =
  {
    clouds =
    {
      HELL_CLOUDS = 70
      HELLISH_CLOUDS = 70
      DARKRED_CLOUDS = 50
      YELLOW_CLOUDS = 30
      ORANGE_CLOUDS = 30
    }

    hills =
    {
      HELL_HILLS = 50
      BROWN_HILLS = 50
      DARKBROWN_HILLS = 50
      BLACK_HILLS = 50
    }

    dark_hills =
    {
      HELL_HILLS = 50
      DARKBROWN_HILLS = 20
    }
  }


  psycho =
  {
    clouds =
    {
      PURPLE_CLOUDS  = 90
      YELLOW_CLOUDS  = 70
      HELLISH_CLOUDS = 20
      RAINBOW_CLOUDS = 10

      GREEN_CLOUDS = 70
      BLUE_CLOUDS  = 70
      WHITE_CLOUDS = 30
      GREY_CLOUDS  = 30
    }

    hills =
    {
      BLUE_CLOUDS = 50
      GREEN_HILLS = 50
      RAINBOW_CLOUDS = 50
      PURPLE_CLOUDS = 30
      YELLOW_CLOUDS = 30
      ORANGE_CLOUDS = 30
      WHITE_CLOUDS = 30
      HELLISH_CLOUDS = 20
    }

    -- no dark_hills
  }
}


function BRUTALDOOM.generate_skies()

  -- select episode for the starry starry night
  local starry_ep = rand.irange(1, # GAME.episodes)

  if rand.odds(37) then
    starry_ep = -7
  end

  -- determine themes for each episode
  local theme_list = { "urban", "urban", "hell", "hell" }

  -- when user has picked a specific theme, honor it
  if OB_CONFIG.theme == "hell" then
    theme_list[1] = "hell"
    theme_list[2] = "hell"
  elseif OB_CONFIG.theme == "urban" then
    theme_list[3] = "urban"
    theme_list[4] = "urban"
  elseif OB_CONFIG.theme == "tech" then
    theme_list[3] = "urban"
  end

  rand.shuffle(theme_list)

  -- copy all theme tables [so we can safely modify them]
  local all_themes = table.deep_copy(BRUTALDOOM.sky_themes)


  gui.printf("\nBrutal Sky generator:\n");

  each EPI in GAME.episodes do
    assert(EPI.sky_patch)
    assert(_index <= #theme_list)

    local seed = int(gui.random() * 1000000)

    local squish = rand.index_by_probs({ 1, 4, 2 })

    local is_starry = (_index == starry_ep)


    local theme_name = theme_list[_index]

    if OB_CONFIG.theme == "original" then
      if EPI.theme == "hell" or EPI.theme == "flesh" then
        theme_name = "hell"
      else
        theme_name = "urban"
      end

    elseif OB_CONFIG.theme == "psycho" then
      theme_name = "psycho"
    end

    local theme = all_themes[theme_name]

    assert(theme)
    assert(theme.clouds)
    assert(theme.hills)

    local hill_tab = theme.hills


    gui.fsky_create(256, 128, 0)

    if is_starry then

      --- Stars ---

      local name = "STARS"

      local colormap = BRUTALDOOM.sky_colormaps[name]
      if not colormap then
        error("Brutal Sky Generator: unknown colormap: " .. tostring(name))
      end

      gui.printf("  %d = %s\n", _index, name)

      gui.set_colormap(1, colormap)
      gui.fsky_add_stars({ seed=seed, colmap=1 })

      if theme.dark_hills then
        hill_tab = theme.dark_hills
      end

      EPI.dark_prob = 100  -- always, for flyingdeath

    else
      --- Clouds ---

      local name = rand.key_by_probs(theme.clouds)
      -- don't use same one again
      theme.clouds[name] = nil

      local colormap = BRUTALDOOM.sky_colormaps[name]
      if not colormap then
        error("Brutal Sky Generator: unknown colormap: " .. tostring(name))
      end

      gui.printf("  %d = %s\n", _index, name)

      gui.set_colormap(1, colormap)
      gui.fsky_add_clouds({ seed=seed, colmap=1, squish=squish })

      EPI.dark_prob = 10
    end


    if rand.odds(80) then

      --- Hills ---

      local name = rand.key_by_probs(hill_tab)
      -- don't use same one again
      hill_tab[name] = hill_tab[name] / 1000

      local colormap = BRUTALDOOM.sky_colormaps[name]
      if not colormap then
        error("Brutal Sky Generator: unknown colormap: " .. tostring(name))
      end

      gui.printf("    + %s\n", name)

      gui.set_colormap(2, colormap)
      gui.fsky_add_hills({ seed=seed+1, colmap=2, max_h=0.6 })
    end

    gui.fsky_write(EPI.sky_patch .. 'B')

    if EPI.sky_patch2 then gui.fsky_write(EPI.sky_patch2 .. 'B') end
    if EPI.sky_patch3 then gui.fsky_write(EPI.sky_patch3 .. 'B') end
    if EPI.sky_patch4 then gui.fsky_write(EPI.sky_patch4 .. 'B') end
  end

  gui.printf("\n")
end


--------------------------------------------
        --More functions--
--------------------------------------------

function merge(t1, t2)
    for k, v in pairs(t2) do
        if (type(v) == "table") and (type(t1[k] or false) == "table") then
            merge(t1[k], t2[k])
        else
            t1[k] = v
        end
    end
    return t1
end

function combine(t1, t2)
    for k,v in pairs(t2) do table.insert(t1, v) end
end

function check_table_exists(tablename)
	if type(tablename) == "table" then
	  return true
	else
	  return false
	end
end

function search_table(master, target) --target is a string
    for k,v in next, master do
        if type(v)=="table" and v[target] then return true end
    end
end