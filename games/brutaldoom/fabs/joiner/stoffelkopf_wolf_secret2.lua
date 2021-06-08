--
-- Secret joiners
--

PREFABS.wolf_Joiner_secret2_A =
{
  file   = "joiner/stoffelkopf_wolf_secret2.wad"
  map    = "MAP01"

  theme = "wolf"

  prob   = 150

  key    = "secret"

  where  = "seeds"
  shape  = "I"
  
  env = "building"

  seed_w = 2
  seed_h = 1

  deep   = 16
  over   = 16

  x_fit  = "frame"
  y_fit  = { 64,96 }
}


-- hint is a small gap
PREFABS.wolf_Joiner_secret2_B =
{
  template = "wolf_Joiner_secret2_A"
  map      = "MAP02"

  prob   = 50
}

