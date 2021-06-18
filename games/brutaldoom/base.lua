	gui.set_import_dir("games/doom")
gui.import("base")
gui.set_import_dir("games/brutaldoom")


math.randomseed( os.time() ) --get some randomisation
math.random()
math.random()

secretexit1 = math.random(1,10)
secretexit2 = math.random(12,19)
if secretexit2 == 15 then
	while secretexit2 == 15 do
		secretexit2 = math.random(12,19)
		gui.printf('Rerolling Secret Exit 2 (15)\n')
	end
end
secretexit3 = math.random(21,29)

local boss1 = "cyberdemon"
local boss2 = "mastermind"
        
puristrailgunreloadDecorate = [[
    RAIF B 6 //A_CheckForReload(4, "Reloaded")
    ]]

BRUTALDOOM = { }

BRUTALDOOM.SECRET_EXITS = { }

 --this all has to come after the tables are declared
gui.import("DebugFunctions")
gui.import("brutaldoom/BrutalDoomMaterials")
gui.import("brutaldoom/BrutalDoomThemes")
gui.import("brutaldoom/BrutalDoomPickups")
gui.import("brutaldoom/BrutalDoomEntities")
gui.import("brutaldoom/BrutalDoomMusic")
gui.import("brutaldoom/BrutalDoomGL_Data")
gui.import("UniversalIntermissionCompat/BrutalINTM")
gui.import("REALM667Compat/REALM667")
gui.import("functions/tablecontains")
gui.import("functions/tablemerge")
gui.import("functions/filereading")

BRUTALDOOM.VERSIONS = 
{
    "brutalv21.pk3",    "V21"
}

BRUTALDOOM.PARAMETERS =
{
    modversion = 'dev version following v2.0.1'
    brutalversion = "brutalv21.pk3"
    usingui = false
	realm667 = false
    mini_mastermind = false
}

gui.import("brutaldoom/BrutalDoomMonsters")


--decorate definition
function BRUTALDOOM.decorate()

    gui.wad_insert_file("brutaloblige/decorates/Decorate.dec","DECORATE");
    gui.wad_insert_file("brutaloblige/decorates/BrutalMonsters.dec","BRUMONS");
	gui.wad_insert_file("brutaloblige/decorates/BrutalWeapons.dec","BRUWEPS");
    gui.wad_insert_file("brutaloblige/decorates/BrutalPickups.dec","BRUPUPS");
    gui.wad_insert_file("brutaloblige/decorates/Bolognese.dec","BOLOGNES");   
    gui.wad_insert_file("brutaloblige/decorates/WOLF.dec","WOLF");   	
    gui.wad_insert_file("brutaloblige/decorates/WOLFMISC.dec","WOLFMISC");   		

	if BRUTALDOOM.PARAMETERS.realm667 == true then   	
		gui.wad_insert_file("brutaloblige/zscript/zscript667","ZSCRIPT");
	else
		gui.wad_insert_file("brutaloblige/zscript/zscript","ZSCRIPT");
	end

    gui.wad_insert_file("brutaloblige/zscript/base.zscript","ZBASE");
    gui.wad_insert_file("brutaloblige/zscript/NotCompatibleWithBrutality.zscript","ZBASE2");
    gui.wad_insert_file("brutaloblige/zscript/wolfmons.zscript","WOLFMONS");
    gui.wad_insert_file("brutaloblige/zscript/BaseMonsters.zscript","BASEMONS");
    
    gui.wad_insert_file("brutaloblige/TRNSLATE","TRNSLATE");
    
    gui.wad_insert_file("brutaloblige/acs/LOADACS","LOADACS");
    gui.wad_insert_file("brutaloblige/acs/A_START","A_START");
    gui.wad_insert_file("brutaloblige/acs/BOLOGACS.o","BOLOGACS");
    gui.wad_insert_file("brutaloblige/acs/A_START","A_END");

-- Extra Monsters & Textures  

	gui.wad_merge_sections("brutaloblige/brutaloblige.wad");

