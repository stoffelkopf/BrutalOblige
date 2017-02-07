gui.import("brutaldoom")

BD64MAPS = { }

BD64MAPS.deathmatchmusic =
{
    "dmmus1", "dmmus2", "dmmus3", "dmmus4", "dmmus5"
}

BD64MAPS.PARAMETERS =
{
	usedeathmatchmusic = true
}

function BD64MAPS.mergesongs()
	if BRUTALDOOM.PARAMETERS.usedeathmatchmusic == true then
        for k,v in pairs(BD64MAPS.deathmatchmusic) do table.insert(BRUTAL64.music.songs, v) end
    end
end

function BD64MAPS.setup()
end

function BD64MAPS.all_done()
	BD64MAPS.mergesongs();
end

OB_MODULES["brutal64maps"] =
{
  label = "Brutal Doom 64 maps"

  game = { brutaldoom=1, brutal64=1 }
  playmode = { sp=1, coop=1 }
  
  hooks =
  {
    setup = BD64MAPS.setup
    all_done = BD64MAPS.all_done
  }

  tables =
  {
    BD64MAPS
  }
}