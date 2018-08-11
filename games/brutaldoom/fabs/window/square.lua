--
-- a simple square shaped window
--

PREFABS.Window_square1 =
{
  file   = "window/square.wad"
  map    = "MAP01"

  theme  = "hell"

  group  = "square"

  prob   = 50

  where  = "edge"
  seed_w = 1

  deep   = 16
  over   = 16
  height = 112

  bound_z1 = 0
  bound_z2 = 112
}

PREFABS.Window_square1_destroyable =
{
  template = "Window_square1"

  map      = "MAP05"

  theme  = "!hell"

  seed_w   = 1
}



PREFABS.Window_square2 =
{
  template = "Window_square1"

  map      = "MAP02"

  theme  = "hell"

  seed_w   = 2
}

PREFABS.Window_square2_destroyable =
{
  template = "Window_square1"

  map      = "MAP06"

  theme  = "!hell"

  seed_w   = 2
}



PREFABS.Window_square3 =
{
  template = "Window_square1"

  map      = "MAP03"

  theme  = "hell"

  seed_w   = 3
}

PREFABS.Window_square3_destroyable =
{
  template = "Window_square1"

  map      = "MAP04"

  theme  = "!hell"

  seed_w   = 3
}