--Wolf3d Guard
	gui.wad_insert_file("brutaloblige/sounds/ACHTUNG.wav","ACHTUNG");				
	gui.wad_insert_file("brutaloblige/sounds/DIE1.wav","DIE1");				
	gui.wad_insert_file("brutaloblige/sounds/DIE2.wav","DIE2");					
	gui.wad_insert_file("brutaloblige/sounds/FART1.wav","FART1");				
	gui.wad_insert_file("brutaloblige/sounds/GUNSHT.wav","GUNSHT");				
	gui.wad_insert_file("brutaloblige/sounds/HALT.wav","HALT");				
	gui.wad_insert_file("brutaloblige/sounds/HALT2.wav","HALT2");				
	gui.wad_insert_file("brutaloblige/sounds/HALTEN.wav","HALTEN");				
	gui.wad_insert_file("brutaloblige/sounds/PAIN.wav","PAIN");				

-- Blue SS
	gui.wad_insert_file("brutaloblige/sounds/SHUTZSTF.wav","SHUTZSTF");				
	gui.wad_insert_file("brutaloblige/sounds/SS.wav","SS");				
	gui.wad_insert_file("brutaloblige/sounds/ACHTUN18.wav","ACHTUN18");				
	gui.wad_insert_file("brutaloblige/sounds/PAIN2.wav","PAIN2");				
	gui.wad_insert_file("brutaloblige/sounds/EDIE2.wav","EDIE2");				
	gui.wad_insert_file("brutaloblige/sounds/GUNSHT2.wav","GUNSHT2");	

-- Wolfenstein Dog
	gui.wad_insert_file("brutaloblige/sounds/WOOF.wav","WOOF");				
	gui.wad_insert_file("brutaloblige/sounds/YELP.wav","YELP");				
	gui.wad_insert_file("brutaloblige/sounds/YELP2.wav","YELP2");				
	gui.wad_insert_file("brutaloblige/sounds/BITE.wav","BITE");					

-- Wolfenstein officer
	
	gui.wad_insert_file("brutaloblige/sounds/HALT3.wav","HALT3");				
	gui.wad_insert_file("brutaloblige/sounds/ACHTNG2.wav","ACHTNG2");				
	gui.wad_insert_file("brutaloblige/sounds/EDIE.wav","EDIE");				
	gui.wad_insert_file("brutaloblige/sounds/EPAIN.wav","EPAIN");				

-- Wolfenstein Gretel

	gui.wad_insert_file("brutaloblige/sounds/GRTSIT.wav","GRTSIT");				
	gui.wad_insert_file("brutaloblige/sounds/GRTDTH.wav","GRTDTH");				
	gui.wad_insert_file("brutaloblige/sounds/GUNSHT3.wav","GUNSHT3");				

-- Wolfenstein Hans

	gui.wad_insert_file("brutaloblige/sounds/GUTENTAG.wav","GUTENTAG");			

-- Wolfenstein Dr. Schabbs

	gui.wad_insert_file("brutaloblige/sounds/SCSIT.wav","SCSIT");			
	gui.wad_insert_file("brutaloblige/sounds/SCDIE.wav","SCDIE");			
	gui.wad_insert_file("brutaloblige/sounds/THROW.wav","THROW");			
	
-- Wolfenstein Hitler

	gui.wad_insert_file("brutaloblige/sounds/MECHSTEP.wav","MECHSTEP");				
	gui.wad_insert_file("brutaloblige/sounds/HITLSIT.wav","HITLSIT");				
	gui.wad_insert_file("brutaloblige/sounds/EDIE.wav","EDIE");				
	gui.wad_insert_file("brutaloblige/sounds/EVAAUF.wav","EVAAUF");	
	gui.wad_insert_file("brutaloblige/sounds/HITLSIT2.wav","HITLSIT2");	
	gui.wad_insert_file("brutaloblige/sounds/SLURPIE.wav","SLURPIE");		

