-----------------------------------------------------------------------------
        --STARTERPACK--
-----------------------------------------------------------------------------

--Banners etc----------------------------------------------------------
function STARTERPACK.decorate()

  local data =
	{
		'actor NukemDecal1\n'
		'{\n'
		  'Radius 2\n'
		  'Height 2\n'
		  'Damage 0\n'
		  'Speed 100\n'
		  'Decal NUKEM\n'
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
		'actor NukemPainter 12400\n'
		'{\n'
		  '//$Category decals\n'
		  'Radius 36\n'
		  'Height 2\n'
		  '+NOINTERACTION\n'
		  '+NOGRAVITY\n'
		  'States\n'
		  '{\n'
		  'Spawn:\n'
			'TNT1 A 0\n'
			'TNT1 A 0 A_JumpIf(ceilingz-floorz<height,"End")\n'
			'TNT1 A 0 A_Jump(256,"Angle1","Angle2","Angle3","Angle4")\n'
			'Goto Paint\n'
		  'Angle1:\n'
		    	'TNT1 A 0 A_SetAngle(0)\n'
		    	'Goto Paint\n'
		  'Angle2:\n'
		    	'TNT1 A 0 A_SetAngle(90)\n'
		    	'Goto Paint\n'
		  'Angle3:\n'
		    	'TNT1 A 0 A_SetAngle(180)\n'
		    	'Goto Paint\n'
		  'Angle4:\n'
		    	'TNT1 A 0 A_SetAngle(270)\n'
		    	'Goto Paint\n'
		  'Paint:\n'
		    	'TNT1 A 1 A_SpawnItemEx ("NukemDecal1", 0, 0, 40, 100, 0, 0, 0, 0, 0)\n'
		    	'Goto End\n'
		  'End:\n'
			'TNT1 A -1\n'
		    	'Stop\n'
		  '}\n'
		'}\n'
		'actor GrafDecal : NukemDecal1\n'
		'{\n'
			'Decal GRAFFITI\n'
		'}\n'
		'actor GraffitiPainter : NukemPainter 12401\n'
		'{\n'
		  'States\n' --had to do all the states otherwise it did the nukem posters. Don't know why.
		  '{\n'
		  'Spawn:\n'
			'TNT1 A 0\n'
			'TNT1 A 0 A_JumpIf(ceilingz-floorz<height,"End")\n'
			'TNT1 A 0 A_Jump(256,"Angle1","Angle2","Angle3","Angle4")\n'
			'Goto Paint\n'
		  'Angle1:\n'
		    	'TNT1 A 0 A_SetAngle(0)\n'
		    	'Goto Paint\n'
		  'Angle2:\n'
		    	'TNT1 A 0 A_SetAngle(90)\n'
		    	'Goto Paint\n'
		  'Angle3:\n'
		    	'TNT1 A 0 A_SetAngle(180)\n'
		    	'Goto Paint\n'
		  'Angle4:\n'
		    	'TNT1 A 0 A_SetAngle(270)\n'
		    	'Goto Paint\n'
		  'Paint:\n'
		    	'TNT1 A 1 A_SpawnItemEx ("GrafDecal", 0, 0, random(0,40), 100, 0, 0, 0, 0, 0)\n'
		    	'Goto End\n'
		  'End:\n'
			'TNT1 A -1\n'
		    	'Stop\n'
		  '}\n'
		'}\n'
		'actor WolfDecal : NukemDecal1\n'
		'{\n'
			'Decal WOLF\n'
		'}\n'
		'actor WolfPainter : NukemPainter 12402\n'
		'{\n'
		  'States\n'
		  '{\n'
		  'Spawn:\n'
			'TNT1 A 0\n'
			'TNT1 A 0 A_JumpIf(ceilingz-floorz<height,"End")\n'
			'TNT1 A 0 A_Jump(256,"Angle1","Angle2","Angle3","Angle4")\n'
			'Goto Paint\n'
		  'Angle1:\n'
		    	'TNT1 A 0 A_SetAngle(0)\n'
		    	'Goto Paint\n'
		  'Angle2:\n'
		    	'TNT1 A 0 A_SetAngle(90)\n'
		    	'Goto Paint\n'
		  'Angle3:\n'
		    	'TNT1 A 0 A_SetAngle(180)\n'
		    	'Goto Paint\n'
		  'Angle4:\n'
		    	'TNT1 A 0 A_SetAngle(270)\n'
		    	'Goto Paint\n'
		  'Paint:\n'
		    	'TNT1 A 1 A_SpawnItemEx ("WolfDecal", 0, 0, 132, 100, 0, 0, 0, 0, 0)\n'
		    	'Goto End\n'
		  'End:\n'
			'TNT1 A -1\n'
		    	'Stop\n'
		  '}\n'
		'}\n'
        'actor ObligeGermanDog : GermanDog Replaces GermanDog\n'
        '{\n'
        '-CANUSEWALLS\n'
        '}\n'
	}


