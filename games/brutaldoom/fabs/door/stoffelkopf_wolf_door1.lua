--
-- A rather plain door
--

PREFABS.Door_wolf_plain2 =
{
  file   = "door/stoffelkopf_wolf_door1.wad"
  map    = "MAP02"

  prob   = 500
  theme  = "wolf"

  where  = "edge"
  seed_w = 2
  
  kind   = "arch"
  style  = "doors"  

  deep   = 32
  over   = 32

  x_fit  = "frame"

  bound_z1 = 0
  bound_z2 = 128
 
  tex_ZDOORB1 = { ZDOORB1=50, ZDOORF1=50, DOOR1_10=50, DOOR1_30=50 }  
}

PREFABS.Door_wolf_plain3 =
{
  template = "Door_wolf_plain2"
  seed_w = 3
}

PREFABS.Door_wolf_plain4 =
{
  template = "Door_wolf_plain2"
  seed_w = 4
}

PREFABS.Arch_wolf_plain2 =
{
  file   = "door/stoffelkopf_wolf_door1.wad"
  map    = "MAP02"

  prob   = 500
  theme  = "wolf"

  where  = "edge"
  seed_w = 2
  
  kind   = "arch" 

  deep   = 32
  over   = 32

  x_fit  = "frame"

  bound_z1 = 0
  bound_z2 = 128
 
  tex_ZDOORB1 = { ZDOORB1=50, ZDOORF1=50, DOOR1_10=50, DOOR1_30=50 }  
}

PREFABS.Arch_wolf_plain3 =
{
  template = "Arch_wolf_plain2"
  seed_w = 3
}

PREFABS.Arch_wolf_plain4 =
{
  template = "Arch_wolf_plain2"
  seed_w = 4
}