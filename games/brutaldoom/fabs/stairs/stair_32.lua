--
-- basic stair, 32 units high
--

PREFABS.Stair_32 =
{
  file   = "stairs/stair_32.wad"
  map    = "MAP01"

  prob   = 90

  where  = "seeds"
  shape  = "I"

  x_fit  = "stretch"

  bound_z1 = 0
  bound_z2 = 32

  delta_h = 32
}

PREFABS.Stair_slope_32 =
{
  file   = "stairs/stair_32.wad"
  map    = "MAP02"

  prob   = 0

  where  = "seeds"
  shape  = "I"

  x_fit  = "stretch"

  bound_z1 = 0
  bound_z2 = 32

  delta_h = 32
}