--chose the bosses
   local r = rand.irange(1,3)
   if r == 2 then
	boss1 = "infernal"
   elseif r == 3 then
	boss1 = "cyberlordmajor"
   end
   r = rand.irange(1,2)
   if r == 2 and boss1 != "cyberlordmajor" then
	boss2 = "cyberlordminor"
   end

   if boss1 == "infernal" then
	table.insert(data, 'ACTOR ObligeInfernal : Infernal replaces CyberdemonBoss\n{\n}\n')
   elseif boss1 == "cyberlordmajor" then
	table.insert(data, 'ACTOR ObligeCyberdemonLord : CyberdemonLord replaces CyberdemonBoss\n{\n}\n')
   end
   if boss2 == "cyberlordminor" then
	table.insert(data, 'ACTOR ObligeCyberdemonLordMinor : CyberdemonLordMinor replaces SuperMasterMind\n{\n}\n')
   end

    gui.wad_add_text_lump("DECORATE", data);
    
    local decaldata =
    {
	'decal NUKEM1\n'
	'{\n'
	'pic DNZPOS30\n'
	'}\n'
	'decal NUKEM2\n'
	'{\n'
	'pic DNZPOS04\n'
	'}\n'
	'decal NUKEM3\n'
	'{\n'
	'pic DNZPOS02\n'
	'}\n'
	'decal NUKEM4\n'
	'{\n'
	'pic DNZPOS03\n'
	'}\n'
	'decal NUKEM5\n'
	'{\n'
	'pic DNZPOS29\n'
	'}\n'
	'decal NUKEM6\n'
	'{\n'
	'pic DNZPOS05\n'
	'}\n'
	'decalgroup NUKEM\n'
	'{\n'
	'NUKEM1	2\n'
	'NUKEM2	2\n'
	'NUKEM3	2\n'
	'NUKEM4	2\n'
	'NUKEM5	1\n'
	'NUKEM6	1\n'
	'}\n'
	--in no particular order....
	'decal GRAFFITI1\n'
	'{\n'
	'pic DNPIX1\n'
	'}\n'
	'decal GRAFFITI2\n'
	'{\n'
	'pic DNPIX2\n'
	'}\n'
	'decal GRAFFITI3\n'
	'{\n'
	'pic DNPIX3\n'
	'}\n'
	'decal GRAFFITI4\n'
	'{\n'
	'pic DNPIX4\n'
	'}\n'
	'decal GRAFFITI5\n'
	'{\n'
	'pic DNPIX5\n'
	'randomflipx\n'
	'}\n'
	'decal GRAFFITI6\n'
	'{\n'
	'pic DNPIX5\n'
	'shade "ff 00 00"\n'
	'}\n'
	'decal GRAFFITI7\n'
	'{\n'
	'pic DNPIX5\n'
	'randomflipx\n'
	'x-scale 0.25\n'
	'y-scale 0.25\n'
	'}\n'
	'decal GRAFFITI8\n'
	'{\n'
	'pic DNPIX5\n'
	'randomflipx\n'
	'x-scale 1.25\n'
	'y-scale 1.25\n'
	'}\n'
	'decal GRAFFITI9\n'
	'{\n'
	'pic DNPIX1\n'
	'x-scale 1.5\n'
	'y-scale 1.5\n'
	'}\n'
	'decal GRAFFITI10\n'
	'{\n'
	'pic DNPIX1\n'
	'x-scale 0.75\n'
	'y-scale 0.75\n'
	'}\n'
	'decal GRAFFITI11\n'
	'{\n'
	'pic DNPIX11\n'
	'shade "ff 00 00"\n'
	'x-scale 1.25\n'
	'y-scale 1.25\n'
	'}\n'
	'decalgroup GRAFFITI\n'
	'{\n'
	'GRAFFITI1	1\n'
	'GRAFFITI2	1\n'
	'GRAFFITI3	1\n'
	'GRAFFITI4	1\n'
	'GRAFFITI5	1\n'
	'GRAFFITI6	1\n'
	'GRAFFITI7	1\n'
	'GRAFFITI8	1\n'
	'GRAFFITI9	1\n'
	'GRAFFITI10	1\n'
	'GRAFFITI11	1\n'
	'}\n'
	--wolfenstein
	'decal WOLF1\n'
	'{\n'
	'pic ZZNAZIA\n'
	'}\n'
	'decal WOLF2\n'
	'{\n'
	'pic ZZNAZIB\n'
	'}\n'
	'decal WOLF3\n'
	'{\n'
	'pic ZZNAZIC\n'
	'}\n'
	'decal WOLF4\n'
	'{\n'
	'pic ZZNAZID\n'
	'}\n'
	'decal WOLF5\n'
	'{\n'
	'pic ZZNAZIE\n'
	'}\n'
	'decal WOLF6\n'
	'{\n'
	'pic ZZNAZIF\n'
	'}\n'
	'decalgroup WOLF\n'
	'{\n'
	'WOLF1	1\n'
	'WOLF2	1\n'
	'WOLF3	1\n'
	'}\n'
    }
    gui.wad_add_text_lump("DECALDEF", decaldata);
