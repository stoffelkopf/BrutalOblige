--
-- Simple start closet
--

PREFABS.Start_closet1 =
{
  file  = "start/closet1.wad"
  map    = "MAP01"

  prob  = 80

  where = "seeds"

  deep  =  16
  over  = -16

  x_fit = "frame"
  y_fit = "top"

  -- door variations
  tex_DOOR1 = { DOOR1=50, DOOR3=50, SPCDOOR1=50, SPCDOOR3=50 }

  -- wall variations
  tex_BROWN1 = { BROWN1=50, BRONZE3=50, BROWNGRN=50, SLADWALL=50 }
}

PREFABS.Start_closet1_rainy =
{
    template = "Start_closet1"

    prob    = 0 --doesn't fit on the yaxis

    map    = "MAP02"
    
    theme = "urban"
}

