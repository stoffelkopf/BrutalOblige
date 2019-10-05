BRUTALDOOM.MAPINFO = { }

function BRUTALDOOM.create_mapinfo()
    gui.printf("Mapinfo code is starting\n");
	
    
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
    		CastClass = "CastCallEasyMarine"
    		CastName = "Evil Grunt"
    		AttackSound = "Missile", 1, "grunt/attack"
    	}
        Cast
    	{
    		CastClass = "CastCallEvilMarine"
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
    		CastClass = "CastCallBelphegor"
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
    		CastClass = "CastCallHectebus"
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
    '\n'
    'GameInfo\n'
    '{\n'
    'AddEventHandlers = "BrutalObligeHandler"\n'
    '}\n\n'
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
    
  gui.printf("dest: \n" .. table.tostring(dest) ..'\n')
    
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

      local sky1 = 'sky1 = "'
      local skyname = 'RSKY1'
      local enterpic = '"INTERPIC"' --default intermissionpic
      
      --Choose Sky texture
      local skytab = BRUTALDOOM.SKIES[ L.theme_name ]
      if not skytab or OB_CONFIG.game == "brutality" then --i.e. if no entry for the theme in BrutalDoomSkies.lua
          skytab = BRUTALDOOM.SKIES.any
      end
      
      skyname = skytab[ rand.irange(1,#skytab) ]
      
        sky1 = sky1 .. skyname .. '"\n'
        
    --Choose Intermission pic
    local intptab = BRUTALDOOM.INTERPICS[ L.theme_name ]
      if not intptab or OB_CONFIG.game == "brutality" then --i.e. if no entry for the theme in BrutalDoomSkies.lua
          intptab = BRUTALDOOM.INTERPICS.any
      end
      
      enterpic = intptab[ rand.irange(1,#intptab) ]
	  
	  --Universal Intermission Screen
	  if BRUTALDOOM.PARAMETERS.usingui == true then
		enterpic = '"$BINTM"'
	  end

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
	  table.insert(data, 'LevelNum = ' .. mapnum .. "\n")
      table.insert(data, 'EnterPic = ' .. enterpic)
      table.insert(data, 'ExitPic = ' .. enterpic)
	  if BRUTALDOOM.PARAMETERS.usingextrakeys == true then
		table.insert(data, 'Translator = "OBXLAT"')
	  end
      table.insert(data, 'cluster = 10\n')
      if #dest >= mapnum then
          table.insert(data, 'music = "' .. dest[mapnum] .. '"\n')
      else
          table.insert(data, 'music = "' .. dest[rand.irange(1,#dest)] .. '"\n')
      end
      mapnum = mapnum + 1
    end
  end -- for L

  if mapnum == 33 then --second secret level (chex)
    table.insert(data, 'next = "BOM' .. tostring(secretexit2 + 1) .. '"\n')
  else
    table.insert(data, 'next = EndSequence, "Brutal_FinalIntermission"\n') --last map ends the game unless it is a secret level (ie anything more or less than full game)
  end
  table.insert(data, "}\n"); --close final map definition
  
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
  if BRUTALDOOM.PARAMETERS.usingui == true then
	data[i] = string.gsub(data[i], '"INTERPIC"//changeifdoomcomplete','"$BINTM"')
  end
  if BRUTALDOOM.PARAMETERS.iwad == "doom_complete.pk3" then
      data[i] = string.gsub(data[i], '"INTERPIC"//changeifdoomcomplete','"INTER_E4"')
      if BRUTALDOOM.PARAMETERS.musicpreset == "iwad" then
          data[i] = string.gsub(data[i], '"d_messag"//changeifdoommetal','"d_e2m8"')
          data[i] = string.gsub(data[i], '"d_openin"//changeifdoommetal','"d_e3m8"')
      end
  end
  if OB_CONFIG.game == "brutality" then
      data[i] = string.gsub(data[i], 'episode bom01','episode map01')
  end
end

if BRUTALDOOM.PARAMETERS.starterpack == true then
    gui.wad_add_text_lump("BASEMI", data);
else
    gui.wad_add_text_lump("MAPINFO", data);
end

end