end

--[[STARTERPACK.PICKUPS =
{
	  nukembanners =
	  {
	    	id = 12400
		r = 36
		h = 128
	    	kind = "health"  --not ideal but it works
	    	rank = 1
	    	add_prob = 0
	    	give = { {health=1} } --so it doesn't screw the player by not having any actual health packs
		theme = "nukem"
		theme_prob = 50--50 --because I'm rubbish at lua add_prob must always be zero and enter the desired prob as theme_prob if you want it theme specific 
	  }
	  graffiti =
	  {
	    	id = 12401
		r = 36
		h = 128
	    	kind = "health"  --not ideal but it works
	    	rank = 1
	    	add_prob = 0
	    	give = { {health=1} } --so it doesn't screw the player by not having any actual health packs
		theme = "nukem"
		theme_prob = 200
	  }
}

STARTERPACK.EXTRASTUFF =
{
	  trashcan1 =
	  {
	    	id = 1312
		r = 8
		h = 16
	    	add_prob = 50
		theme = "urban"
		theme_prob = 50
	  }
	  trashbag =
	  {
	    	id = 1315
		r = 12
		h = 16
	    	add_prob = 200
		theme = "urban"
		theme_prob = 75
	  }
	  extinguisher =
	  {
	    	id = 1281
		r = 12
		h = 16
	    	add_prob = 50
		theme = "urban"
		theme_prob = 50
	  }
}]]--

--function STARTERPACK.bannersetup()
--  gui.printf("starterpack banner setup starts here\n")
--  if OB_CONFIG.theme == STARTERPACK.PICKUPS.nukembanners.theme then
--    gui.printf("theme matches\n")
--    GAME.PICKUPS["nukembanners"].add_prob=50
--  end
--  if OB_CONFIG.theme == STARTERPACK.PICKUPS.graffiti.theme then
--    gui.printf("theme matches\n")
--    GAME.PICKUPS["graffiti"].add_prob=200
--  end
--  if OB_CONFIG.theme == STARTERPACK.PICKUPS.wolfbanners.theme then
--    gui.printf("wolf theme matches\n")
--    GAME.PICKUPS["wolfbanners"].add_prob=50
--  end
--end

function STARTERPACK.bannersetup()
    gui.printf("Theme is " .. table.tostring(THEME) .. "\n");
    for _,P in pairs(GAME.PICKUPS) do
        if P.theme == THEME then
            gui.printf("theme matches\n")
            P.add_prob = P.theme_prob
        end
    end
end

