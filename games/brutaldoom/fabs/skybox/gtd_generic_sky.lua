PREFABS.Skybox_generic =
{
  file  = "skybox/gtd_generic_sky.wad"
  map   = "MAP01"

  prob  = 50

  where = "point"

  kind  = "skybox"

  bound_z1 = -256
  bound_z2 = 256
}

PREFABS.Skybox_generic_rain =
{
  template = "Skybox_generic"

  map = "MAP02"
  
  prob  = 30
 }
 
 PREFABS.Skybox_generic_snow =
{
  template = "Skybox_generic"

  map = "MAP03"
  
  prob  = 15
 }
 
  PREFABS.Skybox_generic_cloud =
{
  template = "Skybox_generic"

  map = "MAP04"
  
  prob  = 30
 }