-- Wolfenstein Fatface

	gui.wad_insert_file("brutaloblige/sounds/BOSS2.wav","BOSS2");				
	gui.wad_insert_file("brutaloblige/sounds/BOSDIE.wav","BOSDIE");				
	gui.wad_insert_file("brutaloblige/sounds/ROCKET.wav","ROCKET");				
	gui.wad_insert_file("brutaloblige/sounds/KABOOM.wav","KABOOM");	

-- Wolfenstein Giftmacher

	gui.wad_insert_file("brutaloblige/sounds/BOSS4.wav","BOSS4");				

-- Wolfenstein Trans

	gui.wad_insert_file("brutaloblige/sounds/BOSS1.wav","BOSS1");				
	
-- Wolfenstein Ubermutant

	gui.wad_insert_file("brutaloblige/sounds/UBDIE.wav","UBDIE");					
	gui.wad_insert_file("brutaloblige/sounds/UBSIT.wav","UBSIT");

-- Wolfenstein Todesritter

	gui.wad_insert_file("brutaloblige/sounds/DKMECH.wav","DKMECH");				
	gui.wad_insert_file("brutaloblige/sounds/DKMISS.wav","DKMISS");				
	gui.wad_insert_file("brutaloblige/sounds/DKSIT.wav","DKSIT");				

-- Wolfenstein Mutant

	gui.wad_insert_file("brutaloblige/sounds/MUTDIE.wav","MUTDIE");				
	gui.wad_insert_file("brutaloblige/sounds/MUTPAI.wav","MUTPAI");				
	gui.wad_insert_file("brutaloblige/sounds/MUTSHT.wav","MUTSHT");				

-- Wolfenstein Fakehitler

	gui.wad_insert_file("brutaloblige/sounds/THUD.wav","THUD");				
	gui.wad_insert_file("brutaloblige/sounds/DSFLAME.wav","DSFLAME");					
	
	if BRUTALDOOM.PARAMETERS.realm667 == true then   	
		gui.wad_insert_file("brutaloblige/sounds/SNDINFO667.txt","SNDINFO");		
	else
		gui.wad_insert_file("brutaloblige/sounds/SNDINFO.txt","SNDINFO");		
	end
	
end

function BRUTALDOOM.setsecretexits()
  --GAME.SECRET_EXITS.MAP08 = false --works to set secret exit
  if secretexit1 == 1 then GAME.SECRET_EXITS.MAP01 = true end --there must be a better way but I don't know it
  if secretexit1 == 2 then GAME.SECRET_EXITS.MAP02 = true end
  if secretexit1 == 3 then GAME.SECRET_EXITS.MAP03 = true end
  if secretexit1 == 4 then GAME.SECRET_EXITS.MAP04 = true end
  if secretexit1 == 5 then GAME.SECRET_EXITS.MAP05 = true end
  if secretexit1 == 6 then GAME.SECRET_EXITS.MAP06 = true end
  if secretexit1 == 7 then GAME.SECRET_EXITS.MAP07 = true end
  if secretexit1 == 8 then GAME.SECRET_EXITS.MAP08 = true end
  if secretexit1 == 9 then GAME.SECRET_EXITS.MAP09 = true end
  if secretexit2 == 10 then GAME.SECRET_EXITS.MAP11 = true end
  if secretexit2 == 12 then GAME.SECRET_EXITS.MAP12 = true end
  if secretexit2 == 13 then GAME.SECRET_EXITS.MAP13 = true end
  if secretexit2 == 14 then GAME.SECRET_EXITS.MAP14 = true end
  if secretexit2 == 16 then GAME.SECRET_EXITS.MAP16 = true end
  if secretexit2 == 17 then GAME.SECRET_EXITS.MAP17 = true end
  if secretexit2 == 18 then GAME.SECRET_EXITS.MAP18 = true end
  if secretexit2 == 19 then GAME.SECRET_EXITS.MAP19 = true end
  if secretexit3 == 21 then GAME.SECRET_EXITS.MAP21 = true end
  if secretexit3 == 22 then GAME.SECRET_EXITS.MAP22 = true end
  if secretexit3 == 23 then GAME.SECRET_EXITS.MAP23 = true end
  if secretexit3 == 24 then GAME.SECRET_EXITS.MAP24 = true end
  if secretexit3 == 25 then GAME.SECRET_EXITS.MAP25 = true end
  if secretexit3 == 26 then GAME.SECRET_EXITS.MAP26 = true end
  if secretexit3 == 27 then GAME.SECRET_EXITS.MAP27 = true end
  if secretexit3 == 28 then GAME.SECRET_EXITS.MAP28 = true end
  if secretexit3 == 29 then GAME.SECRET_EXITS.MAP29 = true end
  gui.printf('Secret exit table:\n' .. table.tostring(GAME.SECRET_EXITS) .. '\n')