function STARTERPACK.texturesetup()
  local data =
  {
	'texture SP_DUDE6, 64, 128\n'
	'{\n'
		'Patch WALL48_2, 0, 0\n'
		'Graphic CRANK, 2, -155\n'
		'Graphic CRANK, 20, -155\n'
		'Graphic BOSSJ0, 6, 32\n'
	'}\n'
	'texture SKINTEK2, 64, 128\n'
	'{\n'
	   'XScale 1.0\n'
	   'YScale 1.0\n'
	   'Patch GTGREN01, 0, 0\n'
	'}\n'
	'texture WLFBANNR, 512, 128\n'
	'{\n'
		'Patch WOLF1, 0, 0\n'
		'Patch WOLF1, 128, 0\n'
		'Patch ZZNAZIB, 128, 0\n'
		'Patch WOLF1, 256, 0\n'
		'Patch WOLF1, 384, 0\n'
		'Patch ZZNAZIC, 384, 0\n'
		'Patch WOLF1, 0, 128\n'
	'}\n'
    'texture O_BRUTAL, 128, 32\n'
	'{\n'
		'Patch BLACK, 0, 0\n'
                'Patch BLACK, 64, 0\n'
		'Graphic TEST, 12, 8\n'
	'}\n'
	'Texture "DNPSTER1", 88, 88\n'
	'{\n'
	'	XScale 0.700\n'
	'	YScale 0.700\n'
	'	Offset -1, -1\n'
	'	Patch "BRICK12", 0, 0\n'
	'	Patch "BRICK12", 64, 0\n'
	'	Patch "DNZPOS02", 8, 0\n'
	'}\n'
	'Texture "DNPSTER2", 88, 88\n'
	'{\n'
	'	XScale 0.700\n'
	'	YScale 0.700\n'
	'	Offset -1, -1\n'
	'	Patch "BRICK12", 0, 0\n'
	'	Patch "BRICK12", 64, 0\n'
	'	Patch "DNZPOS03", 8, 0\n'
	'}\n'
	'Texture "DNPSTER3", 88, 88\n'
	'{\n'
	'	XScale 0.700\n'
	'	YScale 0.700\n'
	'	Offset -1, -1\n'
	'	Patch "BRICK12", 0, 0\n'
	'	Patch "BRICK12", 64, 0\n'
	'	Patch "DNZPOS04", 8, 0\n'
	'}\n'
  }
    gui.wad_add_text_lump("TEXTURES", data);
end

--Monsters------------------------------
STARTERPACK.MONSTERS = 
{
  GermanDog =
  {
    id = 4395
    r = 12
    h = 28 
    level = 2
    theme = "wolf"
    prob = 60
    health = 80
    damage = 1
    attack = "melee"
    min_weapon = 1
    room_size = "any"
  }
  HeavyMachinegun =
  {
    id = 2567
    r = 20
    h = 56 
    level = 6
    prob = 5
    health = 60
    damage = 50
    attack = "hitscan"
    min_weapon = 4
    room_size = "large"
    cage_factor = 0
  }
}

--MAPINFO
STARTERPACK.music =
{
  songs =
  {
  --tech
    "D_RUNNIN", "$MUSIC_STALKS", "$MUSIC_COUNTD", "$MUSIC_BETWEE", "$MUSIC_DOOM",
    "$MUSIC_THE_DA", "$MUSIC_SHAWN",  "$MUSIC_DDTBLU", "$MUSIC_IN_CIT", "$MUSIC_DEAD",
  --urban
    "$MUSIC_STLKS2", "$MUSIC_THEDA2", "$MUSIC_DOOM2", "$MUSIC_RUNNI2", "$MUSIC_DDTBL2",
    "$MUSIC_DEAD2",  "$MUSIC_STLKS3", "D_ROMERO",
  --hell
    "D_SHAWN2", "D_MESSAG", "D_COUNT2", "D_DDTBL3", "$MUSIC_AMPIE",  "$MUSIC_THEDA3", "$MUSIC_ADRIAN",
    "$MUSIC_MESSG2", "D_ROMER2", "D_TENSE",  "D_SHAWN3",
  --other
    "STALKER"
  }
}

local function cyberlordexits() --switches positions of babel and dis (and back again) if big cyberlord boss at babel
 if boss1 == "cyberlordmajor" then
  local temp=secretexit1
  secretexit1=secretexit3
  secretexit3=temp	
 end
end

function STARTERPACK.create_mapinfo()
  
  gui.printf("Starterpack Mapinfo code is running\n")
  cyberlordexits()
  local data =
  {
    "//\n"
    "// MAPINFO LUMP created by OBLIGE\n"
    "//\n"
    'include BASEMI\n'
  }
  cyberlordexits()
