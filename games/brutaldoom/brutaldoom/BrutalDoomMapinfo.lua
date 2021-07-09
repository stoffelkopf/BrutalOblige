BRUTALDOOM.MAPINFO = { }

function BRUTALDOOM.create_mapinfo()
    gui.printf("Mapinfo code is starting\n");

    local fog_color = ''
    local fog_intensity = "48"

  local function create_episode_selection()
	
	local episode_selection = ''
	if PARAM.bdepi == "yes" then
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
	else
		episode_selection = '\nepisode MAP01 {\n  name = "Gurksaft!"\n}\n\n'
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
}
]]

local id_number_realm667 =
[[
DoomEdNums
{
	10307 = DemonDog
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
				  
  gui.printf("Mapinfo code is running\n");
 
  local data =
  {
    "//\n"
    "// MAPINFO LUMP created by OBLIGE\n"
    "//\n"
    "//Secret exits are in maps " .. tostring(secretexit1) .. ', 15 and ' .. tostring(secretexit3) .. '\n'
    '\n'
    'GameInfo\n'
    '{\n'
    '  AddEventHandlers = "BrutalObligeHandler"\n'
    '}\n\n'
    "clearepisodes\n\n"
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

  gui.printf("\n--==| Brutal Doom Music Shuffler |==--\n\n") 
  gui.printf("Shuffled Songs: \n" .. table.tostring(dest) ..'\n\n')

  local epi_wolf = BRUTALDOOM.wolfmusic
  local dest_wolf = { }
  
  gui.printf("Wolf Songs: \n" .. table.tostring(epi_wolf) ..'\n\n')
  
  each _,src in epi_wolf do
    dest_wolf = table.copy(src)
	
    -- this shuffle algorithm ensures first entry is never the same
    --once again I can't quite work out the code so I have left this even though I only need half of it
    
	for i = 1, (#dest_wolf) do
      local k = rand.irange(i + 1, #dest_wolf)
      dest_wolf[i], dest_wolf[k] = dest_wolf[k], dest_wolf[i]
    end
  end
  
  gui.printf("\n--==| Brutal Doom Wolf Music Shuffler |==--\n\n") 
  gui.printf("Shuffled Wolf Songs: \n" .. table.tostring(dest_wolf) ..'\n\n')
  

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
      local nextmap = '  next = "' .. L.name ..'"\n'
      local sky1 = '  sky1 = "'
      local skyname = '  SKY1'
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
	  
	    if mapnum < 31 then 
          if OB_CONFIG.length == "episode" and mapnum == 12 then 
            if OB_CONFIG.iwad_usage == "complete" then
              table.insert(data, '  next = EndPic, "ENDPIC"\n') -- Doom Complete Endpic
            else
              table.insert(data, '  next = Endpic, "PFUB2"\n') -- Doom2 Endpic
            end	  
		  else		
		    table.insert(data, nextmap)
		  end
        else
  	      if mapnum != 32 and mapnum != 33 and mapnum != 34 and mapnum != 35 then
            if OB_CONFIG.iwad_usage == "complete" then
              table.insert(data, '  next = EndPic, "ENDPIC"\n') -- Doom Complete Endpic
            else
              table.insert(data, '  next = Endpic, "PFUB2"\n') -- Doom2 Endpic
            end
	      end
		end

        if mapnum > 11 and mapnum < 20 then -- Secret Exit to Wolfenstein Level          
		  table.insert(data, '  secretnext = "MAP31"\n')
        end
        
		if mapnum < 11 then 
          if OB_CONFIG.length == "episode" then 
		    table.insert(data, '  secretnext = "MAP12"\n')
		  else
		    table.insert(data, '  secretnext = "MAP33"\n')
		  end
        end
        
		if mapnum >= 21 and mapnum < 30 then
          table.insert(data, '  secretnext = "MAP34"\n')
        end
        
		if mapnum == 32 then 
          table.insert(data, '  next = "MAP16"\n')
          table.insert(data, '  secretnext = "MAP32"\n')
        end

		if mapnum == 33 then 
          table.insert(data, '  next = "MAP16"\n')
        end
		
		if mapnum == 34 then 
          table.insert(data, '  next = "MAP0' ..tostring(secretexit1 + 1) ..'"\n')
        end
     
		table.insert(data, '}\n\n') --close last map's definition
		
      else
        firstmap = 0
      end

      --open definition for map
      table.insert(data, string.format("%s %s\n{\n", "map", text))
      --enter map information
      table.insert(data, sky1)
      table.insert(data, fog_color_line)
      table.insert(data, fog_intensity_line)
	  if L.has_thunder then
	    table.insert(data, "  lightning\n")
	  end
	  table.insert(data, '  LevelNum = ' .. mapnum .. "\n")
      table.insert(data, '  EnterPic = ' .. enterpic)
      table.insert(data, '  ExitPic = ' .. enterpic)
	  if BRUTALDOOM.PARAMETERS.usingextrakeys == true then
		table.insert(data, 'Translator = "OBXLAT"')
	  end
      table.insert(data, '  cluster = 10\n')
      if L.theme_name == "wolf" then
        if #dest_wolf >= mapnum then
            table.insert(data, '  music = "' .. dest_wolf[mapnum] .. '"\n')
        else
            table.insert(data, '  music = "' .. dest_wolf[rand.irange(1,#dest_wolf)] .. '"\n')
        end
	  else
	    if #dest >= mapnum then
          table.insert(data, '  music = "' .. dest[mapnum] .. '"\n')
        else
          table.insert(data, '  music = "' .. dest[rand.irange(1,#dest)] .. '"\n')
        end
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

  if mapnum == 35 then 
    table.insert(data, '  next = "MAP' ..tostring(secretexit3 + 1) ..'"\n')
  elseif OB_CONFIG.length == "episode" and mapnum == 13 then 
    table.insert(data, '  next = "MAP' ..tostring(secretexit1 + 1) ..'"\n')
  else
    if OB_CONFIG.iwad_usage == "complete" then
      table.insert(data, '  next = EndPic, "ENDPIC"\n') -- Doom Complete Endpic
    else
      table.insert(data, '  next = Endpic, "PFUB2"\n') -- Doom2 Endpic
    end
  end
  table.insert(data, "}\n\n"); --close final map definition
  
  table.insert(data,create_episode_selection())  
     
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
  data[i] = string.gsub(data[i], '"MAP033"','"MAP34"')
  data[i] = string.gsub(data[i], '"MAP034"','"MAP34"')  
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
  end
end
gui.wad_add_text_lump("MAPINFO", data);
end
