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

BRUTALDOOM4 = { }

BRUTALDOOM.SECRET_EXITS = { }

 --this all has to come after the tables are declared
gui.import("DebugFunctions")
gui.import("brutaldoom/BrutalDoomMaterials")
gui.import("brutaldoom/BrutalDoomThemes")
gui.import("brutaldoom/BrutalDoomPickups")
gui.import("brutaldoom/BrutalDoomEntities")
gui.import("brutaldoom/BrutalDoomMusic")
gui.import("UniversalIntermissionCompat/BrutalINTM")
gui.import("functions/tablecontains")
gui.import("functions/tablemerge")
gui.import("functions/filereading")


BRUTALDOOM.YES_NO =
{
    "yes", "Yes"
    "no", "No"
}

BRUTALDOOM.VERSIONS = 
{
	"brutalv20b.pk3",	"V20b"
    "brutalv21.pk3",    "V21"
}

BRUTALDOOM.PARAMETERS =
{
    modversion = 'dev version following v2.0.1'
    skygenerator = false
    iwad = 'Doom2.wad'
    musicpreset = 'iwad'
    brutalversion = "brutalv21.pk3"
    usingui = false
    playerclass = "Doomer"
    puristrailgunreload = "None"
    mini_mastermind = false

}

BRUTALDOOM.IWADS =
{
    "Doom2.wad",    "Doom 2"
    "Tnt.wad",      "TNT:Eviloution"
    "Plutonia.wad", "Plutonia"
    "doom_complete.pk3",    "Doom Complete"
    "freedoom2.wad",    "Freedoom 2"
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
	gui.wad_insert_file("brutaloblige/decorates/BrutalWeapons.dec","BRUWEPS");
    gui.wad_insert_file("brutaloblige/decorates/BrutalPickups.dec","BRUPUPS");
    gui.wad_insert_file("brutaloblige/decorates/Bolognese.dec","BOLOGNES");   
	gui.wad_insert_file("brutaloblige/zscript/zscript","ZSCRIPT");
    gui.wad_insert_file("brutaloblige/zscript/base.zscript","ZBASE");
    gui.wad_insert_file("brutaloblige/zscript/NotCompatibleWithBrutality.zscript","ZBASE2");
    gui.wad_insert_file("brutaloblige/zscript/wolfmons.zscript","WOLFMONS");
    gui.wad_insert_file("brutaloblige/zscript/BaseMonsters.zscript","BASEMONS");
    
    gui.wad_insert_file("brutaloblige/TRNSLATE","TRNSLATE");
    
    gui.wad_insert_file("brutaloblige/acs/LOADACS","LOADACS");
    gui.wad_insert_file("brutaloblige/acs/A_START","A_START");
    gui.wad_insert_file("brutaloblige/acs/BOLOGACS.o","BOLOGACS");
	gui.wad_insert_file("brutaloblige/acs/HIEROPHT.lmp","HIEROPHT");	
    gui.wad_insert_file("brutaloblige/acs/A_START","A_END");
-- Extra Monsters    

--Kamikaze Guy
	gui.wad_merge_sections("brutaloblige/brutaloblige.wad");
	gui.wad_insert_file("brutaloblige/sounds/DSKAMAAH.wav","DSKAMAAH");
	gui.wad_insert_file("brutaloblige/sounds/DSKAMIDL.wav","DSKAMIDL");	

--Hellion	
	gui.wad_insert_file("brutaloblige/zscript/HELLION.zscript","HELLION");	
	
	gui.wad_insert_file("brutaloblige/sounds/DSHLNACT.ogg","DSHLNACT");	
	gui.wad_insert_file("brutaloblige/sounds/DSHLNATK.ogg","DSHLNATK");	
	gui.wad_insert_file("brutaloblige/sounds/DSHLNDTH.ogg","DSHLNDTH");	
	gui.wad_insert_file("brutaloblige/sounds/DSHLNEXP.ogg","DSHLNEXP");	
	gui.wad_insert_file("brutaloblige/sounds/DSHLNPAI.ogg","DSHLNPAI");	
	gui.wad_insert_file("brutaloblige/sounds/DSHLNSIT.ogg","DSHLNSIT");	

	
	gui.wad_insert_file("brutaloblige/brightmaps/BMBLACK.png","BMBLACK");		
	
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNG1.png","BMHELNG1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNG2.png","BMHELNG2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNG3.png","BMHELNG3");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNG4.png","BMHELNG4");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNG5.png","BMHELNG5");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNG6.png","BMHELNG6");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNG7.png","BMHELNG7");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNG8.png","BMHELNG8");	
	
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNH1.png","BMHELNH1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNH2.png","BMHELNH2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNH3.png","BMHELNH3");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNH4.png","BMHELNH4");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNH5.png","BMHELNH5");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNH6.png","BMHELNH6");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNH7.png","BMHELNH7");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNH8.png","BMHELNH8");	

	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNI1.png","BMHELNI1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNI2.png","BMHELNI2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNI3.png","BMHELNI3");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNI4.png","BMHELNI4");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNI5.png","BMHELNI5");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNI6.png","BMHELNI6");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNI7.png","BMHELNI7");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNI8.png","BMHELNI8");	

	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNJ1.png","BMHELNJ1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNJ2.png","BMHELNJ2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNJ3.png","BMHELNJ3");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNJ4.png","BMHELNJ4");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNJ5.png","BMHELNJ5");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNJ6.png","BMHELNJ6");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNJ7.png","BMHELNJ7");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNJ8.png","BMHELNJ8");		

	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNK1.png","BMHELNK1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNK2.png","BMHELNK2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNK3.png","BMHELNK3");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNK4.png","BMHELNK4");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNK5.png","BMHELNK5");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNK6.png","BMHELNK6");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNK7.png","BMHELNK7");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHELNK8.png","BMHELNK8");	

	
