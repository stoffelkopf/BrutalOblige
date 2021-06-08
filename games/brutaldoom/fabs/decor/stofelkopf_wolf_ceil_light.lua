PREFABS.wolf_Light_gtd_detailed =
{
  file   = "decor/stofelkopf_wolf_ceil_light.wad",
  map    = "MAP01",

  prob   = 60,
  theme  = "wolf",
  env    = "building",

  kind   = "light",
  where  = "point",

  height = 128,

  bound_z1 = -32,
  bound_z2 = 0,

  light_color = "orange",

  -- use the occasional-blink FX (fairly rarely)
  sector_1  = { [0]=90, [1]=15 }
}

-- red circles with green cover
PREFABS.wolf_Light_gtd_detailed_alt =
{
  template = "wolf_Light_gtd_detailed",

  light_color = "red",

  flat_TLITE6_6 = "TLITE6_5",
  flat_CEIL5_2 = "CEIL5_1",
  tex_BRONZE1 = "BROWNGRN",
}

-- gray light, gray cover version
PREFABS.wolf_Light_gtd_detailed_alt2 =
{
  template = "wolf_Light_gtd_detailed",

  light_color = "white",

  flat_TLITE6_6 = "FLAT2",
  flat_CEIL5_2 = "FLAT19",
  tex_BRONZE1 = "GRAY7",
}

----------------------------------------------
-- TLITE circles arranged in a quad pattern --
----------------------------------------------
PREFABS.wolf_Light_gtd_circle_quad_tight =
{
  template = "wolf_Light_gtd_detailed",
  map = "MAP05",

  light_color = "beige"
}

PREFABS.wolf_Light_gtd_circle_quad_tight_red =
{
  template = "wolf_Light_gtd_detailed",
  map = "MAP05",

  light_color = "red",

  flat_TLITE6_6 = "TLITE6_5"
}

----------------------------------------------
-- TLITE circles arranged in a quad pattern --
----------------------------------------------
PREFABS.wolf_Light_gtd_diamond_tight =
{
  template = "wolf_Light_gtd_detailed",
  map = "MAP06",

  light_color = "beige"
}