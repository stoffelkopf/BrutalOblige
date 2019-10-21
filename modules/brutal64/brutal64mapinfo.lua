ukeyexit1 = math.random(1,9)
ukeyexit2 = math.random(11,19)
ukeyexit3 = math.random(20,29)

local castcall =
[[
Intermission Brutal64_FinalIntermission
    {
    	Image
    	{
    		// This is only here to initialize the background and the music
    		Background = "$bgcastcall"
    		Time = -1
    		Music = "$MUSIC_EVIL"
    	}
    	Link = Brutal64Cast
    }
Intermission Brutal64Cast
    {
    	Cast
    	{
    		CastClass = "64ZombieMan"
    		CastName = "$CC_ZOMBIE"
    		AttackSound = "Missile", 1, "grunt/attack"
    	}
    	Cast
    	{
    		CastClass = "64ShotgunGuy"
    		CastName = "$CC_SHOTGUN"
    		AttackSound = "Missile", 1, "shotguy/attack"
    	}
		Cast
    	{
    		CastClass = "64ZombieMarine"
    		CastName = "Zombie Marine"
    		AttackSound = "Missile", 1, "grunt/attack"
    	}
    	Cast
    	{
    		CastClass = "64ChaingunGuy"
    		CastName = "$CC_HEAVY"
    		AttackSound = "Missile", 1, "chainguy/attack"
    		AttackSound = "Missile", 2, "chainguy/attack"
    		AttackSound = "Missile", 3, "chainguy/attack"
    	}
    	Cast
    	{
    		CastClass = "64DoomImp"
    		CastName = "$CC_IMP"
    		AttackSound = "Missile", 2, "imp/attack"
    	}
    	Cast
    	{
    		CastClass = "NightmareImp"
    		CastName = "Nightmare Imp"
    		AttackSound = "Missile", 2, "imp/attack"
    	}
    	Cast
    	{
    		CastClass = "64Demon"
    		CastName = "$CC_DEMON"
    		AttackSound = "Melee", 1, "demon/melee"
    	}
		Cast
    	{
    		CastClass = "64Spectre"
    		CastName = "Nightmare Spectre"
    		AttackSound = "Melee", 1, "demon/melee"
    	}
    	Cast
    	{
    		CastClass = "64LostSoul"
    		CastName = "$CC_LOST"
    		AttackSound = "Missile", 1, "skull/melee"
    	}
    	Cast
    	{
    		CastClass = "64Cacodemon"
    		CastName = "$CC_CACO"
    		AttackSound = "Missile", 1, "caco/attack"
    	}
		Cast
    	{
    		CastClass = "NightmareCacodemon"
    		CastName = "Nightmare Cacodemon"
    		AttackSound = "Missile", 1, "caco/attack"
    	}
    	Cast
    	{
    		CastClass = "64HellKnight"
    		CastName = "$CC_HELL"
    		AttackSound = "Missile", 1, "baron/attack"
    	}
    	Cast
    	{
    		CastClass = "64BaronOfHell"
    		CastName = "$CC_BARON"
    		AttackSound = "Missile", 1, "baron/attack"
    	}
    	Cast
    	{
    		CastClass = "64Arachnotron"
    		CastName = "$CC_ARACH"
    		AttackSound = "Missile", 1, "baby/attack"
    	}
    	Cast
    	{
    		CastClass = "64PainElemental"
    		CastName = "$CC_PAIN"
    		AttackSound = "Missile", 2, "skull/melee"
    	}
    	Cast
    	{
    		CastClass = "64Revenant"
    		CastName = "$CC_REVEN"
    		AttackSound = "Missile", 1, "skeleton/attack"
    		AttackSound = "Melee", 1, "skeleton/swing"
    		AttackSound = "Melee", 3, "skeleton/melee"
    	}
    	Cast
    	{
    		CastClass = "64Fatso"
    		CastName = "$CC_MANCU"
    		AttackSound = "Missile", 1, "fatso/attack"
    		AttackSound = "Missile", 4, "fatso/attack"
    		AttackSound = "Missile", 7, "fatso/attack"
    	}
		Cast
    	{
    		CastClass = "64HellHound"
    		CastName = "Hell Hound"
    		AttackSound = "Missile", 1, "demon/melee"
    	}
    	Cast
    	{
    		CastClass = "Archvile"
    		CastName = "$CC_ARCH"
    		AttackSound = "Missile", 1, "vile/start"
    	}
    	Cast
    	{
    		CastClass = "64SpiderMastermind"
    		CastName = "$CC_SPIDER"
    		AttackSound = "Missile", 1, "spider/attack"
    		AttackSound = "Missile", 2, "spider/attack"
    	}
        Cast
    	{
    		CastClass = "64Cyberdemon"
    		CastName = "$CC_CYBER"
    		AttackSound = "Missile", 1, "weapons/rocklf"
    		AttackSound = "Missile", 3, "weapons/rocklf"
    		AttackSound = "Missile", 5, "weapons/rocklf"
    	}
    	Cast
    	{
    		CastClass = "64DoomPlayer"
    		CastName = "$CC_HERO"
    		AttackSound = "Missile", 0, "weapons/sshotf"
    	}
    	Link = Brutal64Cast	// restart cast call
    }
]]

