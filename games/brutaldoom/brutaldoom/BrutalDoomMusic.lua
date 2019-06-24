BRUTALDOOM.music =
{
    songs =
    {
        "d_runnin"
    }
}

BRUTALDOOM.doom2songs =
{
    "d_runnin", "d_runni2", "d_stalks", "d_stlks2", "d_stlks3", "d_countd", "d_count2", "d_betwee", "d_doom", "d_doom2", "d_the_da", "d_theda2", "d_theda3", "d_shawn", "d_shawn2", "d_shawn3", "d_ddtblu", "d_ddtbl2", "d_ddtbl3", "d_in_cit", "d_dead", "d_dead2", "d_romero", "d_romer2", "d_messag", "d_messg2", "d_ampie", "d_adrian", "d_tense", "d_openin", 
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
    "t_runnin", "t_runni2", "t_stalks", "t_stlks2", "t_stlks3", "t_countd", "t_count2", "t_betwee", "t_doom", "t_doom2", "t_the_da", "t_theda2", "t_theda3", "t_shawn", "t_shawn2", "t_shawn3", "t_ddtblu", "t_ddtbl2", "t_ddtbl3", "t_in_cit", "t_dead", "t_dead2", "t_romero", "t_romer2", "t_messag", "t_messg2", "t_ampie", "t_adrian", "t_tense", "t_openin", "t_evil", "t_ultima"
}
BRUTALDOOM.plutoniasongs =
{
    "p_runnin", "p_runni2", "p_stalks", "p_stlks2", "p_stlks3", "p_countd", "p_count2", "p_betwee", "p_doom", "p_doom2", "p_the_da", "p_theda2", "p_theda3", "p_shawn", "p_shawn2", "p_shawn3", "p_ddtblu", "p_ddtbl2", "p_ddtbl3", "p_in_cit", "p_dead", "p_dead2", "p_romero", "p_romer2", "p_messag", "p_messg2", "p_ampie", "p_adrian", "p_tense", "p_openin", "p_evil", "p_ultima"
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

BRUTALDOOM.musicpresets =
{
    "iwad", "All music in the iwad"
    "doom2",    "Doom 2 only"
    "doommetal",    "Doom Metal Vol 5"
    "idkfa",    "IDKFA"
    "generic",  "Unspecified music mod (Doom 1 and 2 tracks)"
    "doom1",    "Doom 1 music mod"
	"ZD64MUSIC", "Doom 64"
}

BRUTALDOOM.doom_completesongs = {}

function BRUTALDOOM.doomcompleteallsongs()
    for k,v in pairs(BRUTALDOOM.doom1songs) do table.insert(BRUTALDOOM.doom_completesongs, v) end
    for k,v in pairs(BRUTALDOOM.tntsongs) do table.insert(BRUTALDOOM.doom_completesongs, v) end
    for k,v in pairs(BRUTALDOOM.plutoniasongs) do table.insert(BRUTALDOOM.doom_completesongs, v) end
    for k,v in pairs(BRUTALDOOM.sigilsongs) do table.insert(BRUTALDOOM.doom_completesongs, v) end
end

function BRUTALDOOM.mergesongs()
    --defaults, update with fine control versions later
    BRUTALDOOM.doomcompleteallsongs()
    BRUTALDOOM.music.songs=BRUTALDOOM.doom2songs
    
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
    gui.printf("Music: \n" .. table.tostring(BRUTALDOOM.music) ..'\n')
end
