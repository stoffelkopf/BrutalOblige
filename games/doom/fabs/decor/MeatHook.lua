PREFABS.Decor_MeatHook =
{
  file   = "decor/MeatHook.wad"
  map    = "MAP01"

  prob   = 400
  env    = "building"

  where  = "point"
  size   = 104
  height = 160

  bound_z1 = 0
  bound_z2 = 160

  z_fit  = "stretch"
  
  theme = "!satanshankerchief"
}

PREFABS.Decor_ChexProps =
{
    template="Decor_MeatHook"
    
    thing_15856 =
    {
        PropHangingPlant1 = 60
        PropHangingPlant2 = 60
        PropHangingPots = 30
    }
    
    theme = "satanshankerchief"
    
    prob   = 600
}
