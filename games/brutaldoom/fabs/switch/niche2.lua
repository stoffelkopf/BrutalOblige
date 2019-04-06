--
--  Niche switch
--

PREFABS.Switch_niche2 =
{
  file   = "switch/niche2.wad"
  map    = "MAP01"

  theme  = "!hell"

  key    = "sw_metal"
  prob   = 50

  where  = "seeds"
  deep   =  16
  over   = -16

  x_fit = "frame"
  y_fit = "top"

  tag_1 = "?switch_tag"
}

PREFABS.Switch_niche2_hell =
{
  
  template = "Switch_niche2"
  
  file   = "switch/niche2.wad"
  map    = "MAP02"

  theme  = "hell"
}
