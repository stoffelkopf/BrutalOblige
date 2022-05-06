gui.set_import_dir("games/doom")
gui.import("base")
gui.set_import_dir("games/brutaldoom")
math.randomseed( os.time() ) 
math.random()
math.random()

secretexit1 = math.random(1,10)
secretexit3 = math.random(21,29)

local boss1 = "cyberdemon"
local boss2 = "mastermind"

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
    gui.wad_insert_file("brutaloblige/decorates/WOLFTMP.dec","WOLFTMP");   		
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
	gui.wad_insert_file("brutaloblige/sounds/WDKSIT.wav","WDKSIT");				

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

-- Wolf Music

	gui.wad_insert_file("brutaloblige/music/DEATH.ogg","DEATH");
	gui.wad_insert_file("brutaloblige/music/EVIL.ogg","EVIL");
	gui.wad_insert_file("brutaloblige/music/FUNKIE.ogg","FUNKIE");
	gui.wad_insert_file("brutaloblige/music/FUNKYOU.ogg","FUNKYOU");
	gui.wad_insert_file("brutaloblige/music/GETTHEM.ogg","GETTHEM");
	gui.wad_insert_file("brutaloblige/music/GETYOU.ogg","GETYOU");
	gui.wad_insert_file("brutaloblige/music/GOINGAFT.ogg","GOINGAFT");
	gui.wad_insert_file("brutaloblige/music/JAZNAZI.ogg","JAZNAZI");
	gui.wad_insert_file("brutaloblige/music/NAZI_OMI.ogg","NAZI_OMI");
	gui.wad_insert_file("brutaloblige/music/PREGNANT.ogg","PREGNANT");
	gui.wad_insert_file("brutaloblige/music/PUTIT.ogg","PUTIT");
	gui.wad_insert_file("brutaloblige/music/TIPTOE.ogg","TIPTOE");
	gui.wad_insert_file("brutaloblige/music/ULTIMATE.ogg","ULTIMATE");
	gui.wad_insert_file("brutaloblige/music/WONDERIN.ogg","WONDERIN");
	gui.wad_insert_file("brutaloblige/music/ZEROHOUR.ogg","ZEROHOUR");	
	
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
  if secretexit1 == 10 then GAME.SECRET_EXITS.MAP10 = true end  
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