--Hell Warrior	

	gui.wad_insert_file("brutaloblige/zscript/HELLW.zscript","HELLW");		

	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARA1.png","BMHWARA1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARA2.png","BMHWARA2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARA3.png","BMHWARA3");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARA4.png","BMHWARA4");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARA5.png","BMHWARA5");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARA6.png","BMHWARA6");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARA7.png","BMHWARA7");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARA8.png","BMHWARA8");			

	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARB1.png","BMHWARB1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARB2.png","BMHWARB2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARB3.png","BMHWARB3");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARB4.png","BMHWARB4");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARB5.png","BMHWARB5");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARB6.png","BMHWARB6");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARB7.png","BMHWARB7");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARB8.png","BMHWARB8");		

	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARC1.png","BMHWARC1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARC2.png","BMHWARC2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARC3.png","BMHWARC3");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARC4.png","BMHWARC4");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARC5.png","BMHWARC5");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARC6.png","BMHWARC6");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARC7.png","BMHWARC7");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARC8.png","BMHWARC8");

	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARD1.png","BMHWARD1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARD2.png","BMHWARD2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARD3.png","BMHWARD3");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARD4.png","BMHWARD4");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARD5.png","BMHWARD5");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARD6.png","BMHWARD6");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARD7.png","BMHWARD7");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARD8.png","BMHWARD8");	

	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARE1.png","BMHWARE1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARE2.png","BMHWARE2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARE3.png","BMHWARE3");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARE4.png","BMHWARE4");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARE5.png","BMHWARE5");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARE6.png","BMHWARE6");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARE7.png","BMHWARE7");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARE8.png","BMHWARE8");

	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARF1.png","BMHWARF1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARF2.png","BMHWARF2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARF3.png","BMHWARF3");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARF4.png","BMHWARF4");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARF5.png","BMHWARF5");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARF6.png","BMHWARF6");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARF7.png","BMHWARF7");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARF8.png","BMHWARF8");
	
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARG1.png","BMHWARG1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARG2.png","BMHWARG2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARG3.png","BMHWARG3");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARG4.png","BMHWARG4");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARG5.png","BMHWARG5");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARG6.png","BMHWARG6");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARG7.png","BMHWARG7");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARG8.png","BMHWARG8");

	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARH1.png","BMHWARH1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARH2.png","BMHWARH2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARH3.png","BMHWARH3");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARH4.png","BMHWARH4");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARH5.png","BMHWARH5");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARH6.png","BMHWARH6");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARH7.png","BMHWARH7");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARH8.png","BMHWARH8");
	
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARI1.png","BMHWARI1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARI2.png","BMHWARI2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARI3.png","BMHWARI3");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARI4.png","BMHWARI4");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARI5.png","BMHWARI5");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARI6.png","BMHWARI6");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARI7.png","BMHWARI7");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARI8.png","BMHWARI8");	
	
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARJ1.png","BMHWARJ1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARJ2.png","BMHWARJ2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARJ3.png","BMHWARJ3");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARJ4.png","BMHWARJ4");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARJ5.png","BMHWARJ5");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARJ6.png","BMHWARJ6");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARJ7.png","BMHWARJ7");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARJ8.png","BMHWARJ8");
	
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARK0.png","BMHWARK0");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARL0.png","BMHWARL0");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARM0.png","BMHWARM0");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARN0.png","BMHWARN0");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARO0.png","BMHWARO0");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWARP0.png","BMHWARP0");		

	gui.wad_insert_file("brutaloblige/brightmaps/BMHWSHA0.png","BMHWSHA0");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWSHE0.png","BMHWSHE0");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWSHF0.png","BMHWSHF0");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWSHG0.png","BMHWSHG0");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWSHH0.png","BMHWSHH0");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMHWSHI0.png","BMHWSHI0");		

