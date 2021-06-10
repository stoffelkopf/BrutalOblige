--
-- Large keyed door
--

PREFABS.wolf_Locked_joiner_red =
{
  file   = "joiner/stoffelkopf_wolf_key_large.wad"
  where  = "seeds"
  shape  = "I"

  key    = "k_red"
  
  theme = "wolf"  

  seed_w = 2
  seed_h = 1

  deep   = 16
  over   = 16

  x_fit  = "frame"

  nearby_h = 160

  prob   = 100

  flat_FLOOR7_2 = "BIGDOOR3"
  
  tex_DOOR3_10 = { DOOR3_10=50, DOOR3_30=50 }  

  -- texture is already "DOORRED"
  -- line special is already #33
}


PREFABS.wolf_Locked_joiner_blue =
{
  template = "wolf_Locked_joiner_red"
  key      = "k_blue"

  tex_DOORRED = "DOORBLU"
  line_33     = 32
}


PREFABS.wolf_Locked_joiner_yellow =
{
  template = "wolf_Locked_joiner_red"
  key      = "k_yellow"

  tex_DOORRED = "DOORYEL"
  line_33     = 34
}

