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


BRUTALDOOM.HMATERIALS =
{
  --heretic stuff--
  -- walls --

  BANNER1  = { t="BANNER1",  f="FLOOR03" }
  BANNER2  = { t="BANNER2",  f="FLOOR03" }
  BANNER3  = { t="BANNER3",  f="FLAT520" }
  BANNER4  = { t="BANNER4",  f="FLAT520" }
  BANNER5  = { t="BANNER5",  f="FLOOR25" }
  BANNER6  = { t="BANNER6",  f="FLOOR25" }
  BANNER7  = { t="BANNER7",  f="FLOOR00" }
  BANNER8  = { t="BANNER8",  f="FLOOR00" }
  BLUEFRAG = { t="BLUEFRAG", f="FLOOR16" }
  BRWNRCKS = { t="BRWNRCKS", f="FLOOR17" }

  CELTIC   = { t="CELTIC",   f="FLOOR06" }
  CHAINMAN = { t="CHAINMAN", f="FLAT520" }
  CSTLMOSS = { t="CSTLMOSS", f="FLOOR03" }
  CSTLRCK  = { t="CSTLRCK",  f="FLOOR03" }
  CTYSTCI1 = { t="CTYSTCI1", f="FLOOR11" }
  CTYSTCI2 = { t="CTYSTCI2", f="FLOOR11" }
  CTYSTCI4 = { t="CTYSTCI4", f="FLOOR11" }
  CTYSTUC1 = { t="CTYSTUC1", f="FLOOR11" }
  CTYSTUC2 = { t="CTYSTUC2", f="FLOOR11" }
  CTYSTUC3 = { t="CTYSTUC3", f="FLOOR11" }
  CTYSTUC4 = { t="CTYSTUC4", f="FLOOR11" }
  CTYSTUC5 = { t="CTYSTUC5", f="FLOOR11" }

  DMNMSK   = { t="DMNMSK",   f="FLAT521" }
  DOOREXIT = { t="DOOREXIT", f="FLAT520" }
  DOORSTON = { t="DOORSTON", f="FLOOR30" }
  DOORWOOD = { t="DOORWOOD", f="FLAT507" }
  DRIPWALL = { t="DRIPWALL", f="FLOOR27" }

  GRNBLOK1 = { t="GRNBLOK1", f="FLOOR19" }
  GRNBLOK2 = { t="GRNBLOK2", f="FLOOR19" }
  GRNBLOK3 = { t="GRNBLOK3", f="FLOOR19" }
  GRNBLOK4 = { t="GRNBLOK4", f="FLOOR19" }
  GRSKULL1 = { t="GRSKULL1", f="FLAT521" }
  GRSKULL2 = { t="GRSKULL2", f="FLAT521" }
  GRSKULL3 = { t="GRSKULL3", f="FLAT521" }
  GRSTNPB  = { t="GRSTNPB",  f="FLAT520" }
  GRSTNPBV = { t="GRSTNPBV", f="FLAT520" }
  GRSTNPBW = { t="GRSTNPBW", f="FLAT520" }
  HORSES1  = { t="HORSES1",  f="FLAT520" }

  LOOSERCK = { t="LOOSERCK", f="FLOOR04" }
  METL1    = { t="METL1",    f="FLOOR29" }
  METL2    = { t="METL2",    f="FLOOR28" }
  MOSAIC1  = { t="MOSAIC1",  f="FLAT502" }
  MOSAIC2  = { t="MOSAIC2",  f="FLAT502" }
  MOSAIC3  = { t="MOSAIC3",  f="FLAT502" }
  MOSAIC4  = { t="MOSAIC4",  f="FLAT502" }
  MOSAIC5  = { t="MOSAIC5",  f="FLAT502" }
  MOSSRCK1 = { t="MOSSRCK1", f="FLOOR05" }

  ORNGRAY  = { t="ORNGRAY",  f="FLAT504" }
  RCKSNMUD = { t="RCKSNMUD", f="FLOOR01" }
  REDWALL  = { t="REDWALL",  f="FLOOR09" }
  ROOTWALL = { t="ROOTWALL", f="FLAT506" }

  SAINT1   = { t="SAINT1",   f="FLAT523" }
  SANDSQ2  = { t="SANDSQ2",  f="FLOOR06" }
  SKULLSB1 = { t="SKULLSB1", f="FLOOR30" }
  SNDBLCKS = { t="SNDBLCKS", f="FLOOR06" }
  SNDCHNKS = { t="SNDCHNKS", f="FLAT522" }
  SNDPLAIN = { t="SNDPLAIN", f="FLOOR25" }
  SPINE1   = { t="SPINE1",   f="FLOOR25" }
  SPINE2   = { t="SPINE2",   f="FLOOR25" }

  SQPEB1   = { t="SQPEB1",   f="FLAT504" }
  SQPEB2   = { t="SQPEB2",   f="FLOOR27" }
  STNGLS1  = { t="STNGLS1",  f="FLOOR30" }
  STNGLS2  = { t="STNGLS2",  f="FLOOR30" }
  STNGLS3  = { t="STNGLS3",  f="FLOOR30" }

  TMBSTON1 = { t="TMBSTON1", f="FLAT521" }
  TMBSTON2 = { t="TMBSTON2", f="FLAT521" }
  TRISTON1 = { t="TRISTON1", f="FLOOR00" }
  TRISTON2 = { t="TRISTON2", f="FLOOR17" }
  WOODWL   = { t="WOODWL",   f="FLOOR10" }

  -- switches --

  SW1OFF   = { t="SW1OFF",   f="FLOOR28" }
  SW1ON    = { t="SW1ON",    f="FLOOR28" }

  -- floors --

  FLAT500  = { f="FLAT500", t="SQPEB1" }
  FLAT502  = { f="FLAT502", t="BLUEFRAG" }
  FLAT503  = { f="FLAT503", t="SQPEB1" }
  FLAT504  = { f="FLAT504", t="SQPEB1" }
  FLAT506  = { f="FLAT506", t="ROOTWALL" }
  FLAT507  = { f="FLAT507", t="DOORWOOD" }
  FLAT508  = { f="FLAT508", t="DOORWOOD" }
  FLAT509  = { f="FLAT509", t="LOOSERCK" }
  FLAT510  = { f="FLAT510", t="BRWNRCKS" }

  FLAT512  = { f="FLAT512", t="GRNBLOK1" }
  FLAT513  = { f="FLAT513", t="GRNBLOK1" }
  FLAT516  = { f="FLAT516", t="LOOSERCK" }
  FLAT517  = { f="FLAT517", t="BLUEFRAG" }
  FLAT520  = { f="FLAT520", t="CSTLRCK" }
  FLAT521  = { f="FLAT521", t="SQPEB1" }
  FLAT522  = { f="FLAT522", t="SNDCHNKS" }
  FLAT523  = { f="FLAT523", t="GRSTNPB" }

  FLOOR00  = { f="FLOOR00", t="TRISTON1" }
  FLOOR01  = { f="FLOOR01", t="LOOSERCK" }
  FLOOR03  = { f="FLOOR03", t="CSTLRCK" }
  FLOOR04  = { f="FLOOR04", t="CSTLRCK" }
  FLOOR05  = { f="FLOOR05", t="MOSSRCK1" }
  FLOOR06  = { f="FLOOR06", t="SANDSQ2" }
  FLOOR07  = { f="FLOOR07", t="MOSAIC1" }
  FLOOR08  = { f="FLOOR08", t="CHAINSD" }
  FLOOR09  = { f="FLOOR09", t="REDWALL" }
  FLOOR10  = { f="FLOOR10", t="WOODWL" }
  FLOOR11  = { f="FLOOR11", t="WOODWL" }
  FLOOR12  = { f="FLOOR12", t="WOODWL" }
  FLOOR16  = { f="FLOOR16", t="BLUEFRAG" }
  FLOOR17  = { f="FLOOR17", t="BRWNRCKS" }
  FLOOR18  = { f="FLOOR18", t="GRNBLOK1" }
  FLOOR19  = { f="FLOOR19", t="GRNBLOK1" }

  FLOOR20  = { f="FLOOR20", t="SQPEB2" }
  FLOOR21  = { f="FLOOR21", t="CHAINSD" }
  FLOOR22  = { f="FLOOR22", t="CHAINSD" }
  FLOOR23  = { f="FLOOR23", t="CHAINSD" }
  FLOOR24  = { f="FLOOR24", t="CHAINSD" }
  FLOOR25  = { f="FLOOR25", t="SPINE2" }
  FLOOR26  = { f="FLOOR26", t="CHAINSD" }
  FLOOR27  = { f="FLOOR27", t="SANDSQ2" }
  FLOOR28  = { f="FLOOR28", t="METL2" }
  FLOOR29  = { f="FLOOR29", t="METL1" }
  FLOOR30  = { f="FLOOR30", t="METL1" }

  -- rails --

  WOODGATE = { t="WDGAT64", rail_h=64 }

  GATE_BIG = { t="GATMETL",  rail_h=128 }
  GATMETL2 = { t="GATMETL2", rail_h=32 }
  GATMETL3 = { t="GATMETL3", rail_h=32 }
  GATMETL4 = { t="GATMETL4", rail_h=64 }
  GATMETL5 = { t="GATMETL5", rail_h=128 }

  WEB1_B = { t="WEB1_B", rail_h=32 }
  WEB1_F = { t="WEB1_F", rail_h=32 }
  WEB2_B = { t="WEB2_B", rail_h=32 }
  WEB2_F = { t="WEB2_F", rail_h=32 }
  WEB3_M = { t="WEB3_M", rail_h=32 }

  -- liquids / animated --

  -- TODO: simplify this
  HLAVA    = { t="HLAVA",    f="FLAT506" }
  LAVAFL1  = { t="LAVAFL1",  f="FLATHUH1" }
  WATRWAL1 = { t="WATRWAL1", f="FLTFLWW1" }

  FLATHUH1 = { f="FLATHUH1", t="LAVAFL1"  }
  FLTFLWW1 = { f="FLTFLWW1", t="WATRWAL1" }
  FLTHLAVA = { f="FLTHLAVA", t="HLAVA"    }
  FLTSLUD1 = { f="FLTSLUD1", t="HLAVA"    }
  FLTTELE1 = { f="FLTTELE1", t="CHAINSD"  }
  FLTWAWA1 = { f="FLTWAWA1", t="WATRWAL1" }
}
