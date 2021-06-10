--
-- Keyed doors, medium size
--

PREFABS.Locked_wolf_medium_red =
{
  file   = "door/stoffelkopf_wolf_key_medium.wad"
  map    = "MAP01"

  prob   = 50
  
  theme = "wolf"

  where  = "edge"
  key    = "k_red"

  seed_w = 2

  deep   = 32
  over   = 32

  x_fit  = "frame"

  flat_FLAT23 = "BIGDOOR1"
  
  tex_DOOR3_10 = { DOOR3_10=50, DOOR3_30=50 }  

  -- texture is already "DOORRED"
  -- line special is already #33
}


PREFABS.Locked_wolf_medium_red_diag =
{
  file   = "door/stoffelkopf_wolf_key_medium.wad"
  map    = "MAP02"

  prob   = 50
  
  theme = "wolf"  

  where  = "diagonal"
  key    = "k_red"

  seed_w = 2
  seed_h = 2

  flat_FLAT23 = "BIGDOOR1"
  
  tex_DOOR3_10 = { DOOR3_10=50, DOOR3_30=50 }  

  -- texture is already "DOORRED"
  -- line special is already #33
}


----------------------------------------------


PREFABS.Locked_wolf_medium_blue =
{
  template = "Locked_wolf_medium_red"
  key      = "k_blue"

  tex_DOORRED = "DOORBLU"
  line_33     = 32
}

PREFABS.Locked_wolf_medium_blue_diag =
{
  template = "Locked_wolf_medium_red_diag"
  key      = "k_blue"

  tex_DOORRED = "DOORBLU"
  line_33     = 32
}


----------------------------------------------


PREFABS.Locked_wolf_medium_yellow =
{
  template = "Locked_wolf_medium_red"
  key      = "k_yellow"

  tex_DOORRED = "DOORYEL"
  line_33     = 34
}

PREFABS.Locked_wolf_medium_yellow_diag =
{
  template = "Locked_wolf_medium_red_diag"
  key      = "k_yellow"

  tex_DOORRED = "DOORYEL"
  line_33     = 34
}

