--
--  Secret item niche
--

-- the hint here is misaligned texture
PREFABS.wolf_Item_secret_niche1 =
{
  file  = "item/stoffelkopf_wolf_secret_niche.wad"

  theme = "wolf"

  prob  = 100
  key   = "secret"

  where  = "seeds"
  seed_w = 1
  seed_h = 1

  deep =  16
  over = -16

  x_fit = "frame"
  y_fit = "top"
}

-- this one uses a hint object (usually)
PREFABS.wolf_Item_secret_niche2 =
{
  template = "wolf_Item_secret_niche1"
  map      = "MAP02"

  prob = 100

  thing_34 =
  {
    nothing = 50
    pool_blood_1 = 30
    pool_blood_2 = 30
    pool_brains = 30
  }
}