--ZombieFodder
	gui.wad_insert_file("brutaloblige/zscript/ZOMBIEF.zscript","ZOMBIEF");	
	
	gui.wad_insert_file("brutaloblige/sounds/FODDSEE1.ogg","FODDSEE1");	
	gui.wad_insert_file("brutaloblige/sounds/FODDSEE2.ogg","FODDSEE2");	
	gui.wad_insert_file("brutaloblige/sounds/FODDACT1.ogg","FODDACT1");	
	gui.wad_insert_file("brutaloblige/sounds/FODDACT2.ogg","FODDACT2");	
	gui.wad_insert_file("brutaloblige/sounds/FODDPAIN.ogg","FODDPAIN");	
	gui.wad_insert_file("brutaloblige/sounds/FODDDIE1.ogg","FODDDIE1");	
	gui.wad_insert_file("brutaloblige/sounds/FODDDIE2.ogg","FODDDIE2");	
	gui.wad_insert_file("brutaloblige/sounds/FODDATK.ogg","FODDATK");	
	gui.wad_insert_file("brutaloblige/sounds/FODDMISS.ogg","FODDMISS");	
	gui.wad_insert_file("brutaloblige/sounds/FODDHIT.ogg","FODDHIT");	
	gui.wad_insert_file("brutaloblige/sounds/FODDSOUL.ogg","FODDSOUL");		
	
--Rottweiler
	gui.wad_insert_file("brutaloblige/zscript/ROTTW.zscript","ROTTW");		
	
	gui.wad_insert_file("brutaloblige/sounds/DSDOGATK.ogg","DSDOGATK");			
	gui.wad_insert_file("brutaloblige/sounds/DSDOGDIE.ogg","DSDOGDIE");			
	gui.wad_insert_file("brutaloblige/sounds/DSDOGIDL.ogg","DSDOGIDL");			
	gui.wad_insert_file("brutaloblige/sounds/DSDOGPAN.ogg","DSDOGPAN");			
	gui.wad_insert_file("brutaloblige/sounds/DSDOGSEE.ogg","DSDOGSEE");				
	
--Succubus
	gui.wad_insert_file("brutaloblige/sounds/PYROBRN.ogg","PYROBRN");			
	gui.wad_insert_file("brutaloblige/sounds/PYROXXPL.ogg","PYROXXPL");			
	gui.wad_insert_file("brutaloblige/sounds/PYRODTH.ogg","PYRODTH");			
	gui.wad_insert_file("brutaloblige/sounds/PYROPAIN.ogg","PYROPAIN");			
	gui.wad_insert_file("brutaloblige/sounds/PYROACT1.ogg","PYROACT1");			
	gui.wad_insert_file("brutaloblige/sounds/PYROACT2.ogg","PYROACT2");			
	gui.wad_insert_file("brutaloblige/sounds/PYROSIT1.ogg","PYROSIT1");			
	gui.wad_insert_file("brutaloblige/sounds/PYROSIT2.ogg","PYROSIT2");			
	gui.wad_insert_file("brutaloblige/sounds/PYROHEAL.ogg","PYROHEAL");				
	
