function BRUTALDOOM.get_levels()
  gui.printf("brutaldoom.get_levels code is running\n")
if OB_CONFIG.prebuilt_levels == "yes" then
  gui.printf("Using Prebuilt Levels")
  if OB_CONFIG.iwad_usage == "complete" then
    gui.printf(" for doom_complete.pk3...\n")
    GAME.PREBUILT_LEVELS =
    {
--	    MAP04 =
--       {

--	   }
       MAP10 =
      {
        { prob=50, file="games/doom/data/boss1/anomaly2.wad", map="E1M8", boss="baron" }
		{ prob=50, file="games/doom/data/boss1/anomaly3.wad", map="E1M8", boss="baron" }
		{ prob=50, file="games/doom/data/boss1/ult_anomaly.wad", map="E1M8", boss="baron" }
        { prob=50, file="games/doom/data/boss1/ult_anomaly2.wad", map="E1M8", boss="baron" }		
		-- because it sucks { prob=50, file="games/doom/data/boss1/anomaly1.wad", map="E1M8", boss="baron" }  
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
      }
      MAP30 =
      {
        { prob=50, file="games/doom/data/boss2/gotcha1.wad", map="MAP01", boss="none" }
        { prob=50, file="games/doom/data/boss2/gotcha2.wad", map="MAP01", boss="none" }
        { prob=50, file="games/doom/data/boss2/gotcha3.wad", map="MAP01", boss="none" }
        { prob=50, file="games/doom/data/boss2/gotcha4.wad", map="MAP01", boss="none" }
	    { prob=50, file="games/doom/data/boss1/dis1.wad", map="E3M8", boss="spider" }
	    { prob=50, file="games/doom/data/boss1/ult_dis.wad", map="E3M8", boss="spider" }
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
      if BRUTALDOOM.PARAMETERS.iwad == "Tnt.wad" then
        LEV.theme_name = "egypt2"
        --LEV.name_class = "GOTHIC"
      else
          LEV.theme_name = "wolf"
          LEV.name_class = "URBAN"
      end
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
