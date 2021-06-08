--
-- Secret doors
--

PREFABS.wolf_Door_secret =
{
  file   = "door/stoffelkopf_wolf_secret.wad"
  map    = "MAP01"

  theme = "wolf"

  prob   = 200

  where  = "edge"
  key    = "secret"

  deep   = 16
  over   = 16

  x_fit  = "frame"
}


PREFABS.wolf_Door_secret_diag =
{
  file   = "door/stoffelkopf_wolf_secret.wad"
  map    = "MAP02"

  theme = "wolf"

  prob   = 50

  where  = "diagonal"
  key    = "secret"
}


-- wall is lit up
PREFABS.wolf_Door_secret3 =
{
  template = "wolf_Door_secret"
  map      = "MAP03"

  theme = "wolf"

  prob   = 50
}



