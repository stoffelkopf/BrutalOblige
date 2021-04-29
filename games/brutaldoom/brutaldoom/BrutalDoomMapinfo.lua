BRUTALDOOM.MAPINFO = { }

function BRUTALDOOM.create_mapinfo()
    gui.printf("Mapinfo code is starting\n");

    local fog_color = ''
    local fog_intensity = "48"

  local function create_episode_selection()
	
	local episode_selection = ''

	each EPI in GAME.episodes do
		if table.empty(EPI.levels) then continue end
		if _index == 1 then 
			episode_selection = '\nepisode MAP01 {\n name = "' .. EPI.description .. '"\n}\n'
		end
		if _index == 2 then 
			episode_selection = episode_selection .. 'episode MAP12 {\n name = "' .. EPI.description .. '"\n}\n'
		end
		if _index == 3 then 
			episode_selection = episode_selection .. 'episode MAP21 {\n name = "' .. EPI.description .. '"\n}\n'
		end			
		episode_selection = episode_selection .. '\n'
	end
	return episode_selection	
  end
  
  local function pick_sky_color_from_skygen_map(skytable, cur_level)
    local color

    local skyname = skytable[cur_level]

    if skyname == "SKY_CLOUDS" then
      color = "a7 c3 ef"
    elseif skyname == "BLUE_CLOUDS" then
      color = "17 4f a8"
    elseif skyname == "WHITE_CLOUDS" then
      color = "f2 f4 f7"
    elseif skyname == "GREY_CLOUDS" then
      color = "9d 9e a0"
    elseif skyname == "DARK_CLOUDS" then
      color = "4f 50 51"
    elseif skyname == "BROWN_CLOUDS" then
      color = "ba 68 1b"
    elseif skyname == "BROWNISH_CLOUDS" then
      color = "ba 85 53"
    elseif skyname == "PEACH_CLOUDS" then
      color = "d3 b1 bb"
    elseif skyname == "YELLOW_CLOUDS" then
      color = "db dd 44"
    elseif skyname == "ORANGE_CLOUDS" then
      color = "d3 95 5b"
    elseif skyname == "GREEN_CLOUDS" then
      color = "76 ce 40"
    elseif skyname == "JADE_CLOUDS" then
      color = "92 c4 73"
    elseif skyname == "DARKRED_CLOUDS" then
      color = "9e 1b 0c"
    elseif skyname == "HELLISH_CLOUDS" then
      color = "d8 27 13"
    elseif skyname == "HELL_CLOUDS" then
      color = "d8 27 13"
    elseif skyname == "STARS" then
      color = "00 00 00"
    else
      color = "00 00 00"
    end

    if color then
      return color
    else
      gui.printf("\nCould not resolve skybox generator color.\n")
      return "00 00 00"
    end
  end
  
 local function pick_random_fog_color()
    local function give_random_hex()
      return rand.pick({'0','1','2','3','4','5','6','8','9','a','b','c','d','e','f'})
    end
    local octet1 = give_random_hex() .. give_random_hex()
    local octet2 = give_random_hex() .. give_random_hex()
    local octet3 = give_random_hex() .. give_random_hex()
    return octet1 .. " " .. octet2 .. " " .. octet3
  end

local function rgbToHex(rgb)
	local hexadecimal = '0X'

	for key, value in pairs(rgb) do
		local hex = ''

		while(value > 0)do
			local index = math.fmod(value, 16) + 1
			value = math.floor(value / 16)
			hex = string.sub('0123456789ABCDEF', index, index) .. hex			
		end

		if(string.len(hex) == 0)then
			hex = '00'

		elseif(string.len(hex) == 1)then
			hex = '0' .. hex
		end

		hexadecimal = hexadecimal .. hex
	end
	return hexadecimal
end

local function pick_random_real_fog()
	red = rand.irange(0,35)
	green = rand.irange(0,35)
	blue = rand.irange(0,35)

	colstr = rgbToHex({red, green, blue})
        rstr = string.sub(colstr,3,4)
        gstr = string.sub(colstr,5,6)
        bstr = string.sub(colstr,7,8)
        return rstr .. " " .. gstr .. " " ..  bstr
end  
  
local id_number =
[[
	DoomEdNums
	{
		10301 = Hellion
		10302 = HellWarrior
		10304 = SnakeImp
		10305 = Roach
		10306 = Hierophant
		10307 = DemonDog
		10311 = Azazel
	}
]]