--Roach
	gui.wad_insert_file("brutaloblige/zscript/ROACH.zscript","ROACH");		

	gui.wad_insert_file("brutaloblige/sounds/ROACACT1.ogg","ROACACT1");		
	gui.wad_insert_file("brutaloblige/sounds/ROACACT2.ogg","ROACACT2");		
	gui.wad_insert_file("brutaloblige/sounds/ROACDEAT.ogg","ROACDEAT");		
	gui.wad_insert_file("brutaloblige/sounds/ROACHIT.ogg","ROACHIT");		
	gui.wad_insert_file("brutaloblige/sounds/ROACFIRE.ogg","ROACFIRE");		
	gui.wad_insert_file("brutaloblige/sounds/ROACPAI1.ogg","ROACPAI1");		
	gui.wad_insert_file("brutaloblige/sounds/ROACPAI2.ogg","ROACPAI2");		
	gui.wad_insert_file("brutaloblige/sounds/ROACSIG1.ogg","ROACSIG1");		
	gui.wad_insert_file("brutaloblige/sounds/ROACSIG2.ogg","ROACSIG2");		
	gui.wad_insert_file("brutaloblige/sounds/ROACSIG3.ogg","ROACSIG3");			

	gui.wad_insert_file("brutaloblige/brightmaps/BMROACA1.png","BMROACA1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACA2.png","BMROACA2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACA3.png","BMROACA3");			
	
	
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACB1.png","BMROACB1");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACB2.png","BMROACB2");		
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACB3.png","BMROACB3");			

	gui.wad_insert_file("brutaloblige/brightmaps/BMROACC1.png","BMROACC1");			
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACC2.png","BMROACC2");			
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACC3.png","BMROACC3");			
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACC4.png","BMROACC4");				

	gui.wad_insert_file("brutaloblige/brightmaps/BMROACD1.png","BMROACD1");			
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACD2.png","BMROACD2");			
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACD3.png","BMROACD3");				

	gui.wad_insert_file("brutaloblige/brightmaps/BMROACE1.png","BMROACE1");				
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACE2.png","BMROACE2");				
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACE3.png","BMROACE3");				

	gui.wad_insert_file("brutaloblige/brightmaps/BMROACF1.png","BMROACF1");				
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACF2.png","BMROACF2");				
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACF3.png","BMROACF3");				

	gui.wad_insert_file("brutaloblige/brightmaps/BMROACG1.png","BMROACG1");				
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACG2.png","BMROACG2");				
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACG3.png","BMROACG3");				

	
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACI0.png","BMROACI0");					
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACJ0.png","BMROACJ0");					
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACN0.png","BMROACN0");					
	gui.wad_insert_file("brutaloblige/brightmaps/BMROACO0.png","BMROACO0");						
	
--Hierophant
	gui.wad_insert_file("brutaloblige/acs/HIEROPHT.dat","HIEROPHT");	
	gui.wad_insert_file("brutaloblige/zscript/HIEROP.zscript","HIEROP");	
	
	gui.wad_insert_file("brutaloblige/sounds/DSCURSE1.ogg","DSCURSE1");			
	gui.wad_insert_file("brutaloblige/sounds/DSCURSE2.ogg","DSCURSE2");			
	gui.wad_insert_file("brutaloblige/sounds/DSFIREX5.ogg","DSFIREX5");			
	gui.wad_insert_file("brutaloblige/sounds/DSFIRMFI.ogg","DSFIRMFI");			
	gui.wad_insert_file("brutaloblige/sounds/DSHIEACT.ogg","DSHIEACT");			
	gui.wad_insert_file("brutaloblige/sounds/DSHIEDTH.ogg","DSHIEDTH");			
	gui.wad_insert_file("brutaloblige/sounds/DSHIEPAI.ogg","DSHIEPAI");			
	gui.wad_insert_file("brutaloblige/sounds/DSHIESIT.ogg","DSHIESIT");				
	