function BRUTALDOOM.update_prefabs()

	if OB_CONFIG.game == "brutaldoom" and OB_CONFIG.obaddon_prefabs == "yes" then	

	  gui.printf("Using Obaddon Prefabs.\n")
	  
	  GAME.THEMES.DEFAULTS.narrow_halls =
	  {
		vent = 50
		mineshaft = 50				
	  }
	  
	  GAME.THEMES.DEFAULTS.wide_halls =
	  {
		deuce = 50
		metro = 50			
	  }

	  GAME.THEMES.tech.narrow_halls =
	  {
		vent = 50
		mineshaft = 50
		access = 50
	  }				  

	  GAME.THEMES.tech.wall_groups =
	  {
		PLAIN = 90
		low_gap = 30
		low_gap2 = 5
		low_gap3 = 10
		mid_band = 22
		mid_band2 = 10
		lite1 = 5
		lite2 = 15
		torches1 = 15
		gtd_computers = 25
		gtd_generic_alt_colors = 25								
		gtd_generic_artsy_bedazzled = 2							   
		gtd_generic_artsy_center_braced_ind = 25	
		gtd_generic_artsy_slope_y_inset = 20
		gtd_generic_artsy_step1_banded = 20
		gtd_generic_beamed_inset = 25
		gtd_generic_beamed_green_inset = 25
		gtd_generic_beamed_brown_inset = 25	  
		gtd_generic_ceilwall = 25								 
		gtd_generic_d64_1x = 4
		gtd_generic_d64_1x_blue = 4
		gtd_generic_d64_1x_yellow = 4
		gtd_generic_d64_2x = 4
		gtd_generic_d64_2x_blue = 4
		gtd_generic_d64_2x_yellow = 4
		gtd_generic_double_banded_ceil = 25								 
		gtd_generic_frame_light_band = 25							   
		gtd_generic_frame_metal = 25										 
		gtd_generic_glow_wall = 25												 
		gtd_generic_glow_wall = 25
		gtd_generic_half_floor = 25
		gtd_generic_mid_band = 25									 
		gtd_generic_tek_grate = 25
		gtd_generic_tek_grate_bottom_slope = 25	  
		gtd_modquake_set = 14,
		gtd_modquake_jawlike = 14
		gtd_modquake_top_heavy_brace = 14
		gtd_modquake_tek_slope_brace = 14
		gtd_modquake_ex_light_slope_brace = 14
		gtd_modquake_round_braced_lit_pillar = 14
		gtd_modquake_hexagon_inset_braced = 14	  
		gtd_ribbed_lights = 25
		gtd_ribbed_lights_no3d = 20
		gtd_ribbed_lights_slump = 20	  
		gtd_wall_grated_machines = 25
		gtd_wall_high_gap_alt_set = 12
		gtd_wall_high_gap_set = 12
		gtd_wall_octagon_insets = 50
		gtd_wall_quakish_insets = 25
		gtd_wall_server_room = 25
		gtd_wall_sewer = 25
		gtd_wall_tech_top_corner_light_set = 25
		gtd_wall_urban_cement_frame = 10				  
		gtd_wall_urban_storage = 25
		gtd_writhing_mass = 2				   
	  }

	  GAME.THEMES.tech.window_groups =
	  {
		square = 70
		tall   = 40
		grate  = 40
		barred = 5
		supertall = 60				
		gtd_window_absurdly_open = 25
		gtd_window_bay = 20
		gtd_window_cage_highbars = 20
		gtd_window_cage_lowbars = 10
		gtd_window_construction_frames = 5					
		gtd_window_full_open = 30
		gtd_window_full_open_tall = 30
		gtd_window_hexagon = 30							 
		gtd_window_low = 20
		gtd_window_metal_frames = 30
		gtd_window_quakeish = 30
		gtd_window_slump_tall = 30	  
		gtd_window_weabdows = 15
	  }
	  
	  GAME.THEMES.urban.narrow_halls =
	  {
		vent = 50
		mineshaft = 50
		access = 25
	  }

	  GAME.THEMES.urban.wall_groups =
	  {
		gtd_computers = 4
		gtd_drywall = 10
		gtd_generic_alt_colors = 15
		gtd_generic_artsy_bedazzled = 15
		gtd_generic_artsy_center_braced_ind = 15
		gtd_generic_artsy_slope_y_inset = 20	 
		gtd_generic_artsy_step1_banded = 20
		gtd_generic_beamed_inset = 15
		gtd_generic_beamed_green_inset = 25
		gtd_generic_beamed_brown_inset = 25	  
		gtd_generic_ceilwall = 10
		gtd_generic_d64_1x = 2
		gtd_generic_d64_1x_blue = 2
		gtd_generic_d64_1x_yellow = 2
		gtd_generic_d64_2x = 2
		gtd_generic_d64_2x_blue = 2
		gtd_generic_d64_2x_yellow = 2
		gtd_generic_double_banded_ceil = 15
		gtd_generic_frame_light_band = 15
		gtd_generic_frame_metal = 15
		gtd_generic_glow_wall = 15
		gtd_generic_half_floor = 10
		gtd_generic_mid_band = 10
		gtd_generic_tek_grate = 15
		gtd_generic_tek_grate_bottom_slope = 40	  
		gtd_library = 10
		gtd_ribbed_lights = 4
		gtd_ribbed_lights_no3d = 17
		gtd_ribbed_lights_slump = 17	  
		gtd_round_inset = 5
		gtd_modquake_set = 11
		gtd_modquake_jawlike = 11
		gtd_modquake_top_heavy_brace = 11
		gtd_modquake_tek_slope_brace = 11
		gtd_modquake_ex_light_slope_brace = 11
		gtd_modquake_round_braced_lit_pillar = 11
		gtd_modquake_hexagon_inset_braced = 11	  
		gtd_wall_grated_machines = 4
		gtd_wall_high_gap_alt_set = 5
		gtd_wall_high_gap_set = 5
		gtd_wall_quakish_insets = 8
		gtd_wall_sewer = 10
		gtd_wall_tech_top_corner_light_set = 8
		gtd_wall_urban_cement_frame = 7
		gtd_wall_urban_storage = 8
		gtd_woodframe = 5
		gtd_woodframe_green = 5
		gtd_writhing_mass = 2
	  }
		
	  GAME.THEMES.urban.window_groups =
	  {
		barred = 80
		tall   = 60
		round  = 30
		square = 10
		grate  = 40				 
		supertall = 50					
		gtd_window_absurdly_open = 45
		gtd_window_arched = 40
		gtd_window_arched_tall = 20
		gtd_window_arrowslit = 10
		gtd_window_bay = 30
		gtd_window_cage_highbars = 30
		gtd_window_cage_lowbars = 40
		gtd_window_construction_frames = 65								   
		gtd_window_full_open = 70
		gtd_window_full_open_tall = 65
		gtd_window_hexagon = 25				 
		gtd_window_low = 35
		gtd_window_metal_frames = 70
		gtd_window_pencil_holes = 35
		gtd_window_quakeish = 20
		gtd_window_weabdows = 70
		gtd_window_slump_tall = 65	  
	  }	  

	  GAME.THEMES.hell.wall_groups =
	  {
		PLAIN = 80
		torches1 = 40
		torches2 = 15
		low_gap = 20
		runes1 = 7
		runes2 = 7
		runes3 = 7
		cross1 = 7
		cross2 = 15
		gtd_generic_d64_1x = 6
		gtd_generic_alt_colors = 40
		gtd_generic_artsy_bedazzled = 40
		gtd_generic_artsy_step1_banded = 20
		gtd_generic_artsy_center_braced_hell = 20,
		gtd_generic_artsy_slope_y_inset = 20
		gtd_generic_beamed_inset = 40
		gtd_generic_beamed_brown_inset = 35
		gtd_generic_ceilwall = 30
		gtd_generic_d64_1x_blue = 6
		gtd_generic_d64_1x_yellow = 6
		gtd_generic_d64_2x = 6
		gtd_generic_d64_2x_blue = 6
		gtd_generic_d64_2x_yellow = 6
		gtd_generic_double_banded_ceil = 40				
		gtd_generic_glow_wall = 40
		gtd_generic_half_floor = 30
		gtd_generic_mid_band = 10
		gtd_generic_tek_grate = 40
		gtd_generic_tek_grate_bottom_slope = 25	  
		gtd_library = 40						 
		gtd_modquake_set = 11
		gtd_modquake_jawlike = 11
		gtd_modquake_top_heavy_brace = 11
		gtd_modquake_tek_slope_brace = 11
		gtd_modquake_ex_light_slope_brace = 11
		gtd_modquake_round_braced_lit_pillar = 11
		gtd_modquake_hexagon_inset_braced = 11	  
		gtd_round_inset = 30								
		gtd_wall_hell_ossuary = 40
		gtd_wall_hell_vaults = 40				
		gtd_wall_high_gap_alt_set = 20
		gtd_wall_high_gap_set = 20
		gtd_wall_quakish_insets = 40
		gtd_wall_tech_top_corner_light_set = 40				
		gtd_woodframe = 15
		gtd_woodframe_green = 15
		gtd_writhing_mass = 40
	  }

	  GAME.THEMES.hell.window_groups =
	  {
		round  = 80
		tall   = 40
		barred = 20
		grate  = 10
		square = 30 --30
		supertall = 60								   
		gtd_window_absurdly_open = 60
		gtd_window_arched = 60
		gtd_window_arched_inverse = 30
		gtd_window_arched_tall = 60
		gtd_window_arrowslit = 60
		gtd_window_cage_hell = 50
		gtd_window_cage_highbars = 20
		gtd_window_cage_lowbars = 20
		gtd_window_construction_frames = 60
		gtd_window_full_open = 40
		gtd_window_full_open_tall = 40
		gtd_window_low = 75
		gtd_window_metal_frames = 60
		gtd_window_pencil_holes = 60
		gtd_window_quakeish = 30
		gtd_window_slump_tall = 40  
	  }
	else
	  gui.printf("Using Standard Prefabs.\n")
	end
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
	BRUTALDOOM.update_prefabs();	
    gui.printf("Universal Intermission check:\n");
    BRUTALDOOM.checkuintm();   
	BRUTALDOOM.checkrealm667();       
    BRUTALDOOM.setsecretexits();
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
