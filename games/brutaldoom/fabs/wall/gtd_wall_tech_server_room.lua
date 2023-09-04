PREFABS.Wall_tech_server_wall =
{
  file   = "wall/gtd_wall_tech_server_room.wad"
  map    = "MAP01"

  prob   = 300
  theme  = "tech"
  env = "building"

  group = "gtd_wall_server_room"

  where  = "edge"
  deep   = 16
  height = 128

  bound_z1 = 0
  bound_z2 = 128

  z_fit  = "top"
}

PREFABS.Wall_tech_server_wall_diag =
{
  file   = "wall/gtd_wall_tech_server_room.wad"
  map    = "MAP02"

  prob   = 50
  theme = "tech"
  group = "gtd_wall_server_room"

  where  = "diagonal"

  height = 128

  bound_z1 = 0
  bound_z2 = 128

  z_fit  = "top"
}

PREFABS.Wall_tech_server_wall1 =
{
  template = "Wall_tech_server_wall"

  prob = 50

  map = "MAP03"
}

PREFABS.Wall_tech_server_wall2 =
{
  template = "Wall_tech_server_wall"

  prob = 50

  map = "MAP04"
}

PREFABS.Wall_tech_server_wall3 =
{
  template = "Wall_tech_server_wall"

  prob = 50

  map = "MAP05"
}