--Goat Boss

	gui.wad_insert_file("brutaloblige/sounds/011SIT.wav","011SIT");			
	gui.wad_insert_file("brutaloblige/sounds/011ATT.wav","011ATT");			
	gui.wad_insert_file("brutaloblige/sounds/011IDLE1.wav","011IDLE1");			
	gui.wad_insert_file("brutaloblige/sounds/011IDLE2.wav","011IDLE2");			
	gui.wad_insert_file("brutaloblige/sounds/011IDLE3.wav","011IDLE3");			
	gui.wad_insert_file("brutaloblige/sounds/011PAIN1.wav","011PAIN1");			
	gui.wad_insert_file("brutaloblige/sounds/011PAIN2.wav","011PAIN2");			
	gui.wad_insert_file("brutaloblige/sounds/GOATA2.wav","GOATA2");			
	gui.wad_insert_file("brutaloblige/sounds/GOATBD2.wav","GOATBD2");			
	gui.wad_insert_file("brutaloblige/sounds/H20016.wav","H20016");			
	gui.wad_insert_file("brutaloblige/sounds/H20017.wav","H20017");			
	gui.wad_insert_file("brutaloblige/sounds/ACIDFIRE.wav","ACIDFIRE");			
	gui.wad_insert_file("brutaloblige/sounds/ACIDHIT.wav","ACIDHIT");			
	gui.wad_insert_file("brutaloblige/sounds/PURFIRE.wav","PURFIRE");			
	gui.wad_insert_file("brutaloblige/sounds/PURFIRE3.wav","PURFIRE3");			
	gui.wad_insert_file("brutaloblige/sounds/R_EXP3.wav","R_EXP3");			
	gui.wad_insert_file("brutaloblige/sounds/MMFIRE.wav","MMFIRE");			
	gui.wad_insert_file("brutaloblige/sounds/EXPLODE.wav","EXPLODE");			
	gui.wad_insert_file("brutaloblige/sounds/SCREAM.wav","SCREAM");			
	gui.wad_insert_file("brutaloblige/sounds/SCREAM2.wav","SCREAM2");			
	gui.wad_insert_file("brutaloblige/sounds/FLAMSTRT.wav","FLAMSTRT");				
	
	gui.wad_insert_file("brutaloblige/gldefs/GLDEFS.gl","GLDEFS");	
	gui.wad_insert_file("brutaloblige/sounds/SNDINFO.txt","SNDINFO");		
end

function BRUTALDOOM.castcalldecorate()
	gui.wad_insert_file("brutaloblige/decorates/CastCall/BrutalCastCall.dec","DECORATE");
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
  if secretexit2 == 11 then GAME.SECRET_EXITS.MAP11 = true end
  if secretexit2 == 12 then GAME.SECRET_EXITS.MAP12 = true end
  if secretexit2 == 13 then GAME.SECRET_EXITS.MAP13 = true end
  if secretexit2 == 14 then GAME.SECRET_EXITS.MAP14 = true end
  if secretexit2 == 15 then GAME.SECRET_EXITS.MAP15 = true end
  if secretexit2 == 16 then GAME.SECRET_EXITS.MAP16 = true end
  if secretexit2 == 17 then GAME.SECRET_EXITS.MAP17 = true end
  if secretexit2 == 18 then GAME.SECRET_EXITS.MAP18 = true end
  if secretexit2 == 19 then GAME.SECRET_EXITS.MAP19 = true end
  if secretexit3 == 20 then GAME.SECRET_EXITS.MAP20 = true end
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
  gui.set_import_dir("games/brutaldoom")
  gui.import("brutaldoom/BrutalDoomSkies")
  gui.import("brutaldoom/BrutalDoomInterpics")
  BRUTALDOOM.puristrailgundecorate();
  BRUTALDOOM.decorate();
  DOOM.all_done();
  BRUTALDOOM.mixhanky();
  BRUTALDOOM.texturesetup();
  BRUTALDOOM.mergesongs();
  if BRUTALDOOM.PARAMETERS.iwad == 'freedoom2.wad' then
      BRUTALDOOM.freedoom_language();
  end
  if BRUTALDOOM.PARAMETERS.usingui == true then
	BRUTALDOOM.createintm();
    BRUTALDOOM.mergeintm();
  end
  BRUTALDOOM.create_mapinfo();
  BRUTALDOOM.castcalldecorate();
  BRUTALDOOM.parameters_to_wad();
end

function BRUTALDOOM.mixhanky()
    if OB_CONFIG.length == 32 then --if a full game then only map32 will be chex themed.
        OB_THEMES["wolf"].mixed_prob=0
		OB_THEMES["egypt2"].mixed_prob=0
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
    gui.printf("\nBrutal Oblige version: " .. BRUTALDOOM.PARAMETERS.modversion.."\n")
    gui.printf("For Brutal Doom version: " .. BRUTALDOOM.PARAMETERS.brutalversion.."\n\n")
    
    gui.printf("Universal Intermission check:\n");
    BRUTALDOOM.checkuintm();   
       
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
    "A standard issue UAC Pistol. Proof that the UAC are bastards who hate you.",
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
    BRUTALDOOM4
  }

  hooks =
  {
    setup       = BRUTALDOOM.setup
    get_levels  = BRUTALDOOM.get_levels
    end_level  = DOOM.end_level
    all_done	= BRUTALDOOM.all_done
  }
}

OB_MODULES["brutaltweaks"] =
{
  label = "Brutal Doom Tweaks"
  
  side = "left"

  game = { brutaldoom=1}
  playmode = { sp=1, coop=1 }
  
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