end

gui.import("brutaldoom/BrutalDoomLevels")

gui.import("brutaldoom/BrutalDoomTextures")

gui.import("brutaldoom/BrutalDoomMapinfo")

function BRUTALDOOM.all_done()
  gui.set_import_dir("games/brutaldoom")
  gui.import("brutaldoom/BrutalDoomSkies")
  gui.import("brutaldoom/BrutalDoomInterpics")
  BRUTALDOOM.puristrailgundecorate();
  BRUTALDOOM.decorate();
  DOOM.all_done();
  BRUTALDOOM.mixhanky();
  BRUTALDOOM.texturesetup();
  BRUTALDOOM.mergesongs();
  if BRUTALDOOM.PARAMETERS.usingui == true then
	BRUTALDOOM.createintm();
    BRUTALDOOM.mergeintm();
  end
  BRUTALDOOM.create_mapinfo();
  BRUTALDOOM.create_gldata()
  BRUTALDOOM.parameters_to_wad();
end

function BRUTALDOOM.mixhanky()
    if OB_CONFIG.length == 32 then --if a full game then only map32 will be chex themed.
        OB_THEMES["wolf"].mixed_prob=0
    end
end

function BRUTALDOOM.parameters_to_wad()
    local BOPARAMS = { }
    local ParamsAsString = string.gsub(table.tostring(BRUTALDOOM.PARAMETERS), ",",";\n");
    ParamsAsString = string.gsub(ParamsAsString,"{","");
    ParamsAsString = string.gsub(ParamsAsString,"}","");
    BOPARAMS[1]=ParamsAsString;
    gui.wad_add_text_lump("BOPARAMS", BOPARAMS );
end

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
    gui.printf("\nBrutal Oblige version: " .. BRUTALDOOM.PARAMETERS.modversion.."\n")
    gui.printf("For Brutal Doom version: " .. BRUTALDOOM.PARAMETERS.brutalversion.."\n\n")
    
    gui.printf("Universal Intermission check:\n");
    BRUTALDOOM.checkuintm();   
	BRUTALDOOM.checkrealm667()       
    BRUTALDOOM.setsecretexits();
end

function BRUTALDOOM.puristrailgundecorate()
	if PARAM.puristrailgunreload == "Skulltag" then
        PuristRailGunReloadDecorate = 'RAIF B 6 A_CheckForReload(4, "Reloaded")\n'
    elseif PARAM.puristrailgunreload == "None" then
        PuristRailGunReloadDecorate = 'RAIF B 6 A_Jump(256, "Reloaded")\n'
    elseif PARAM.puristrailgunreload == "Every" then
        PuristRailGunReloadDecorate = 'RAIF B 6\n'
    end
  
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

OB_GAMES["brutaldoom"] =
{
  label = "Brutal Doom"

  --extends = "doom2"

  format = "doom"
  iwad_name = "doom2.wad"
  game_dir = "brutaldoom"

  tables =
  {
    DOOM
    BRUTALDOOM
  }

  hooks =
  {
    setup       = BRUTALDOOM.setup
    get_levels  = BRUTALDOOM.get_levels
    end_level  = DOOM.end_level
    all_done	= BRUTALDOOM.all_done
  }
}

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
