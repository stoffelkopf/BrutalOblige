function copy(obj, seen)
  if type(obj) ~= 'table' then return obj end
  if seen and seen[obj] then return seen[obj] end
  local s = seen or {}
  local res = setmetatable({}, getmetatable(obj))
  s[obj] = res
  for k, v in pairs(obj) do res[copy(k, s)] = copy(v, s) end
  return res
end

BD64MAPS.THEMES = DOOM.THEMES

--Tech
BD64MAPS.THEMES.tech.prefab_remap =
{
    --in no particular order
    BIGDOOR1 = "TILE0CAC"
    BIGDOOR2 = "TILED4A9"
    BIGDOOR3 = "TILE4507"
    BIGDOOR4 = "TILE0CAC"

    GATE1 = "XPORTAL1"
    GATE2 = "XPORTAL1"
    GATE3 = "YPORTAL1"
    GATE4 = "ZPORTAL1"
}

BD64MAPS.MATERIALS =
{
    TILE1B4E  = { t="TILE1B4E",    f="TILE1B4E" }
    TILE9496  = { t="TILE9496",    f="TILE9496" }
    TILED88E = { t="TILED88E",    f="TILED88E" }
    TILE0CAC = { t="TILE0CAC",    f="TILE0CAC" }
    TILED4A9 = { t="TILED4A9",    f="TILED4A9" }
    TILE4507 = { t="TILE4507",    f="TILE4507" }
    TILE52CA = { t="TILE52CA",    f="TILE52CA" }
    TILE29EF = { t="TILE29EF",    f="TILE29EF" }
    TILEB850 = { t="TILEB850",    f="TILEB850" }
    TILE65CE = { t="TILE65CE",    f="TILE65CE" }
    CUSTOM44 = { t="CUSTOM44",    f="CUSTOM44" }
    XPORTAL1 = { t="XPORTAL1",    f="XPORTAL1" }
    YPORTAL1 = { t="YPORTAL1",    f="YPORTAL1" }
    ZPORTAL1 = { t="ZPORTAL1",    f="ZPORTAL1" }
    FTILEEBD = { t="FTILEEBD",    f="FTILEEBD" }
    CUSTOM52 = { t="CUSTOM52", f="CUSTOM52" }
    CUSTOMV = { t="CUSTOMV", f="CUSTOMV" }
    TILEA2AB = { t="TILEA2AB", f="TILEA2AB" }
    TILED173 = { t="TILED173", f="TILED173" }
    TILEA2AA = { t="TILEA2AA", f="TILEA2AA" }
    TILE6667 = { t="TILE6667", f="TILE6667" }
    TILE6EAD = { t="TILE6EAD", f="TILE6EAD" }
    TILEC571 = { t="TILEC571", f="TILEC571" }
    TILE1BB5 = { t="TILE1BB5", f="CUSTOMAT" }
    TILE0537 = { t="TILE0537", f="TILE0537" }
    TILE37CC = { t="TILE37CC", f="TILE37CC" }
    TILE5DD0 = { t="TILE5DD0", f="TILE5DD0" }
    TILEEB33 = { t="TILEEB33", f="TILEEB33" }
    TILE3B6E = { t="TILE3B6E", f="TILE3B6E" }
    FTILE0E9 = { t="FTILE0E9", f="FTILE0E9" }
}

