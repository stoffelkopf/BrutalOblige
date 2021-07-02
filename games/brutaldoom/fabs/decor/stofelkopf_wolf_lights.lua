PREFABS.wolf_Orig_Lamp_Green =
{
  file   = "decor/stofelkopf_wolf_lights.wad",
  map    = "MAP01",

  prob   = 100,
  theme  = "wolf",
  env    = "building",

  kind   = "light",
  where  = "point",

  height = 128,

  bound_z1 = 0,
  bound_z2 = 128,

  light_color = "white",

  -- use the occasional-blink FX (fairly rarely)
  --sector_1  = { [0]=90, [1]=15 }
}

PREFABS.wolf_Orig_Lamp_Green_2 =
{
  template = "wolf_Orig_Lamp_Green",
  light_color = "green",
}

PREFABS.wolf_Orig_Lamp_Green_2 =
{
  template = "wolf_Orig_Lamp_Green",
  light_color = "yellow",
}

PREFABS.wolf_Orig_Lamp_Chandelier =
{
  template = "wolf_Orig_Lamp_Green",
  prob   = 50,
  map    = "MAP02",
  light_color = "white",  
}

PREFABS.wolf_Orig_Lamp_Chandelier_2 =
{
  template = "wolf_Orig_Lamp_Green",
  prob   = 50,  
  map    = "MAP02",
  light_color = "yellow",  
}

PREFABS.wolf_Orig_Lamp_Red =
{
  template = "wolf_Orig_Lamp_Green",
  map    = "MAP03",
  light_color = "white",  
}

PREFABS.wolf_Orig_Lamp_Red_2 =
{
  template = "wolf_Orig_Lamp_Green",
  map    = "MAP03",
  light_color = "yellow",  
}

PREFABS.wolf_Orig_Lamp_Red_3 =
{
  template = "wolf_Orig_Lamp_Green",
  map    = "MAP03",
  light_color = "red",  
}

PREFABS.wolf_Orig_Lamp_Red_4 =
{
  template = "wolf_Orig_Lamp_Green",
  map    = "MAP03",
  light_color = "beige",  
}