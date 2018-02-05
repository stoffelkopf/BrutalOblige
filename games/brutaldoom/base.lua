gui.set_import_dir("games/doom")
gui.import("base")
gui.set_import_dir("games/brutaldoom")

math.randomseed( os.time() ) --get some randomisation
math.random()
math.random()

secretexit1 = math.random(1,9)
secretexit2 = math.random(11,19)
secretexit3 = math.random(20,29)

local boss1 = "cyberdemon"
local boss2 = "mastermind"
        
puristrailgunreloadDecorate = [[
    RAIF B 6 //A_CheckForReload(4, "Reloaded")
    ]]

BRUTALDOOM = { }

BRUTALITY = { }

BRUTALDOOM4 = { }

BRUTALFRIENDS = { }

DOOMMETAL = { }

BRUTALDOOM.SECRET_EXITS = { }

STARTERPACK = { }

gui.import("brutaldoom/BrutalDoomMaterials") --this all has to come after the tables are declared
gui.import("brutaldoom/BrutalDoomThemes")
gui.import("brutaldoom/BrutalDoomPickups")
gui.import("brutaldoom/BrutalDoomEntities")
gui.import("hereticbrutal")
gui.import("brutality")
gui.import("starterpack")
gui.import("UniversalIntermissionCompat/BrutalINTM")
gui.import("ExtraKeysCompat/BrutalExtraKeys")
gui.import("functions/tablecontains")
gui.import("functions/tablemerge")
gui.import("functions/filereading")
--brutal friends imported at the end so it can inherit monster probs from the easy marine

BRUTALDOOM.YES_NO =
{
    "yes", "Yes"
    "no", "No"
}

BRUTALDOOM.VERSIONS = 
{
	"brutalv20b.pk3",	"V20b"
    "bd21test-jan02.pk3",    "V21Beta"
}

BRUTALDOOM.PARAMETERS =
{
	doom_metal = false
    starterpack = false
    skygenerator = false
	brutalfriends = false
    iwad = 'Doom2.wad'
    musicpreset = 'iwad'
	brutalversion = "bd21test-jan02.pk3"
	brutalityversion = "Project Brutality 2.03.pk3"
	usingui = false
    usingextrakeys = false
    playerclass = "Doomer"
    puristrailgunreload = "None"
}

BRUTALDOOM.IWADS =
{
    "Doom2.wad",    "Doom 2"
    "Tnt.wad",      "TNT:Eviloution"
    "Plutonia.wad", "Plutonia"
    "doom_complete.pk3",    "Doom Complete"
    "freedoom2.wad",    "Freedoom 2"
	--"heretic.wad",	"Heretic" --Nowhere near ready yet!
}

BRUTALDOOM.PLAYERCLASSES =
{
    "Doomer",   "Modern"
    "Purist",   "Classic"
}

BRUTALDOOM.PURISTRAILGUNRELOADOPTIONS =
{
    "Skulltag",   "Skulltag"
    "None",   "None"
}

gui.import("brutaldoom/BrutalDoomMonsters")


--decorate definition
function BRUTALDOOM.decorate()
    gui.wad_insert_file("brutaloblige/decorates/Decorate.dec","DECORATE");
    gui.wad_insert_file("brutaloblige/decorates/BrutalMonsters.dec","BRUMONS");
    gui.wad_insert_file("brutaloblige/decorates/D4Caco.dec","D4CACO");
    gui.wad_insert_file("brutaloblige/decorates/BrutalStealthMonsters.dec","BOSTELTH");
	gui.wad_insert_file("brutaloblige/decorates/BrutalWeapons.dec","BRUWEPS");
    gui.wad_insert_file("brutaloblige/decorates/BrutalPickups.dec","BRUPUPS");
    gui.wad_insert_file("brutaloblige/decorates/ChexKeys.dec","CHEXKEYS");
    gui.wad_insert_file("brutaloblige/decorates/ChexProps.dec","CHEXPROP");
	gui.wad_insert_file("brutaloblige/decorates/DarkImp.dec","DARKIMPD");
	gui.wad_insert_file("brutaloblige/zscript/zscript","ZSCRIPT");
    gui.wad_insert_file("brutaloblige/zscript/wolfmons.zscript","WOLFMONS");
    gui.wad_insert_file("brutaloblige/TRNSLATE","TRNSLATE");
end

function BRUTALDOOM4.caco()
	--gui.wad_insert_file("brutaloblige/decorates/D4Caco.dec","DECORATE");
end

function BRUTALDOOM.epic()
  gui.wad_merge_sections("brutaloblige/brutaloblige.wad");
  gui.wad_insert_file("brutaloblige/SNDINFO","SNDINFO");
  gui.wad_insert_file("brutaloblige/gldefs/epic2alien.gl","GLDEFS");
  gui.wad_insert_file("brutaloblige/sounds/DSGSSIT","DSGSSIT");
  gui.wad_insert_file("brutaloblige/sounds/DSGSDTH","DSGSDTH");
end

function BRUTALDOOM.castcalldecorate()
	gui.wad_insert_file("brutaloblige/decorates/CastCall/BrutalCastCall.dec","DECORATE");
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

gui.import("brutaldoom/BrutalDoomLevels")

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

