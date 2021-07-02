--
-- Hanging ceiling lamp
--

PREFABS.wolf_Light_hanging =
{
  file   = "decor/stoffelkopf_wolf_hang_lamp.wad"
  map    = "MAP01"

  prob   = 100

  theme  = "wolf"
  env    = "building"

  kind   = "light"
  where  = "point"

  height = 128

  bound_z1 = -64
  bound_z2 = 0
  
  light_color = "white"
}

PREFABS.wolf_Light_hanging_2 =
{
  template = "wolf_Light_hanging"
  light_color = "yellow"
}