local id_number_realm667 =
[[
	DoomEdNums
	{
		10301 = Hellion
		10302 = HellWarrior
		10304 = SnakeImp
		10305 = Roach
		10306 = Hierophant
		10307 = DemonDog
		10311 = Azazel
		10501 = Arachnophyte
		10502 = AracnorbQueen
		10503 = BFGGuy
		10504 = Cyberbaron
		10505 = Haedexebus
		10506 = Terror
		10507 = ForgottenOne
		10508 = BloodDemonClone
		10509 = CGunSpider
		10510 = cyberImp
		10511 = Cybruiser
		10512 = QuadShotgunZombie
		10513 = RocketImp 
		10514 = MaulerDemon
		10515 = LordofHeresy
		10516 = CrackoDemon
		10517 = Terminator
		10518 = SupremeFiend 
		10519 = OverLord
		10520 = Helemental		
	}
]]
				
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

--    "clearepisodes\n\n"
--    'episode MAP01\n'
--    '{\n'
--    'name = "Brutal Oblige"\n'
--    '}\n\n'
  
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
    'map E2M8 "Tower of Babel" //brutality\n'
    '{\n'
    'next = "MAP0' .. tostring(secretexit1 + 1) .. '"\n'
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
    'next = "MAP' .. tostring(secretexit3 + 1) .. '"\n'
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
    'next = "MAP0' .. tostring(secretexit1 + 1) .. '"\n'
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
    'next = "MAP' .. tostring(secretexit3 + 1) .. '"\n'
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

  if PARAM.episode_sky_color then
	gui.printf("Brutal Doom Skies: Using Skies from Sky Generator.\n")
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
        id = "MAP" .. L.name

      else
        local pos = 4
        if string.sub(L.name, pos, pos) == '0' then
          pos = pos + 1
        end
        -- Doom II / Final Doom : HUSTR_%d
        id = "MAP" .. string.sub(L.name, pos)
      end
      local nextmap = 'next = "' .. L.name ..'"\n'

      local sky1 = 'sky1 = "'
      local skyname = 'SKY1'
      local enterpic = '"INTERPIC"' --default intermissionpic
	  if PARAM.episode_sky_color then
	    if mapnum <= 11 then
			skyname = "RSKY1"
		elseif mapnum > 11 and mapnum <= 20 then
			skyname = "RSKY2"
		elseif mapnum > 20 then
			skyname = "RSKY3"
		end
	  else
	  	gui.printf("Brutal Doom Skies: Using Random Skies from Wad.\n")
		local skytab = BRUTALDOOM.SKIES[ L.theme_name ]
		if not skytab then --i.e. if no entry for the theme in BrutalDoomSkies.lua
          skytab = BRUTALDOOM.SKIES.any
		end
		skyname = skytab[ rand.irange(1,#skytab) ]
	  end
      

      
      sky1 = sky1 .. skyname .. '"\n'
--GZDoom Specials
    if not PARAM.episode_sky_color and PARAM.fog_generator == "per_sky_gen" then
      gui.printf("WARNING: User set fog color to be set by Sky Generator " ..
      "but Sky Generator is turned off! Behavior will now be Random instead.\n")
      PARAM.fog_generator = "random"
    end

    if PARAM.fog_generator == "per_sky_gen" then
      if mapnum <= 11 then
        fog_color = pick_sky_color_from_skygen_map(PARAM.episode_sky_color,1)
      elseif mapnum > 11 and mapnum <= 20 then
        fog_color = pick_sky_color_from_skygen_map(PARAM.episode_sky_color,2)
      elseif mapnum > 20 then
        fog_color = pick_sky_color_from_skygen_map(PARAM.episode_sky_color,3)
      end
    elseif PARAM.fog_generator == "random" then
      fog_color = pick_random_fog_color()
    elseif PARAM.fog_generator == "dark" then
      fog_color = pick_random_real_fog()  
    else
      fog_color = ""
    end
	local fog_color_line = '  fade = "' .. fog_color .. '"\n'
	
    -- resolve fog intensity
    if PARAM.fog_intensity == "subtle" then
      fog_intensity = "16"
    elseif PARAM.fog_intensity == "misty" then
      fog_intensity = "48"
    elseif PARAM.fog_intensity == "smoky" then
      fog_intensity = "128"
    elseif PARAM.fog_intensity == "foggy" then
      fog_intensity = "255"
    elseif PARAM.fog_intensity == "dense" then
      fog_intensity = "368"
    elseif PARAM.fog_intensity == "mixed" then
      fog_intensity = "" .. rand.irange(16,368)
    end

    local fog_intensity_line = '  fogdensity = ' .. fog_intensity .. '\n'

    -- fog forced to outdoors only
    if PARAM.fog_env == "outdoor" then
      fog_color_line = '  OutsideFog  = "' .. fog_color .. '"\n'
      fog_intensity_line = '  outsidefogdensity = ' .. fog_intensity .. '\n'
    end

    -- if fog tints sky, based on ZDoom GL specs
    if PARAM.fog_affects_sky == "yes" then
      fog_intensity_line = fog_intensity_line .. '  skyfog = ' .. fog_intensity + 16 .. '\n'
    end

    -- no fog in MAPINFO at all if the fog generator is off
    if PARAM.fog_generator == "no" then
      fog_color_line = ""
      fog_intensity_line = ""
    end  
	
	
	
      local intptab = BRUTALDOOM.INTERPICS[ L.theme_name ]
      if not intptab then --i.e. if no entry for the theme in BrutalDoomInterpics.lua
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
          table.insert(data, 'secretnext = "MAP31"\n')
        end
        if mapnum < 11 then --give map 8 a secret exit to tower of bable (included in the brutal and brutality pk3s)
	  if boss1 == "cyberlordmajor" then --if big CyberLord at babel then make that the second boss battle 
	    if OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E3M10"\n')
	    end
	  else
	    if OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E5M8"\n')
	    end
	  end
        end
        if mapnum >= 21 and mapnum < 30 then --give map 24 a secret exit to spider mastermind battle (included in the brutal and brutality pk3s)
	  if boss1 == "cyberlordmajor" then --if big CyberLord at babel then make this the first boss battle 
	    if OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E5M8"\n')
	    end
	  else
	    if OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E3M10"\n')
	    end
	  end
        end
        if mapnum == 32 then --first secret level (wolf)
          table.insert(data, 'next = "MAP' .. tostring(secretexit2 + 1) .. '"\n')
          table.insert(data, 'secretnext = "MAP32"\n')
        end
        table.insert(data, '\n}\n') --close last map's definition
      else
        firstmap = 0
      end

      --open definition for map
      table.insert(data, string.format("%s %s\n{\n", "map", text))
      --enter map information
      table.insert(data, sky1)
      table.insert(data, fog_color_line)
      table.insert(data, fog_intensity_line)
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
	  if OB_CONFIG.prebuilt_levels == "yes" then
	    if mapnum == 4 then
		  if BRUTALDOOM.PARAMETERS.BOSSX == "cyber" then
		    table.insert(data, 'SpecialAction = "CyberDemon", "Exit_Normal", 0\n')
		  elseif BRUTALDOOM.PARAMETERS.BOSSX == "spider" then
		     table.insert(data, 'SpecialAction = "SpiderMastermind", "Exit_Normal", 0\n')
		  elseif BRUTALDOOM.PARAMETERS.BOSSX == "baron" then
		     table.insert(data, 'BaronSpecial\nSpecialAction_LowerFloor\n')		
		  elseif BRUTALDOOM.PARAMETERS.BOSSX == "belphegor_floor" then
		     table.insert(data, 'SpecialAction = "ObligeBelphegor", "Floor_LowerToLowest",666, 2\n')					 
		  end
		elseif mapnum == 11 then
		  if BRUTALDOOM.PARAMETERS.BOSS1 == "cyber" then
		    table.insert(data, 'SpecialAction = "CyberDemon", "Exit_Normal", 0\n')
		  elseif BRUTALDOOM.PARAMETERS.BOSS1 == "spider" then
		    table.insert(data, 'SpecialAction = "SpiderMastermind", "Exit_Normal", 0\n')
		  elseif BRUTALDOOM.PARAMETERS.BOSS1 == "baron" then
		     table.insert(data, 'BaronSpecial\nSpecialAction_LowerFloor\n')		
		  elseif BRUTALDOOM.PARAMETERS.BOSS1 == "belphegor_floor" then
		     table.insert(data, 'SpecialAction = "ObligeBelphegor", "Floor_LowerToLowest",666, 2\n')					 
		  end
	    elseif mapnum == 20 then
		  if BRUTALDOOM.PARAMETERS.BOSS2 == "cyber" then
		    table.insert(data, 'SpecialAction = "CyberDemon", "Exit_Normal", 0\n')
		  elseif BRUTALDOOM.PARAMETERS.BOSS2 == "spider" then
		     table.insert(data, 'SpecialAction = "SpiderMastermind", "Exit_Normal", 0\n')
		  elseif BRUTALDOOM.PARAMETERS.BOSS2 == "baron" then
		     table.insert(data, 'BaronSpecial\nSpecialAction_LowerFloor\n')		
		  elseif BRUTALDOOM.PARAMETERS.BOSS2 == "belphegor_floor" then
		     table.insert(data, 'SpecialAction = "ObligeBelphegor", "Floor_LowerToLowest",666, 2\n')					 
		  end  
	    elseif mapnum == 30 then
		  if BRUTALDOOM.PARAMETERS.BOSS3 == "cyber" then
		    table.insert(data, 'SpecialAction = "CyberDemon", "Exit_Normal", 0\n')
		  elseif BRUTALDOOM.PARAMETERS.BOSS3 == "spider" then
		    table.insert(data, 'SpecialAction = "SpiderMastermind", "Exit_Normal", 0\n')
		  elseif BRUTALDOOM.PARAMETERS.BOSS3 == "baron" then
		    table.insert(data, 'BaronSpecial\nSpecialAction_LowerFloor\n')		
		  elseif BRUTALDOOM.PARAMETERS.BOSS3 == "belphegor_floor" then
		    table.insert(data, 'SpecialAction = "ObligeBelphegor", "Floor_LowerToLowest",666, 2\n')					 
		  end		  
		end
	  end
      mapnum = mapnum + 1
    end
  end -- for L

  if mapnum == 33 then --second secret level (chex)
    table.insert(data, 'next = "MAP' .. tostring(secretexit2 + 1) .. '"\n')
  else
    table.insert(data, 'next = EndSequence, "Brutal_FinalIntermission"\n') --last map ends the game unless it is a secret level (ie anything more or less than full game)
  end
  table.insert(data, "}\n"); --close final map definition
  
  if PARAM.bdepi == "yes" then
	table.insert(data,create_episode_selection())  
  end
    
  --insert final intermission
  table.insert(data, castcall)
  
  --insert DoomEdNums 
  if BRUTALDOOM.PARAMETERS.realm667 == true then   
	table.insert(data, id_number_realm667)  
  else
    table.insert(data, id_number)  
  end
  
--make sure there are no 0s in stupid places
for i = 1, (#data) do --for every value in data
  data[i] = string.gsub(data[i], '"MAP010"','"MAP10"')
  data[i] = string.gsub(data[i], '"MAP011"','"MAP11"')
  data[i] = string.gsub(data[i], '"MAP012"','"MAP12"')
  data[i] = string.gsub(data[i], '"MAP013"','"MAP13"')
  data[i] = string.gsub(data[i], '"MAP014"','"MAP14"')
  data[i] = string.gsub(data[i], '"MAP015"','"MAP15"')
  data[i] = string.gsub(data[i], '"MAP016"','"MAP16"')
  data[i] = string.gsub(data[i], '"MAP017"','"MAP17"')
  data[i] = string.gsub(data[i], '"MAP018"','"MAP18"')
  data[i] = string.gsub(data[i], '"MAP019"','"MAP19"')
  data[i] = string.gsub(data[i], '"MAP020"','"MAP20"')
  data[i] = string.gsub(data[i], '"MAP021"','"MAP21"')
  data[i] = string.gsub(data[i], '"MAP022"','"MAP22"')
  data[i] = string.gsub(data[i], '"MAP023"','"MAP23"')
  data[i] = string.gsub(data[i], '"MAP024"','"MAP24"')
  data[i] = string.gsub(data[i], '"MAP025"','"MAP25"')
  data[i] = string.gsub(data[i], '"MAP026"','"MAP26"')
  data[i] = string.gsub(data[i], '"MAP027"','"MAP27"')
  data[i] = string.gsub(data[i], '"MAP028"','"MAP28"')
  data[i] = string.gsub(data[i], '"MAP029"','"MAP29"')
  data[i] = string.gsub(data[i], '"MAP030"','"MAP30"')
  data[i] = string.gsub(data[i], '"MAP031"','"MAP31"')
  data[i] = string.gsub(data[i], '"MAP032"','"MAP32"')
  data[i] = string.gsub(data[i], '"MAP1"','"MAP01"')
  data[i] = string.gsub(data[i], '"MAP2"','"MAP02"')
  data[i] = string.gsub(data[i], '"MAP3"','"MAP03"')
  data[i] = string.gsub(data[i], '"MAP4"','"MAP04"')
  data[i] = string.gsub(data[i], '"MAP5"','"MAP05"')
  data[i] = string.gsub(data[i], '"MAP6"','"MAP06"')
  data[i] = string.gsub(data[i], '"MAP7"','"MAP07"')
  data[i] = string.gsub(data[i], '"MAP8"','"MAP08"')
  data[i] = string.gsub(data[i], '"MAP9"','"MAP09"')
  --change interpics for babel and dis if using Universial Intermissions
  if BRUTALDOOM.PARAMETERS.usingui == true then
	data[i] = string.gsub(data[i], '"INTERPIC"//changeifdoomcomplete','"$BINTM"')
  end
  if OB_CONFIG.iwad_usage == "complete" then
      data[i] = string.gsub(data[i], '"INTERPIC"//changeifdoomcomplete','"INTER_E4"')
      if BRUTALDOOM.PARAMETERS.musicpreset == "iwad" then
          data[i] = string.gsub(data[i], '"d_messag"//changeifdoommetal','"d_e2m8"')
          data[i] = string.gsub(data[i], '"d_openin"//changeifdoommetal','"d_e3m8"')
      end
  end
end
gui.wad_add_text_lump("MAPINFO", data);
end
