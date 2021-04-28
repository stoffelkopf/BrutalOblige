function BRUTALDOOM.get_levels()
	gui.printf("brutaldoom.get_levels code is running\n")
	if DOOM.MONSTERS.gunner then
		DOOM.MONSTERS.gunner.give={ {weapon="Minigun"}, {ammo="bullet",count=10} }
		GAME.MONSTERS["gunner"].give={ {weapon="Minigun"}, {ammo="bullet",count=10} }
		DOOM.MONSTERS.gunner.weap_needed={ AssaultRifle=true }
		GAME.MONSTERS["gunner"].weap_needed={ AssaultRifle=true }
	end
	if OB_CONFIG.prebuilt_levels == "yes" then
		gui.printf("Using Prebuilt Levels")
		if OB_CONFIG.iwad_usage == "complete" then
			gui.printf(" for doom_complete.pk3...\n")
			GAME.PREBUILT_LEVELS =
			{
--				MAP04 =
--				{
--				}
			MAP10 =
			{
				{ prob=50, file="games/doom/data/boss1/anomaly2.wad", map="E1M8", boss="baron" }
				{ prob=50, file="games/doom/data/boss1/anomaly3.wad", map="E1M8", boss="baron" }
				{ prob=50, file="games/doom/data/boss1/ult_anomaly.wad", map="E1M8", boss="baron" }
				{ prob=50, file="games/doom/data/boss1/ult_anomaly2.wad", map="E1M8", boss="baron" }		
--because it sucks { prob=50, file="games/doom/data/boss1/anomaly1.wad", map="E1M8", boss="baron" }  
			}
			MAP20 =
			{
				{ prob=50, file="games/doom/data/boss2/gallow1.wad", map="MAP01", boss="none" }
				{ prob=50, file="games/doom/data/boss2/gallow2.wad", map="MAP01", boss="none" }
				{ prob=50, file="games/doom/data/boss2/gallow1_bd1.wad", map="MAP01", boss="none" }
				{ prob=50, file="games/doom/data/boss2/gallow2_bd1.wad", map="MAP01", boss="none" }
				{ prob=50, file="games/doom/data/boss1/ult_tower.wad", map="E2M8", boss="cyber"}
				{ prob=50, file="games/doom/data/boss1/tower1.wad", map="E2M8", boss="cyber" }
				{ prob=50, file="games/doom/data/boss1/tower2.wad", map="E2M8", boss="cyber" }
				{ prob=50, file="games/doom/data/boss1/cyber_arena1.wad", map="E2M8", boss="cyber" }				
			}
			MAP30 =
			{
				{ prob=50, file="games/doom/data/boss2/gotcha1.wad", map="MAP01", boss="none" }
				{ prob=50, file="games/doom/data/boss2/gotcha2.wad", map="MAP01", boss="none" }
				{ prob=50, file="games/doom/data/boss2/gotcha3.wad", map="MAP01", boss="none" }
				{ prob=50, file="games/doom/data/boss2/gotcha4.wad", map="MAP01", boss="none" }
				{ prob=50, file="games/doom/data/boss1/dis1.wad", map="E3M8", boss="spider" }
				{ prob=50, file="games/doom/data/boss1/ult_dis.wad", map="E3M8", boss="spider" }
				{ prob=50, file="games/doom/data/boss1/spider_arena1.wad", map="E3M8", boss="spider" }				
				{ prob=50, file="games/doom/data/boss1/spider_arena2.wad", map="E4M8", boss="spider" }								
			}
		}
		elseif OB_CONFIG.iwad_usage == "doom2" then
			gui.printf(" for doom2.wad...\n")
			GAME.PREBUILT_LEVELS =
			{
				MAP20 =
				{
					{ prob=50, file="games/doom/data/boss2/gallow1.wad", map="MAP01", boss="none" }
					{ prob=50, file="games/doom/data/boss2/gallow2.wad", map="MAP01", boss="none" }
					{ prob=50, file="games/doom/data/boss2/gallow1_bd1.wad", map="MAP01", boss="none" }
					{ prob=50, file="games/doom/data/boss2/gallow2_bd1.wad", map="MAP01", boss="none" }
				}
				MAP30 =
				{
					{ prob=50, file="games/doom/data/boss2/gotcha1.wad", map="MAP01", boss="none" }
					{ prob=50, file="games/doom/data/boss2/gotcha2.wad", map="MAP01", boss="none" }
					{ prob=50, file="games/doom/data/boss2/gotcha3.wad", map="MAP01", boss="none" }
					{ prob=50, file="games/doom/data/boss2/gotcha4.wad", map="MAP01", boss="none" }
				}
			}
		end
	else
		GAME.PREBUILT_LEVELS = {}
		gui.printf("No prebuilt maps will be used.\n")
	end
  local MAP_LEN_TAB = { few=4, episode=11, game=32 }

  local MAP_NUM = MAP_LEN_TAB[OB_CONFIG.length] or 1

  local EP_NUM = 1
  if MAP_NUM > 11 then EP_NUM = 2 end
  if MAP_NUM > 30 then EP_NUM = 3 end

  -- create episode info...

  for ep_index = 1,3 do
    local ep_info = GAME.EPISODES["episode" .. ep_index]
    assert(ep_info)

    local EPI = table.copy(ep_info)

    EPI.levels = { }

    table.insert(GAME.episodes, EPI)
  end

  -- create level info...

  for map = 1,MAP_NUM do
    -- determine episode from map number
    local ep_index
    local ep_along

    local game_along = map / MAP_NUM

    if map > 30 then
      ep_index = 3 ; ep_along = 0.5 ; game_along = 0.5
    elseif map > 20 then
      ep_index = 3 ; ep_along = (map - 20) / 10
    elseif map > 11 then
      ep_index = 2 ; ep_along = (map - 11) / 9
    else
      ep_index = 1 ; ep_along = map / 11
    end

    if OB_CONFIG.length == "single" then
      game_along = 0.57
      ep_along   = 0.75

    elseif OB_CONFIG.length == "few" then
      ep_along = game_along
    end

    assert(ep_along <= 1.0)
    assert(game_along <= 1.0)

    local EPI = GAME.episodes[ep_index]
    assert(EPI)

    local LEV =
    {
      episode = EPI

      name  = string.format("MAP%02d", map)
      patch = string.format("BOP%02d", map-1)

      ep_along = ep_along
      game_along = game_along
    }

    table.insert( EPI.levels, LEV)
    table.insert(GAME.levels, LEV)

    --LEV.secret_exit = GAME.SECRET_EXITS[LEV.name]
    if GAME.SECRET_EXITS[LEV.name] then
        LEV.secret_exit = true
    end

    -- secret levels
    if map == 31 then
      LEV.is_secret = true
      LEV.theme_name = "wolf"
      LEV.name_class = "URBAN"
    end
    if map == 32 then
      if OB_CONFIG.iwad_usage == "complete" then
        LEV.theme_name = "egypt2"
        --LEV.name_class = "Gothic"
        LEV.is_secret = true
      else 
          LEV.theme_name = "wolf"
          LEV.name_class = "URBAN"
          LEV.is_secret = true
      end
    end

    if map == 23 then
      LEV.style_list = { barrels = { heaps=100 } }
    end

    -- the 'dist_to_end' value is used for Boss monster decisions
    if map >= 26 and map <= 29 then
      LEV.dist_to_end = 30 - map
    elseif map == 11 or map == 20 then
      LEV.dist_to_end = 1
    elseif map == 16 or map == 23 then
      LEV.dist_to_end = 2
    end

    -- prebuilt levels
    local pb_name = LEV.name

    if OB_CONFIG.prebuilt_levels == "yes" then
      LEV.prebuilt = GAME.PREBUILT_LEVELS[pb_name]
    end

    if LEV.prebuilt then
      LEV.name_class = LEV.prebuilt.name_class or "BOSS"
    end

    -- procedural gotcha management code

    -- Prebuilts are to exist over procedural gotchas
    -- this means procedural gotchas will not override
    -- Icon of Sin for example if prebuilts are still on
    if not LEV.prebuilt then

      --handling for the Final Only option
      if OB_CONFIG.procedural_gotchas == "final" then
        if OB_CONFIG.length == "single" then
          if map == 1 then LEV.is_procedural_gotcha = true end
        elseif OB_CONFIG.length == "few" then
          if map == 4 then LEV.is_procedural_gotcha = true end
        elseif OB_CONFIG.length == "episode" then
          if map == 11 then LEV.is_procedural_gotcha = true end
        elseif OB_CONFIG.length == "game" then
          if map == 30 then LEV.is_procedural_gotcha = true end
        end
      end

      --every 10 maps
      if OB_CONFIG.procedural_gotchas == "epi" then
        if map == 6 or map == 16 or map == 26 then
          LEV.is_procedural_gotcha = true
        end
      end
      if OB_CONFIG.procedural_gotchas == "2epi" then
        if map == 4 or map == 8 or map == 14 or map == 18 or map == 24 or map == 28 then
          LEV.is_procedural_gotcha = true
        end
      end
      if OB_CONFIG.procedural_gotchas == "3epi" then
        if map == 3 or map == 7 or map == 11 or map == 14 or map == 16 or map == 18 or map == 24 or map == 26 or map == 28 then
          LEV.is_procedural_gotcha = true
        end
      end

      --5% of maps after map 4
      if OB_CONFIG.procedural_gotchas == "5p" then
        if map > 4 and map != 15 and map != 31 then
          if rand.odds(5) then LEV.is_procedural_gotcha = true end
        end
      end

      -- 10% of maps after map 4
      if OB_CONFIG.procedural_gotchas == "10p" then
        if map > 4 and map != 15 and map != 31 then
          if rand.odds(10) then LEV.is_procedural_gotcha = true end
        end
      end

      -- 15% of maps after map 4
      if OB_CONFIG.procedural_gotchas == "15p" then
        if map > 4 and map != 15 and map != 31 then
          if rand.odds(15) then LEV.is_procedural_gotcha = true end
        end
      end

      -- 20% of maps after map 4
      if OB_CONFIG.procedural_gotchas == "20p" then
        if map > 4 and map != 15 and map != 31 then
          if rand.odds(20) then LEV.is_procedural_gotcha = true end
        end
      end

      -- for masochists... or debug testing
      if OB_CONFIG.procedural_gotchas == "all" then
        LEV.is_procedural_gotcha = true
      end
    end

	if LEV.is_procedural_gotcha == true then
		gui.printf("Procedural Gotcha on map %i!\n",map)
	end

    if MAP_NUM == 1 or (map % 10) == 3 then
      LEV.demo_lump = string.format("DEMO%d", ep_index)
    end
  end

  -- handle "dist_to_end" for FEW and EPISODE lengths
  if OB_CONFIG.length != "single" and OB_CONFIG.length != "game" then
    GAME.levels[#GAME.levels].dist_to_end = 1

    if OB_CONFIG.length == "episode" then
      GAME.levels[#GAME.levels - 1].dist_to_end = 2
      GAME.levels[#GAME.levels - 2].dist_to_end = 3
    end
  end
end
