PREFABS.starterpacktank =
{
  file   = "decor/starterpacktank.wad"
  map    = "MAP01"

  prob   = 1000

  theme  = "urban"
  env    = "outdoor"
  game   = "brutaldoom"
  module    = "brutal_starterpack"  --needs my edited version of the prefab script

  where  = "point"
  size   = 156
  height = 64
}

PREFABS.starterpacktank_Panzer =
{
    template = "starterpacktank"

    tex_APC1  = "PANZE1"
    tex_APC2  = "PANZE2"
    flat_CAMO = "CAMO2"
    
    thing_4184 = "panzertank"
    
    theme  = "wolf"
}