BD64MAPS.THEMES.hell =
{
    liquids =
    {
      lava   = 60
      blood  = 20
      slime  = 10
      nukage = 5
    }

    entity_remap =
    {
      k_red    = "ks_red"
      k_blue   = "ks_blue"
      k_yellow = "ks_yellow"
    }

    facades =
    {
      TILEA2AB = 60
      SP_HOT1  = 50
      TILED173   = 30
      BROWN1   = 30

      SKINMET2 = 20
      G64VINE1 = 20
      G64VINE2 = 20
      STONE    = 10
      MARBLE2  = 10
    }

    fences =
    {
      TILEA2AA  = 60
      TILEA2AB = 30
      CUSTOMV    = 60
      WOOD3    = 40
      STONE4   = 40
      BSTONE2  = 40
      ICKWALL3 = 20

      G64VINE1 = 15
      G64VINE2 = 15
      SP_HOT1  = 10
      BRICK10  = 10
      SKIN2    = 20
    }

    cliff_mats =
    {
      ROCKRED1 = 80
      TILE0537 = 40
      ASHWALL2 = 40
      ROCK3    = 40
      CRACKLE4 = 40
      SKSNAKE1 = 20
      SKIN2    = 10
    }

    prefab_remap =
    {
      DOORBLU  = "TILEC571"
      DOORYEL  = "TILE6667"
      DOORRED  = "TILE6EAD"

      BIGDOOR1 = "TILEEB33"--Who knows what's going on with "TILE5DD0"?
      BIGDOOR2 = "TILE3B6E"
      BIGDOOR3 = "TILEEB33"
      BIGDOOR4 = "TILE37CD"
      
      BIGDOOR6 = "TILE5DD0"

      SW1COMP  = "SW1LION"
      SW1PIPE  = "SW1BROWN"
      SILVER3  = "MARBFACE"
    
      GATE1 = "XPORTAL1"
      GATE2 = "XPORTAL1"
      GATE3 = "YPORTAL1"
      GATE4 = "ZPORTAL1"
    
      MARBFAC2 = "TILE37CC"
    }

    floor_sinks =
    {
      PLAIN = 120
      liquid_plain = 10
      liquid_blood = 10
      floor_skulls = 20
      floor_glowingrock = 12
      floor_snakes = 10
    }

    ceiling_sinks =
    {
      PLAIN = 80

      sky_metal = 20
      sky_plain = 20
      sky_hell_1 = 10
      sky_hell_2 = 10
      sky_hell_3 = 20

      light_diamond = 10
      light_hell_red = 20
      light_hell_lava = 5
      ceil_redash = 5
      ceil_vdark = 10
    }

    wall_groups =
    {
      PLAIN = 80
      torches1 = 40
      torches2 = 15
      low_gap = 20
      runes1 = 7
      runes2 = 7
      runes3 = 7
      cross1 = 7
      cross2 = 15
    }

    window_groups =
    {
      round  = 80
      tall   = 40
      barred = 20
      grate  = 10
    }

    cave_torches =
    {
      red_torch   = 70
      green_torch = 30
      blue_torch  = 10

      candelabra = 30
      skull_rock = 10
      evil_eye   = 10
    }

    ceil_light_prob = 25
}

