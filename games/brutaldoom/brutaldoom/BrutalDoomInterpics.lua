if OB_CONFIG.iwad_usage == "complete" then
  gui.printf("Using Doom Complete Interpics...\n")
  BRUTALDOOM.INTERPICS = 
  {
    any =
    {
      'PLUINTER'
      'INTER_E4'
    }
    tech =
    {
      'TNTINTER'
    }
    hell = 
    {
      'SIGILINT'
    }
  }
else
  gui.printf("Using Doom 2 Interpics...\n")
  BRUTALDOOM.INTERPICS = 
  {
    any = 
    {
      'INTERPIC'
    }
  }
end