gui.import("brutaldoom/BrutalDoomMapinfo")

function BRUTALDOOM.createkeyconf()
local confdata =
	{
	'addslot 5 SkulltagGrenadeLauncher\n'
	'addslot 6 SkulltagRailGun PuristRailGun\n'
    }    
    
    gui.wad_add_text_lump("KEYCONF", confdata);
end

function BRUTALDOOM.respectplayerclass()
    if BRUTALDOOM.PARAMETERS.playerclass == "Purist" then
        BRUTALDOOM.WEAPONS.pistol.add_prob = 0
    end
end

function BRUTALDOOM.all_done()
  BRUTALDOOM.puristrailgundecorate();
  BRUTALDOOM.decorate();
  BRUTALDOOM4.caco();
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
  if BRUTALDOOM.PARAMETERS.usingui == true then
	BRUTALDOOM.createintm();
  end
  BRUTALDOOM.create_mapinfo();
  --BRUTALDOOM.createkeyconf();
  BRUTALDOOM.castcalldecorate();
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
gui.import("brutaldoom/BrutalDoomWeapons");




BRUTALDOOM.PLAYER_MODEL =
{
    doomguy = REMOVE_ME
    PistolStart =
    {
        stats   = { health=100, bullet=0, shell=0, rocket=0, cell=0, grenade=2, clip1=46 }
        weapons = { fist=1, bdpistol=1, HandGrenade=1 }
    }
    RifleStart =
    {
        stats   = { health=100, bullet=61, shell=0, rocket=0, cell=0, grenade=2, clip1=0 }
        weapons = { fist=1, AssaultRifle=1, HandGrenade=1 }
    }
    TacticalMode =
    {
        stats   = { health=100, bullet=61, shell=0, rocket=0, cell=0, grenade=1, clip1=16 }
        weapons = { fist=1, bdpistol=1, AssaultRifle=1, HandGrenade=1 }
    }
}

function BRUTALDOOM.setup()
    gui.printf("Universal Intermission check:\n");
    BRUTALDOOM.checkuintm();
    
    gui.printf("ExtraKeys check:\n");
    BRUTALDOOM.checkextrakeys();
        
    BRUTALDOOM.setsecretexits();
end

function BRUTALDOOM.puristrailgundecorate()
    if BRUTALDOOM.PARAMETERS.puristrailgunreload == "Skulltag" then
        PuristRailGunReloadDecorate = 'RAIF B 6 A_CheckForReload(4, "Reloaded")\n'
    elseif BRUTALDOOM.PARAMETERS.puristrailgunreload == "None" then
        PuristRailGunReloadDecorate = 'RAIF B 6 A_Jump(256, "Reloaded")\n'
    elseif BRUTALDOOM.PARAMETERS.puristrailgunreload == "Every" then
        PuristRailGunReloadDecorate = 'RAIF B 6\n'
    end

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
        'ACTOR PuristRailgun : ClassicWeapon\n'
        '{\n'
        '  SpawnID 164\n'
        '  Radius 20\n'
        '  Height 16\n'
        '  Weapon.Selectionorder 100\n'
        '  Weapon.AmmoUse 10\n'
        '  Weapon.AmmoGive 40\n'
        '  Weapon.AmmoType "Cell"\n'
        "  Weapon.SlotNumber 6 // This line isn't in skulltag.pk3, which instead defines the slot directly in DoomPlayer\n"
        '  Inventory.Pickupmessage "You got the railgun!"\n'
        '  Obituary "%o was railed by %k."\n'
        '  States\n'
        '  {\n'
        '  Ready:\n'
        '    RAIL A 1 A_WeaponReady\n'
        '    Loop\n'
        '  Deselect:\n'
        '    RAIL A 1 A_Lower\n'
        '    Loop\n'
        '  Select:\n'
        '    RAIL A 1 A_Raise\n'
        '    Loop\n'
        '  Fire:\n'
        '    RAIF A 12 A_FireRailgun\n'
        ,PuristRailGunReloadDecorate,
        '    RAIR ABCDEDCB 6\n'
        '    RAIR A 6 A_ResetReloadCounter\n'
        '  Reloaded:\n'
        '    RAIL A 6\n'
        '    RAIL M 0 A_ReFire\n'
        '    Goto Ready\n'
        '  Flash:\n'
        '    TNT1 A 5 bright A_Light1\n'
        '    TNT1 A 5 bright A_Light2\n'
        '    TNT1 A 0 bright A_Light0\n'
        '    Goto LightDone\n'
        '  Spawn:\n'
        '    SRCG A -1\n'
        '    Stop\n'
        '  }\n'
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
		
	}
    gui.wad_add_text_lump("DECORATE", data);

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
  
  game_dir = "brutaldoom"

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

  --extends = "brutaldoom"
  extends = "doom2"

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

OB_MODULES["brutaltweaks"] =
{
  label = "Brutal Doom Tweaks"
  
  side = "left"

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
      puristrailgunreload =
      {
          label="Purist Railgun\n Reloading"
          choices=BRUTALDOOM.PURISTRAILGUNRELOADOPTIONS
      }
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
        --Import Expansions etc--
--------------------------------------------

gui.import("BrutalExpansions/brutalfriends")

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
