--
-- Joiner with opening door
--

PREFABS.wolf_Joiner_door2 =
{
  file   = "joiner/stoffelkopf_wolf_door2.wad"
  map    = "MAP01"

  prob   = 200

  style  = "doors"
  
  theme = "wolf"  

  where  = "seeds"
  shape  = "I"

  seed_w = 2
  seed_h = 1

  deep   = 16
  over   = 16

  x_fit  = "frame"

  tex_ZDOORB1 = { ZDOORB1=50, ZDOORF1=50, DOOR1_10=50, DOOR1_30=50 }  
}

PREFABS.wolf_Joiner_door3 =
{
  template = "wolf_Joiner_door2"
  seed_w = 3
}

PREFABS.wolf_Joiner_door4 =
{
  template = "wolf_Joiner_door2"
  seed_w = 4
}

PREFABS.wolf_Joiner2 =
{
  file   = "joiner/stoffelkopf_wolf_door2.wad"
  map    = "MAP01"

  prob   = 200
  
  theme = "wolf"  

  where  = "seeds"
  shape  = "I"

  seed_w = 2
  seed_h = 1

  deep   = 16
  over   = 16

  x_fit  = "frame"

  tex_ZDOORB1 = { ZDOORB1=50, ZDOORF1=50, DOOR1_10=50, DOOR1_30=50 }  
}

PREFABS.wolf_Joiner3 =
{
  template = "wolf_Joiner2"
  seed_w = 3
}

PREFABS.wolf_Joiner4 =
{
  template = "wolf_Joiner2"
  seed_w = 4
}