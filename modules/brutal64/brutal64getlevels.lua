function BRUTAL64.get_levels()
    gui.printf("brutal64.get_levels code is running\n")
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
      game_along = rand.pick({ 0.2, 0.3, 0.4, 0.7 })
      ep_along = game_along

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

      name  = string.format("BOM%02d", map)
      patch = string.format("BOP%02d", map-1)

      ep_along = ep_along
      game_along = game_along
    }

    table.insert( EPI.levels, LEV)
    table.insert(GAME.levels, LEV)

    if GAME.SECRET_EXITS[LEV.name] then
        LEV.secret_exit = true
    end
	
	--force heretic theme if using heretic iwad
	if BRUTALDOOM.PARAMETERS.iwad == "heretic.wad" then
		LEV.theme_name = "h_castle"
		LEV.name_class = "GOTHIC"
	end

    --[[ secret levels
    if map == 31 then
      LEV.theme_name = "wolf"
      LEV.name_class = "URBAN"
      LEV.is_secret = true
    end
    if map == 32 then
      LEV.theme_name = "satanshankerchief"
      LEV.name_class = "TECH"
      LEV.is_secret = true
    end]]--

    -- prebuilt levels
    local pb_name = LEV.name
    
    LEV.prebuilt = GAME.PREBUILT_LEVELS[pb_name]

    if LEV.prebuilt then
      LEV.name_class = LEV.prebuilt.name_class or "BOSS"
    end

    if MAP_NUM == 1 or (map % 10) == 3 then
      LEV.demo_lump = string.format("DEMO%d", ep_index)
    end
	
	-- the 'dist_to_end' value is used for Boss monster decisions
    if map >= 26 and map <= 29 then
      LEV.dist_to_end = 30 - map
    elseif map == 11 or map == 20 then
      LEV.dist_to_end = 1
    elseif map == 16 or map == 23 then
      LEV.dist_to_end = 2
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
