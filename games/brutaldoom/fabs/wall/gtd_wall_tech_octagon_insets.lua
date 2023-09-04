PREFABS.Wall_tech_octagon_insets_1 =
{
  file   = "wall/gtd_wall_tech_octagon_insets.wad",
  map    = "MAP01",

  prob   = 50,
  theme  = "tech",
  env = "building",

  group = "gtd_wall_octagon_insets",

  where  = "edge",
  deep   = 16,
  height = 128,

  bound_z1 = 0,
  bound_z2 = 128,

  z_fit  = "top",
}

PREFABS.Wall_tech_octagon_insets_2 =
{
  template = "Wall_tech_octagon_insets_1",
  map      = "MAP02",

  prob     = 10,
}

PREFABS.Wall_tech_octagon_insets_diagonal =
{
  file   = "wall/gtd_wall_tech_octagon_insets.wad",
  map    = "MAP03",

  prob   = 50,
  theme  = "tech",
  env = "building",

  group = "gtd_wall_octagon_insets",

  where  = "diagonal",
  deep   = 16,
  height = 128,

  bound_z1 = 0,
  bound_z2 = 128,

  z_fit  = "top",
}