BD64MAPS.ROOM_THEMES =
{
  ----- HELL / GOTHIC -----------------------------


  hell_GreenMarble =
  {
    env  = "building"
    prob = 40

    walls =
    {
      MARBLE1 = 20
      MARBLE2 = 50
      TILEA2AA = 50
    }

    floors =
    {
      GRNROCK  = 30
      FLAT5_4  = 30
      FLAT5_1  = 30
      FLOOR7_1 = 30

      FLAT10   = 10
      FLOOR6_2 = 10
      RROCK14  = 10
      MFLR8_2  = 10
    }

    ceilings =
    {
      FLOOR7_2 = 50
      FTILE0E9   = 20
      FLOOR6_1 = 20
      FLOOR6_2 = 20
      MFLR8_4  = 15
    }
  }


  hell_GrayMarble =
  {
    env  = "building"
    prob = 60

    walls =
    {
      TILEA2AB = 50
    }

    floors =
    {
      FLOOR7_1 = 40
      FTILE0E9   = 40
      DEM1_6   = 20
      FLAT10   = 20
      FLAT5_4  = 20
      FLAT5_8  = 20
    }

    ceilings =
    {
      FLOOR7_2 = 50
      FTILE0E9   = 20
      FLOOR6_1 = 20
      FLOOR6_2 = 20
      MFLR8_4  = 15
    }
  }


  hell_Hotbrick =
  {
    env  = "building"
    prob = 40

    walls =
    {
      SP_HOT1 = 50
    }

    floors =
    {
      FLAT5_3 = 30
      FLAT10 = 50
      FLAT1 = 20
      FLOOR7_1 = 50
      FLAT5_7 = 10
      FLAT5_8 = 10
      FLOOR6_1 = 10
      FLOOR6_2 = 5
    }

    ceilings =
    {
      FLOOR6_1 = 20
      FLOOR6_2 = 20
      FLAT10 = 15
      FLAT5_3 = 10
    }
  }


  hell_Stone =
  {
    env  = "building"
    prob = 60

    walls =
    {
      TILED173 = 50
      TILEC8B9 = 10
    }

    floors =
    {
      FLOOR6_2 = 30
      RROCK13  = 30
      GRNROCK  = 30
      DEM1_6   = 30
      SLIME13  = 30
    }

    ceilings =
    {
      RROCK12  = 30
      RROCK03  = 30
      MFLR8_2  = 30
      FLAT5_1  = 30
    }
  }


  hell_Viney =
  {
    env  = "building"
    prob = 10

    walls =
    {
      G64VINE2 = 50
      G64VINE1 = 10
    }

    floors =
    {
      FLAT1 = 10
      FLOOR7_1 = 10
      DEM1_6 = 5
      FTILE0E9 = 5
      FLOOR7_2 = 10
    }

    ceilings =
    {
      FLAT1 = 5
      FLOOR7_2 = 20
      FLOOR6_1 = 3
    }
  }


  hell_Wood =
  {
    env  = "building"
    prob = 15

    walls =
    {
      TILE1BB5 = 50
      WOOD3 = 30
      CUSTOMV = 30
      WOOD12 = 30
      WOODVERT = 10
    }

    floors =
    {
      FLAT5_1 = 50
      FLAT5_2 = 50
      MFLR8_1 = 50
      FLOOR7_1 = 50
      FLAT5_4 = 30
      FLOOR4_6 = 10
    }

    ceilings =
    {
      FLOOR7_2 = 50
      RROCK14 = 40
      CEIL1_1 = 30
      FLAT5_2 = 10
      FLAT5_7 = 10
      FLOOR7_1 = 5
    }
  }


  hell_Skin =
  {
    env  = "building"
    prob = 10

    walls =
    {
      SKINMET1 = 50
      SKINMET2 = 50
      SKINCUT  = 5
      SKINSYMB = 5
    }

    floors =
    {
      SFLR6_1  = 10
      FLOOR7_1 = 20
      FLOOR6_1 = 40
    }

    ceilings =
    {
      SFLR6_1 = 30
      SFLR6_4 = 30
      FLAT5_3 = 7
      FLAT5_4 = 5
      FLOOR7_2 = 10
      FTILE0E9 = 10
    }
  }


  hell_Cave_generic =
  {
    env  = "cave"
    prob = 40

    walls =
    {
      TILE0537 = 30
      G64VINE1 = 30

      ASHWALL2 = 30
      CUSTOM52  = 20
      STONE    = 10

      SKINEDGE = 10
      CRACKLE4 = 10
      SKSNAKE1 = 10
    }

    floors =
    {
      MFLR8_3  = 20
      RROCK16  = 30

      ASHWALL2 = 30
      CUSTOM52  = 20
      FLOOR6_1 = 20
      STONE    = 10

      RROCK02  = 10
      SKSNAKE1 = 10
    }
  }


  hell_Cave_Hot =
  {
    env  = "cave"
    prob = 60

    light_adjusts = { 32,48,64 }

    walls =
    {
      ROCKRED1 = 50
      FIRELAVA = 15
      CRACKLE2 =  5
    }

    floors =
    {
      FLOOR6_2 = 40
      FLOOR6_1 = 20

      RROCK01  = 20
      RROCK05  = 20
      RROCK03  = 10
      RROCK02  = 5
    }
  }


  hell_Outdoors_generic =
  {
    env  = "outdoor"
    prob = 50

    floors =
    {
      FLOOR6_2 = 10
      FLAT5_7 = 20
      FLAT5_8 = 10
      RROCK03 = 30
    }

    naturals =
    {
      MFLR8_4 = 60
      MFLR8_3 = 10
      CUSTOM52 = 30
      RROCK09 = 20
      SFLR6_1 = 10
    }
  }


  hell_deuce_Hallway =
  {
    env   = "hallway"
    group = "deuce"
    prob  = 100

    walls =
    {
      SKSPINE2 = 30
      FIREWALL = 30
      SKINSYMB = 30

      SKSNAKE1 = 20
      SKINEDGE = 20
      TILEA2AB = 20
      SW1WOOD  = 20

      WOODMET4 = 10
      SW1LION  =  5
      REDWALL  =  5
      FIREBLU1 =  5
    }

    floors =
    {
      BLOOD1   = 45
      FLAT5_3  = 30
      FLAT5_8  = 30
      FLAT5_1  = 20
      FLOOR6_1 = 20
      MFLR8_1  = 20
      GRNROCK  = 20
      RROCK05  = 20
    }

    ceilings =
    {
      BLOOD1   = 45
      FLAT5_3  = 30
      FLAT5_8  = 30
      FLAT5_1  = 20
      FLOOR6_1 = 20
      GRNROCK  = 20
      RROCK05  = 20
      LAVA1    = 20
    }

    y_offsets =
    {
      TILEA2AB = 24
      SKINSYMB = 30
      SKSPINE2 = 13
      SW1WOOD  = 47
      SW1LION  = 47
      WOODMET4 = 16
    }
  }
}

function tableMerge(t1, t2)
    for k,v in pairs(t2) do
        if type(v) == "table" then
            if type(t1[k] or false) == "table" then
                tableMerge(t1[k] or {}, t2[k] or {})
            else
                t1[k] = v
            end
        else
            t1[k] = v
        end
    end
    return t1
end