--rename boss maps based on which boss is there
  for i = 1, (#data) do --for every value in data
   if boss1 == "infernal" then
	data[i] = string.gsub(data[i], '"Tower of Babel"','"The Fires of Babel"')
   elseif boss1 == "cyberlordmajor" then
	data[i] = string.gsub(data[i], '"Tower of Babel"','"The Tower"')	
   end
   if boss2 == "cyberlordminor" then
	data[i] = string.gsub(data[i], '"Dis"','"Distruction"')	
   end
  end

  --- music ---
  --local epi_list = STARTERPACK.music
  local epi_list = BRUTALDOOM.music
  local dest = { }

  each _,src in epi_list do
    dest = table.copy(src)
    
    -- this shuffle algorithm ensures first entry is never the same
    --once again I can't quite work out the code so I have left this even though I only need half of it
    for i = 1, (#dest-2) do
      local k = rand.irange(i + 1, #dest)
      dest[i], dest[k] = dest[k], dest[i]
    end
  end
    --after this dest[1-#src] are the music tracks
  dest[30] = "$MUSIC_OPENIN" --the epic boss battle music
  dest[31] = "DUTY" --map 31 always wolf themed
  dest[32] = "STALKER"

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
        id = "map" .. L.name

      else
        local pos = 4
        if string.sub(L.name, pos, pos) == '0' then
          pos = pos + 1
        end

        -- Doom II / Final Doom : HUSTR_%d
        id = "BOM" .. string.sub(L.name, pos)
      end

      local nextmap = 'next = "' .. L.name ..'"\n'

      local sky1 = 'sky1 = "SKY1"' --default sky
      local enterpic = '"INTER1"' --default intermissionpic
      if L.theme_name == "hell" then
	local n = rand.irange(1,2)
	if n == 1 then
          sky1 = 'sky1 = "FIRESK00"'
        else
          sky1 = 'sky1 = "SKY3"'
	end
        enterpic = '"INTER3"'
      elseif L.theme_name == "wolf" then
        sky1 = 'sky1 = "SKY2WOLF"'
        enterpic = '"WOLF1"'
      elseif L.theme_name == "nukem" then
        sky1 = 'sky1 = "SKY2NI"'
        enterpic = '"DNTRIM12"'
      elseif L.theme_name == "urban" then
	local n = rand.irange(1,6)
	if n == 1 then
          sky1 = 'sky1 = "SKY2"'
	elseif n == 2 then
          sky1 = 'sky1 = "SKY2MID"'
	elseif n == 3 then
          sky1 = 'sky1 = "SKY2NO"'
	elseif n == 4 then
          sky1 = 'sky1 = "SKY2RED"'
	elseif n == 5 then
          sky1 = 'sky1 = "SKY2YELO"'
	elseif n == 6 then
          sky1 = 'sky1 = "SKY2MO"'
	end
        enterpic = '"INTER2"'
      elseif L.theme_name == "satanshankerchief" then
	local n = rand.irange(1,2) --animated CHEXSKY3 is broken for some reason
        sky1 = 'sky1 = "CHEXSKY' .. n .. '"'
        enterpic = '"CHEXINT"'
      end

      sky1 = sky1 .. '\n' --put in the newline here for convinience
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
      table.insert(data, 'EnterPic = ' .. enterpic)
      table.insert(data, 'ExitPic = ' .. enterpic)
      if mapnum==31 then
        table.insert(data, 'cluster = 65\n')  -- so you get the enterpic
      elseif mapnum==32 then
        table.insert(data, 'cluster = 66\n')  
      else
        table.insert(data, 'cluster = 10\n')
      end
      table.insert(data, 'music = "' .. dest[mapnum] .. '"\n')
      mapnum = mapnum + 1
    end
  end -- for L

  if mapnum == 33 then --second secret level (chex)
    table.insert(data, 'next = "BOM' .. tostring(secretexit2 + 1) .. '"\n')
  else
    table.insert(data, 'next = "EndGame3"\n') --last map ends the game unless it is a secret level (ie anything more or less than full game)
  end
  table.insert(data, "\n}\n"); --close final map definition
  
  local chexclusterdef = [[
        clusterdef 66
        flat SNOT1
        music D_READ
        entertext "You don't know how you got there
        in the first place but it doesn't matter,
        You have escaped castle Wolfenstein!

        You feel pretty rough though. All that
        running around in the snow seems to have
        given you one hell of a cold..."
      ]]

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
end

  gui.wad_add_text_lump("MAPINFO", data);
end

function STARTERPACK.setup()
  --STARTERPACK.bannersetup();
  --STARTERPACK.setsecretexits();
  BRUTALDOOM.PARAMETERS.starterpack = true;
end

function STARTERPACK.all_done()
  STARTERPACK.decorate();
  STARTERPACK.create_mapinfo();
  STARTERPACK.texturesetup();
end

--level setup

STARTERPACK.PREBUILT_LEVELS = --always remove the prebuilt so no conflict with mapinfo lump (map07 special etc)
{
  MAP07  = REMOVE_ME
  GOTCHA = REMOVE_ME
  GALLOW = REMOVE_ME

  MAP30 = --final boss
  {
    { prob=50, file="doom2_boss/icon1.wad", map="MAP30" }
    { prob=50, file="doom2_boss/icon2.wad", map="MAP30" }
    { prob=50, file="doom2_boss/icon3.wad", map="MAP01" }
    { prob=50, file="doom2_boss/icon3.wad", map="MAP02" }
    { prob=50, file="doom2_boss/icon3.wad", map="MAP03" }
  }
}

--table to string function for debugging starts
function table.val_to_str ( v )
  if "string" == type( v ) then
    v = string.gsub( v, "\n", "\\n" )
    if string.match( string.gsub(v,"[^'\"]",""), '^"+$' ) then
      return "'" .. v .. "'"
    end
    return '"' .. string.gsub(v,'"', '\\"' ) .. '"'
  else
    return "table" == type( v ) and table.tostring( v ) or
      tostring( v )
  end
end

function table.key_to_str ( k )
  if "string" == type( k ) and string.match( k, "^[_%a][_%a%d]*$" ) then
    return k
  else
    return "[" .. table.val_to_str( k ) .. "]"
  end
end

function table.tostring( tbl )
  local result, done = {}, {}
  for k, v in ipairs( tbl ) do
    table.insert( result, table.val_to_str( v ) )
    done[ k ] = true
  end
  for k, v in pairs( tbl ) do
    if not done[ k ] then
      table.insert( result,
        table.key_to_str( k ) .. "=" .. table.val_to_str( v ) )
    end
  end
  return "{" .. table.concat( result, "," ) .. "}"
end
--table to string function for debugging ends

OB_MODULES["brutal_starterpack"] =
{
  label = "Brutal Doom Starter Pack"

  game = { brutaldoom=1 }
  playmode = { sp=1, coop=1 }
  
  hooks =
  {
    setup = STARTERPACK.setup
    all_done = STARTERPACK.all_done
  }

  tables =
  {
    STARTERPACK
  }
}

STARTERPACK.CONTROL_CHOICES =
{
  "default", "DEFAULT",
  "none",    "None at all",
  "scarce",  "Scarce",
  "less",    "Less",
  "plenty",  "Plenty",
  "more",    "More",
  "heaps",   "Heaps",
  "insane",  "INSANE",
}

STARTERPACK.CONTROL_PROBS =
{
  none   = 0
  scarce = 2
  less   = 15
  plenty = 50
  more   = 120
  heaps  = 300
  insane = 2000
}

function STARTERPACK.control_setup()
  for name,opt in pairs(self.options) do
    local M = GAME.MONSTERS[name]

    if M and opt.value != "default" then
      local prob = STARTERPACK.CONTROL_PROBS[opt.value]

      M.replaces = nil
      M.prob = prob
      M.crazy_prob = prob

      if prob >  80 then M.density = 1.0 ; M.skip_prob = 30 end
      if prob > 180 then M.skip_prob = 0 end
    end
  end -- for opt
end


OB_MODULES["starterpack_wolfenstein_control"] =
{
  label = "Wolfenstein Monster Control"

  game = { brutaldoom=1, brutality=1 }

  --mod = "brutal_starterpack"

  hooks =
  {
    control_setup = STARTERPACK.control_setup
  }

  options =
  {
    ClassicSS =
    {
        label="Classic Wolfenstein SS",
        choices=STARTERPACK.CONTROL_CHOICES
        tooltip="The SS guard as he appears in vanilla Doom 2 and,you know, Wolfenstein."
    }
    BrutalSS =
    {
        label="Brutal Wolfenstein SS",
        choices=STARTERPACK.CONTROL_CHOICES
        tooltip="The SS guard as he appears in Brutal Doom."
    }
    GermanDog =
    {
        label="Dog",
        choices=STARTERPACK.CONTROL_CHOICES
        tooltip="A dog. Obviously. Requires the starterpack."
    }
  }
}

OB_MODULES["starterpack_monster_control"] =
{
  label = "Starterpack Monster Control"

  game = { brutaldoom=1, brutality=1 }

  mod = "brutal_starterpack"

  hooks =
  {
    control_setup = STARTERPACK.control_setup
  }

  options =
  {
    HeavyMachinegun =
    {
        label="Heavy Machinegunner",
        choices=STARTERPACK.CONTROL_CHOICES
        tooltip="A mounted machinegun. Very powerful and can be placed very unfairly."
    }
  }
}