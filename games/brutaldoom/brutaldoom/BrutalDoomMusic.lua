BRUTALDOOM.music =
{
    songs =
    {
        "d_runnin"
    }
}

BRUTALDOOM.doom2songs =
{
    "d_runnin", "d_runni2", "d_stalks", "d_stlks2", "d_stlks3", "d_countd", "d_count2", "d_betwee", "d_doom", "d_doom2", "d_the_da", 
	"d_theda2", "d_theda3", "d_shawn", "d_shawn2", "d_shawn3", "d_ddtblu", "d_ddtbl2", "d_ddtbl3", "d_in_cit", "d_dead", "d_dead2", 
	"d_romero", "d_romer2", "d_messag", "d_messg2", "d_ampie", "d_adrian", "d_tense", "d_openin", 
    --wolf
    "d_evil", "d_ultima"
}

BRUTALDOOM.doom1songs = --not in the iwad but might be in doom metal etc
{
    "d_e1m1", "d_e1m2", "d_e1m3", "d_e1m4", "d_e1m5", "d_e1m6", "d_e1m7", "d_e1m8", "d_e1m9",
    "d_e2m1", "d_e2m2", "d_e2m3", "d_e2m4", "d_e2m5", "d_e2m6", "d_e2m7", "d_e2m8", "d_e2m9",
    "d_e3m1", "d_e3m2", "d_e3m3", "d_e3m4", "d_e3m5", "d_e3m6", "d_e3m7", "d_e3m8", "d_e3m9"
}

BRUTALDOOM.tntsongs =
{
    "t_runnin", "t_runni2", "t_stalks", "t_stlks2", "t_stlks3", "t_countd", "t_count2", "t_betwee", "t_doom", 
	"t_doom2", "t_the_da", "t_theda2", "t_theda3", "t_shawn", "t_shawn2", "t_shawn3", "t_ddtblu", "t_ddtbl2", 
	"t_ddtbl3", "t_in_cit", "t_dead", "t_dead2", "t_romero", "t_romer2", "t_messag", "t_messg2", "t_ampie", 
	"t_adrian", "t_tense", "t_openin", "t_evil", "t_ultima"
}
BRUTALDOOM.plutoniasongs =
{
    "p_runnin", "p_runni2", "p_stalks", "p_stlks2", "p_stlks3", "p_countd", "p_count2", "p_betwee", "p_doom", 
	"p_doom2", "p_the_da", "p_theda2", "p_theda3", "p_shawn", "p_shawn2", "p_shawn3", "p_ddtblu", "p_ddtbl2", "p_ddtbl3", 
	"p_in_cit", "p_dead", "p_dead2", "p_romero", "p_romer2", "p_messag", "p_messg2", "p_ampie", "p_adrian", 
	"p_tense", "p_openin", "p_evil", "p_ultima"
}

BRUTALDOOM.sigilsongs =
{
    "d_e5m1", "d_e5m2", "d_e5m3", "d_e5m4", "d_e5m5", "d_e5m6", "d_e5m7", "d_e5m8", "d_e5m9"
}

BRUTALDOOM.zd64music =
{
	"MAPWD01", "MAPWD02", "MAPWD03", "MAPWD04", "MAPWD05", "MAPWD06", "MAPWD07", "MAPWD08", "MAPWD09", "MAPWD10", "MAPWD11", "MAPWD12",
	"MAPWD13", "MAPWD14", "MAPWD15", "MAPWD16", "MAPWD17", "MAPWD18", "MAPWD19", "MAPWD20", "MAPWD21", "MAPWD22", "MAPWD23", "MAPWD24",
	"MAPWD25", "MAPWD26", "MAPWD27", "MAPWD28", "MAPWD29", "MAPWD30", "MAPWD31", "MAPWD32"
}

BRUTALDOOM.geiler_shit =
{
	"d_betwee", "d_dead", "d_dead2", "D_E1M1", "D_E1M4", "D_E1M9", "D_E2M1","D_E2M3","D_E2M8", "D_E3M2", "D_E3M3", "D_E3M8", "D_E3M9",
	"D_E5M1", "D_E5M2", "D_E5M8", "D_E5M9", "D_INTER", "D_RUNNI2", "D_SHAWN", "P_BETWEE", "P_DDTBL2", "P_DEAD2", "P_DOOM", "P_DOOM2",
	"P_IN_CIT", "P_ROMER2", "P_SHAWN", "P_SHAWN3", "P_STLKS3", "P_THEDA2", "T_COUNT2", "T_DDTBL3", "T_DDTBLU", "T_DEAD", "T_IN_CIT",
	"T_ROMER2", "T_RUNNI2", "T_RUNNIN", "T_STALKS", "T_STLKS2", "T_TENSE", "T_ULTIMA"
}

BRUTALDOOM.wolfmusic =
{
  songs = 
  {
	"DEATH", "EVIL", "FUNKIE", "FUNKYOU", "GETTHEM", "GETYOU", "GOINGAFT", "JAZNAZI", "NAZI_OMI", "PREGNANT", "PUTIT", "TIPTOE", 
	"ULTIMATE", "WONDERIN", "ZEROHOUR"
  }
}

BRUTALDOOM.doom_completesongs = {}

function BRUTALDOOM.doomcompleteallsongs()
    for k,v in pairs(BRUTALDOOM.doom1songs) do table.insert(BRUTALDOOM.doom_completesongs, v) end
    for k,v in pairs(BRUTALDOOM.tntsongs) do table.insert(BRUTALDOOM.doom_completesongs, v) end
    for k,v in pairs(BRUTALDOOM.plutoniasongs) do table.insert(BRUTALDOOM.doom_completesongs, v) end
    for k,v in pairs(BRUTALDOOM.sigilsongs) do table.insert(BRUTALDOOM.doom_completesongs, v) end
end

function BRUTALDOOM.mergesongs()

    BRUTALDOOM.doomcompleteallsongs()
    BRUTALDOOM.music.songs=BRUTALDOOM.doom2songs
    
    if PARAM.MUSIC_PRESETS == "iwad" and OB_CONFIG.iwad_usage == "complete" then
        for k,v in pairs(BRUTALDOOM.doom_completesongs) do table.insert(BRUTALDOOM.music.songs, v) end
    end
    if PARAM.MUSIC_PRESETS == "doom1" then --just doom1 songs
        BRUTALDOOM.music.songs=BRUTALDOOM.doom1songs
    end
	if PARAM.MUSIC_PRESETS == "ZD64MUSIC" then --just the songs in ZD64MUSIC.PK3, which are named differently.
        BRUTALDOOM.music.songs=BRUTALDOOM.zd64music
    end
	if PARAM.MUSIC_PRESETS == "favorit" and OB_CONFIG.iwad_usage == "complete" then --geiler shit :)
        BRUTALDOOM.music.songs=BRUTALDOOM.geiler_shit
    end	
	gui.printf("\n--==| Brutal Doom Music Module |==--\n\n")    
    gui.printf("Music Preset: " .. PARAM.MUSIC_PRESETS .." (" .. OB_CONFIG.iwad_usage .. ")" .. "\n")
	gui.printf("Songs: \n" .. table.tostring(BRUTALDOOM.music) .."\n\n")
end