function BRUTAL64.setukeyexits()
 
    --set ukeyexits to not conflict with the secret exits
  while secretexit1 == ukeyexit1 do
      ukeyexit1 = math.random(1,9)
  end
  while secretexit2 == ukeyexit2 do
      ukeyexit2 = math.random(11,19)
  end
  while secretexit3 == ukeyexit3 do
      ukeyexit3 = math.random(20,29)
  end
    
  if ukeyexit1 == 1 then GAME.SECRET_EXITS.MAP01 = true end --there must be a better way but I don't know it
  if ukeyexit1 == 2 then GAME.SECRET_EXITS.MAP02 = true end
  if ukeyexit1 == 3 then GAME.SECRET_EXITS.MAP03 = true end
  if ukeyexit1 == 4 then GAME.SECRET_EXITS.MAP04 = true end
  if ukeyexit1 == 5 then GAME.SECRET_EXITS.MAP05 = true end
  if ukeyexit1 == 6 then GAME.SECRET_EXITS.MAP06 = true end
  if ukeyexit1 == 7 then GAME.SECRET_EXITS.MAP07 = true end
  if ukeyexit1 == 8 then GAME.SECRET_EXITS.MAP08 = true end
  if ukeyexit1 == 9 then GAME.SECRET_EXITS.MAP09 = true end
  if ukeyexit1 == 10 then GAME.SECRET_EXITS.MAP10 = true end
  if ukeyexit2 == 11 then GAME.SECRET_EXITS.MAP11 = true end
  if ukeyexit2 == 12 then GAME.SECRET_EXITS.MAP12 = true end
  if ukeyexit2 == 13 then GAME.SECRET_EXITS.MAP13 = true end
  if ukeyexit2 == 14 then GAME.SECRET_EXITS.MAP14 = true end
  if ukeyexit2 == 15 then GAME.SECRET_EXITS.MAP15 = true end
  if ukeyexit2 == 16 then GAME.SECRET_EXITS.MAP16 = true end
  if ukeyexit2 == 17 then GAME.SECRET_EXITS.MAP17 = true end
  if ukeyexit2 == 18 then GAME.SECRET_EXITS.MAP18 = true end
  if ukeyexit2 == 19 then GAME.SECRET_EXITS.MAP19 = true end
  if ukeyexit3 == 20 then GAME.SECRET_EXITS.MAP20 = true end
  if ukeyexit3 == 21 then GAME.SECRET_EXITS.MAP21 = true end
  if ukeyexit3 == 22 then GAME.SECRET_EXITS.MAP22 = true end
  if ukeyexit3 == 23 then GAME.SECRET_EXITS.MAP23 = true end
  if ukeyexit3 == 24 then GAME.SECRET_EXITS.MAP24 = true end
  if ukeyexit3 == 25 then GAME.SECRET_EXITS.MAP25 = true end
  if ukeyexit3 == 26 then GAME.SECRET_EXITS.MAP26 = true end
  if ukeyexit3 == 27 then GAME.SECRET_EXITS.MAP27 = true end
  if ukeyexit3 == 28 then GAME.SECRET_EXITS.MAP28 = true end
  if ukeyexit3 == 29 then GAME.SECRET_EXITS.MAP29 = true end
  gui.printf('Secret exit table:\n' .. table.tostring(GAME.SECRET_EXITS) .. '\n')
