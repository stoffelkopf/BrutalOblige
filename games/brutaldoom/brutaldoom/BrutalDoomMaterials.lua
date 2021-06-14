BRUTALDOOM.LIQUIDS =
{
  water2 = { mat="FLTWAWA1", light_add=16, special=0 }
  hsludge = { mat="FLTSLUD1", light_add=16, special=16, damage=20 }
  hlava   = { mat="FLATHUH1", light_add=24, special=16, damage=20 }
  hmagma  = { mat="FLTHLAVA", light_add=16, special=16, damage=20 }
}

BRUTALDOOM.MATERIALS =
{ 
  -- Tnt stuff (copied from the standard oblige defenitions)--
  TNTDOOR  = { t="TNTDOOR",  f="FLAT23" }
  DOC1     = { t="DOC1",     f="FLAT23" }
  DISASTER = { t="DISASTER", f="FLOOR7_1" }
  MTNT1    = { t="MTNT1",    f="FLOOR7_2" }

  BTNTSLVR = { t="BTNTSLVR", f="FLAT23" }
  BTNTMETL = { t="BTNTMETL", f="CEIL5_2" }
  CUBICLE  = { t="CUBICLE",  f="CEIL5_1" }
  M_TEC    = { t="M_TEC",    f="CEIL5_2" }
  YELMETAL = { t="YELMETAL", f="CEIL5_2" }

  METALDR  = { t="METALDR",  f="CEIL5_2" }
  METAL_BD = { t="METAL-BD", f="CEIL5_2" }
  METAL_RM = { t="METAL-RM", f="CEIL5_2" }
  METAL2BD = { t="METAL2BD", f="CEIL5_2" }

  M_RDOOR  = { t="M_RDOOR",  f="FLOOR7_1" }
  M_YDOOR  = { t="M_RDOOR",  f="FLOOR7_1" }

  MFLR8_4  = { t="MFLR8_4",  f="MFLR8_4" } --needs looking at
  FLAT8    = { f="FLAT8",    t="DOKODO1B" }

  CAVERN1  = { t="CAVERN1",  f="RROCK07" }
  CAVERN4  = { t="CAVERN4",  f="MFLR8_3" }
  CAVERN6  = { t="CAVERN6",  f="RROCK17" }
  CAVERN7  = { t="CAVERN7",  f="RROCK16" }

  SMSTONE6 = { t="SMSTONE6", f="RROCK09" }
  STONEW1  = { t="STONEW1",  f="RROCK09" }
  STONEW5  = { t="STONEW5",  f="MFLR8_3" }

  -- All the crates here! --

  -- 64x64 etc
  CR64LB  = { t="CR64LB",  f="CRATOP2" }
  CRLWDS6 = { t="CRLWDS6", f="CRATOP2" } --64x32, not really useful

  -- 64x128
  CRBLWDH6 = { t="CRBLWDH6", f="CRATOP2" }
  CRBWDH64 = { t="CRBWDH64", f="FLAT5_2" }
  CRLWDL6B = { t="CRLWDL6B", f="CRATOP2" }
  CR64HBRM = { t="CR64HBRM", f="CRATOP2" }
  CR64HBBP = { t="CR64HBBP", f="CRATOP2" }
  CR64HGBP = { t="CR64HGBP", f="CRATOP1" }
  CR64SLGB = { t="CR64SLGB", f="CRATOP1" }
  CR64HBG  = { t="CR64HBG",  f="CRATOP2" }
  CR64HBB  = { t="CR64HBB",  f="CRATOP2" }
  CR64HGB  = { t="CR64HGB",  f="CRATOP1" }
  CR64HGG  = { t="CR64HGG",  f="CRATOP1" }
  CRSMB    = { t="CRSMB",    f="CRATOP2" }
  CRWDL64A = { t="CRWDL64A", f="FLAT5_2" }
  CRWDL64B = { t="CRWDL64B", f="FLAT5_2" }
  CRWDL64C = { t="CRWDL64C", f="FLAT5_2" }
  CRWDT32  = { t="CRWDT32",  f="FLAT5_2" }
  CRWDH64  = { t="CRWDH64",  f="FLAT5_2" }
  CRWDH64B = { t="CRWDH64B", f="FLAT5_2" }
  CRWDS64  = { t="CRWDH64",  f="FLAT5_2" }
  CRLWDH6B = { t="CRLWDH6B", f="CRATOP2" }
  CRLWDL6  = { t="CRLWDL6",  f="CRATOP2" }
  CRLWDL6E = { t="CRLWDL6E", f="CRATOP2" }
  CRLWDL6C = { t="CRLWDL6C", f="CRATOP2" }
  CRLWDL6D = { t="CRLWDL6D", f="CRATOP2" }
  CRTINYB  = { t="CRTINYB",  f="CRATOP2" }
  CRLWDH6  = { t="CRLWDH6",  f="CRATOP2" }
  CR64LG   = { t="CR64LG",   f="CRATOP1" }
  CRLWDVS  = { t="CRLWDVS",  f="CRATOP2" }

  -- 128x64
  CR128LG  = { t="CR128LG",  f="CRATOP2" }
  CRBWLBP  = { t="CRBWLBP",  f="CRATOP2" }
  CR128LB  = { t="CR128LB",  f="CRATOP2" }

  WLFCRATE  = { t="WLFCRATE",  f="FLAT5_2" }

  -- 128x128
  CRWDL128 = { t="CRWDL128", f="FLAT5_2" }
  CRAWHBP  = { t="CRAWHBP",  f="CRATOP1" }
  CRAWLBP  = { t="CRAWLBP",  f="CRATOP2" }
  CRBWHBP  = { t="CRBWHBP",  f="CRATOP1" }
  CRLWDL12 = { t="CRLWDL12", f="CRATOP2" }
  CRBWDL12 = { t="CRBWDL12", f="FLAT5_2" }
  CR128HGB = { t="CR128HGB", f="CRATOP1" }

  DOGRMSC  = { t="DOGRMSC",  f="RROCK20" }
  DOKGRIR  = { t="DOKGRIR",  f="RROCK09" }
  DOKODO1B = { t="DOKODO1B", f="FLAT5" }
  DOKODO1B = { t="DOKODO2B", f="FLAT5" }
  DOKGRIR  = { t="DOKGRIR",  f="RROCK20" }
  DOPUNK4  = { t="DOPUNK4",  f="CEIL5_1" }
  DORED    = { t="DORES",    f="CEIL5_1" }

  PNK4EXIT = { t="PNK4EXIT", f="CEIL5_1" }

  LITEGRN1 = { t="LITEGRN1", f="FLAT1" }
  LITERED1 = { t="LITERED1", f="FLAT1" }
  LITERED2 = { t="LITERED2", f="FLAT23" }
  LITEYEL1 = { t="LITEYEL1", f="CEIL5_1" }
  LITEYEL2 = { t="LITEYEL2", f="FLAT23" }
  LITEYEL3 = { t="LITEYEL3", f="FLAT23" }

  EGGREENI = { t="EGGREENI", f="RROCK20" }
  EGREDI   = { t="EGREDI",   f="FLAT5_3" }
  ALTAQUA  = { t="ALTAQUA",  f="RROCK20" }
  
  -- Wolf Stuff  

  BLUCOMB1  = { t="BLUCOMB1",  f="FLAT1" }
  BLUSKUL1  = { t="BLUSKUL1",  f="FLAT1" }
  BLUSWAS1  = { t="BLUSWAS1",  f="FLAT1" }
  BLUWALL1  = { t="BLUWALL1",  f="FLAT1" }  
  BSTCELA1  = { t="BSTCELA1",  f="FLAT1" }
  BSTCELB1  = { t="BSTCELB1",  f="FLAT1" }
  BSTSIGN1  = { t="BSTSIGN1",  f="FLAT1" }
  BSTSIGN3  = { t="BSTSIGN3",  f="FLAT1" }  
  COBBLEA1  = { t="COBBLEA1",  f="FLAT1" }  
  COBBLEB1  = { t="COBBLEB1",  f="FLAT1" }  
  COBFLAG1  = { t="COBFLAG1",  f="FLAT1" }  
  COBWRTH1  = { t="COBWRTH1",  f="FLAT1" }      
  DOOR1_10  = { t="DOOR1_10",  f="FLAT1" }    
  DOOR1_30  = { t="DOOR1_30",  f="FLAT1" }    
  DOOR3_10  = { t="DOOR3_10",  f="FLAT1" }    
  DOOR3_30  = { t="DOOR3_30",  f="FLAT1" }        
  ELEV1_1  = { t="ELEV1_1",  f="FLAT1" }    
  ELEV1_2  = { t="ELEV1_2",  f="FLAT1" }    
  ELEV2_2  = { t="ELEV2_2",  f="FLAT1" }        
  GSTSIGN1  = { t="GSTSIGN1",  f="FLAT1" }   
  GLASS1  = { t="GLASS1",  f="FLAT1" } 
  GRYCRAK1  = { t="GRYCRAK1",  f="FLAT1" }   
  GRYBRIK1  = { t="GRYBRIK1",  f="FLAT1" } 
  GRYHTLR1  = { t="GRYHTLR1",  f="FLAT1" } 
  GRYMAPS1  = { t="GRYMAPS1",  f="FLAT1" }   
  GRYMAPS3  = { t="GRYMAPS3",  f="FLAT1" }     
  GSTSIGN3  = { t="GSTSIGN3",  f="FLAT1" }   
  MARB1_1  = { t="MARB1_1",  f="FLAT1" } 
  MARB2_1  = { t="MARB2_1",  f="FLAT1" } 
  MARB3_1  = { t="MARB3_1",  f="FLAT1" }   
  WODCROS1  = { t="WODCROS1",  f="FLAT1" } 
  WODEAGL1  = { t="WODEAGL1",  f="FLAT1" } 
  BSTONEB1  = { t="BSTONEB1",  f="FLAT1" } 
  GSTONEB1  = { t="GSTONEB1",  f="FLAT1" } 
  GSTONEC1  = { t="GSTONEC1",  f="FLAT1" } 
  GSTLSLM1  = { t="GSTLSLM1",  f="FLAT1" } 
  GSTSLME1  = { t="GSTSLME1",  f="FLAT1" } 
  METLSGN1  = { t="METLSGN1",  f="FLAT1" } 
  METSGNB1  = { t="METSGNB1",  f="FLAT1" } 
  METLSGN3  = { t="METLSGN3",  f="FLAT1" } 
  WMETAL1  = { t="WMETAL1",  f="FLAT1" }   
  
  -- Egypt stuff --

  BIGMURAL = { t="BIGMURAL", f="FLAT1_1" }
  MURAL1   = { t="MURAL1",   f="FLAT1_1" }
  MURAL2   = { t="MURAL2",   f="FLAT1_1" }

  PILLAR   = { t="PILLAR",   f="FLAT1_1" }
  BIGWALL  = { t="BIGWALL",  f="FLAT8"   } --256x128, Egyptian mural decor
  DRSIDE1  = { t="DRSIDE1",  f="FLAT1_1" } --32x128, useful for small supports, doesn't tile too well
  DRSIDE2  = { t="DRSIDE2",  f="FLAT1_1" } --32x128, useful for small supports, doesn't tile too well
  DRTOPFR  = { t="DRTOPFR",  f="FLAT1_1" } --32x65
  DRTOPSID = { t="DRTOPSID", f="FLAT1_1" } --32x65
  LONGWALL = { t="LONGWALL", f="FLAT1_1" } --256x128, Anubis mural
  SKIRTING = { t="SKIRTING", f="FLAT1_1" } --256x43, Egyptian hieroglyphics
  STWALL   = { t="STWALL",   f="CRATOP2" }
  DRFRONT  = { t="DRFRONT",  rail_h=128  } --Transparent in center, not really useful

  -- Transparent openings --

  GRNOPEN = { t="GRNOPEN", rail_h=128 } --SP_ROCK1 64x128 opening
  REDOPEN = { t="REDOPEN", rail_h=128 } --ROCKRED 64x128 opening
  BRNOPEN = { t="BRNOPEN", rail_h=128 } --STONE6 64x128 opening

  -- Rails --

  DOGRID   = { t="DOGRID",   rail_h=128 }
  DOWINDOW = { t="DOWINDOW", rail_h=68 } --Yea, it's 64x68
  DOGLPANL = { t="DOGLPANL", rail_h=128 }
  DOBWIRE  = { t="DOBWIRE",  rail_h=128 }
  DOBWIRE2 = { t="DOBWIRE2", rail_h=128 } --Has no real use, no X flipped variant
  SMGLASS1 = { t="SMGLASS",  rail_h=128  }
  TYIRONLG = { t="TYIRONLG", rail_h=128 }
  TYIRONSM = { t="TYIRONSM", rail_h=72  }
  WEBL = { t="WEBL", rail_h=128 } --Not really useful
  WEBR = { t="WEBR", rail_h=128 } --Not really useful
  
  ---Plutonia Stuff---
  A_CAMO1 =  { t="A-CAMO1",  f="GRASS1" }
  A_CAMO2 =  { t="A-CAMO2",  f="SLIME13" }
  A_CAMO3 =  { t="A-CAMO3",  f="SLIME13" }
  A_CAMO4 =  { t="A-CAMO4",  f="FLOOR7_2" }
  
  PLUTONIADOOR  = { t="A-BROWN4", f="CEIL5_2" }
  
  --textures in V21Beta--
  TNTDOOR1  = { t="TNTDOOR1",  f="FLAT23" }
  TNTDOOR2  = { t="TNTDOOR2",  f="FLAT23" }
  TNTDOOR1S  = { t="TNTDOOR1S",  f="FLAT23" }
  
  DSAND1  = { t="CLIFF05B",  f="DSAND1" }
  DSAND2  = { t="CLIFF05B",  f="DSAND2" }
  DSAND3  = { t="CLIFF05B",  f="DSAND3" }
  DSAND4  = { t="CLIFF05B",  f="DSAND4" }
  DSAND5  = { t="CLIFF05B",  f="DSAND5" }
  
  BUNKER01  = { t="BUNKER01",  f="FLOOR4_8" }
  BUNKER02  = { t="BUNKER02",  f="FLOOR4_8" }
  BUNKER03  = { t="BUNKER03",  f="FLOOR4_8" }
  BUNKER04  = { t="BUNKER04",  f="FLOOR4_8" }
  BUNKER05  = { t="BUNKER05",  f="FLOOR4_8" }
  
  JUNKY15 = { t="INDUS3", f="JUNKY15" }
  JUNKY16 = { t="INDUS3", f="JUNKY16" }
  APOCTX1 = { t="INDUS4", f="APOCTX1" }
  APOCTX1B = { t="INDUS4", f="APOCTX1B" }
  APOCTX2 = { t="INDUS4", f="APOCTX2" }
  APOCTX3 = { t="INDUS4", f="APOCTX3" }
  
  NEWDOR1 = { t="NEWDOR1", f="FLAT5_2" }
  NEWDOR2 = { t="NEWDOR2", f="FLAT23" }
  NEWDOR3 = { t="NEWDOR3", f="FLAT23" }
  NEWDOR4 = { t="NEWDOR4", f="FLAT23" }
  NEWDOR4B = { t="NEWDOR4B", f="FLAT23" }

  BDHEL01 = { t="BDHEL01", f="BDHEL01" }
  BDHEL02 = { t="BDHEL02", f="BDHEL02" }
  BDHEL03 = { t="BDHEL03", f="BDHEL03" }
  BDHEL04 = { t="BDHEL04", f="BDHEL04" }
  BDHEL04B = { t="BDHEL04B", f="BDHEL04B" }
  BDHEL05 = { t="BDHEL05", f="BDHEL05" }
  BDHEL06 = { t="BDHEL06", f="BDHEL06" }
  BDHEL07 = { t="BDHEL07", f="BDHEL07" }
}