end

function BRUTAL64.create_mapinfo()
  gui.printf("Brutal 64 Mapinfo code is starting\n");
  
  local data =
  {
    "//\n"
    "// MAPINFO LUMP created by OBLIGE\n"
    "//\n"
    "//Exits to secret levels are in maps " .. tostring(secretexit1) .. ', ' .. tostring(secretexit2) .. ' and ' .. tostring(secretexit3) .. '\n'
    "//Exits to Unmaker Keys are in maps " .. tostring(ukeyexit1) .. ', ' .. tostring(ukeyexit2) .. ' and ' .. tostring(ukeyexit3) .. '\n'
    "clearepisodes\n\n"
    'episode MAP01\n'
    '{\n'
    'name = "Brutal Oblige"\n'
    '}\n\n'
    'map UKEY01 "???"\n'
    '{\n'
    'next = "MAP0' .. tostring(ukeyexit1 + 1) .. '"\n'
    'cluster = 10\n'
    'NoIntermission\n'
    '}\n'
    'map UKEY02 "???"\n'
    '{\n'
    'next = "MAP0' .. tostring(ukeyexit2 + 1) .. '"\n'
    'cluster = 10\n'
    'NoIntermission\n'
    '}\n'
    'map UKEY03 "???"\n'
    '{\n'
    'next = "MAP0' .. tostring(ukeyexit3 + 1) .. '"\n'
    'cluster = 10\n'
    'NoIntermission\n'
    '}\n'
  }

  --- music ---
  local epi_list = BRUTAL64.music
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
    --after this dest[1-#src] are the music tracks
    dest[31] = "d_evil" --map 31 always wolf themed

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
      local skyname = 'RSKY1'
      local enterpic = '"INTERPIC"' --default intermissionpic
      local skytab = BRUTAL64.SKIES[ L.theme_name ]
      if not skytab then --i.e. if no entry for the theme in BrutalDoomSkies.lua
          skytab = BRUTAL64.SKIES.any
      end
      
      skyname = skytab[ rand.irange(1,#skytab) ]
      
        sky1 = sky1 .. skyname .. '"\n'
        
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
        if mapnum == ukeyexit1 + 1 then
            table.insert(data, 'secretnext = "UKEY01"\n')
        end
        if mapnum == ukeyexit3 + 1 then
            table.insert(data, 'secretnext = "UKEY03"\n')
        end
        if mapnum >=11 and mapnum < 21 then--mapnum == 17 then --map 16 has the secret exit to wolf levels. Number is 1 higher because this is inserted at the start of the next map.
          if mapnum == ukeyexit2 + 1 then
            table.insert(data, 'secretnext = "UKEY02"\n')
          else
            table.insert(data, 'secretnext = "MAP31"\n')
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
      table.insert(data, 'EnterPic = ' .. enterpic)
      table.insert(data, 'ExitPic = ' .. enterpic)
      table.insert(data, 'cluster = 10\n')
      table.insert(data, 'music = "' .. dest[mapnum] .. '"\n')
      mapnum = mapnum + 1
    end
  end -- for L

  if mapnum == 33 then --second secret level (chex)
    table.insert(data, 'next = "MAP' .. tostring(secretexit2 + 1) .. '"\n')
  else
    table.insert(data, 'next = EndSequence, "Brutal64_FinalIntermission"\n') --last map ends the game unless it is a secret level (ie anything more or less than full game)
  end
  table.insert(data, "}\n"); --close final map definition
  
  --insert final intermission
  table.insert(data, castcall)

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
end

gui.wad_add_text_lump("MAPINFO", data);

end
