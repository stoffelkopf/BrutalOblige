-------------------Themes---------------------------
BRUTALDOOM.ENTITIES =
{
  --- KEYS ---

  kc_red     = { id=332 }
  kc_yellow  = { id=333  }
  kc_blue    = { id=331  }
}
BRUTALDOOM.LIQUIDS =
{
  flem1 = { mat="SNOT1", light=172, special=5,  damage=10 }
  flem2 = { mat="SNOT4", light=172, special=5,  damage=10 }
  
  --heretic-------------------------
  --water  = { mat="FLTFLWW1", light_add=16, special=0 }
  water2 = { mat="FLTWAWA1", light_add=16, special=0 }
  hsludge = { mat="FLTSLUD1", light_add=16, special=16, damage=20 }
  hlava   = { mat="FLATHUH1", light_add=24, special=16, damage=20 }
  hmagma  = { mat="FLTHLAVA", light_add=16, special=16, damage=20 }
}

BRUTALDOOM.MATERIALS =
{
  CHEXROCK  = { t="CHEXROCK",    f="CHEXFLRK" }
  CHEXROCK2  = { t="CHEXROCK2",    f="CHEXODF2" }

  CHEXINDOOR1 = { t="CHEXWALL",    f="CHEXFLOR" }
  CHEXINDOOR2 = { t="CHEXWAL2",    f="CHEXFLR2" }
  CHEXINDOOR3 = { t="CHEXWAL3",    f="CHEXFLR3" }

  CHEXOUTDOOR1   = { t="CHEXODW",   f="CHEXODF" }
  CHEXOUTDOOR2   = { t="CHEXODW2",   f="CHEXODF2" }
  CHEXOUTDOOR3   = { t="CHEXODW3",   f="RROCK10" }
  CHEXOUTDOOR4   = { t="CHEXODW4",   f="FLAT5_5" }
  CHEXOUTDOOR5   = { t="CHEXODW5",   f="FLOOR5_4" }

  --Door
  CHEXDOOR1 = { t="CHEXDOR", f="FLAT23" }

  -- liquid stuff (using new patches)
  SFALL1   = { t="SNTFL1", f="SNOT1", sane=1 }
  SNOT1  = { t="SNTFL1", f="SNOT1", sane=1 }
  SFALL2   = { t="SNTFL1", f="SNOT4", sane=1 }
  SNOT4  = { t="SNTFL1", f="SNOT4", sane=1 }
  
  --Chex Crates
  CXCRATE1 = { t="CXCRATE1", f="CRATOP2" }
  CXCRATE2 = { t="CXCRATE2", f="CRATOP2" }
  CXCRATE3 = { t="CXCRATE3", f="CRATOP2" }
  CXCRATEL = { t="CXCRATEL", f="CRATOP2" }
  CXCRATEW = { t="CXCRATEW", f="CRATOP2" }
  CXCRATET = { t="CXCRATET", f="CRATOP2" }
  
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

  MFLR8_4  = { t="ASPHALT",  f="MFLR8_4" }
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

BRUTALDOOM.THEMES =
{
  satanshankerchief = 
  {
    liquids =
    {
      flem1   = 100
      flem2   = 100
    }
	
	entity_remap =
    {
	  k_red    = "kc_red"
      k_blue   = "kc_blue"
      k_yellow = "kc_yellow"
	  
	  green_torch = "mercury_lamp"
    }

    facades =
    {
      CHEXOUTDOOR1 = 50
      CHEXOUTDOOR2 = 50
      CHEXOUTDOOR3 = 50
      CHEXOUTDOOR4 = 50
      CHEXOUTDOOR5 = 50
    }
	
	prefab_remap =
    {
	  BIGDOOR1 = "CHEXDOOR1"
	  BIGDOOR2 = "CHEXDOOR1"
	  BIGDOOR3 = "CHEXDOOR1"
	  BIGDOOR4 = "CHEXDOOR1"
	  BIGDOOR5 = "CHEXDOOR1"
	  BIGDOOR6 = "CHEXDOOR1"
	  BIGDOOR7 = "CHEXDOOR1"
	  
	  CRATE1 = "CXCRATE1"
	  CRATE2 = "CXCRATE2"
	  CRATE3 = "CXCRATE3"
	  CRATELIT = "CXCRATEL"
	  CRATWIDE = "CXCRATEW"
	  CRATINY = "CXCRATET"
	  CRATOP1 = "CRATOP2"
	  CRATOP2 = "CRATOP3"
	}
	
	--lighting as for the tech theme
	cave_torches =
    {
      blue_torch  = 60
      red_torch   = 20

      lamp = 30
      mercury_small = 30
      mercury_lamp  = 10
    }

    outdoor_torches =
    {
      lamp   = 10
      mercury_lamp  = 40
      mercury_small = 20
    }

    ceil_light_prob = 50

    monster_prefs =
    {
      Flemoid1 = 2.0
      Flemoid2 = 2.0
      Flemoid3 = 1.5
    }

    archy_arches = true
    techy_doors = true
  }
  
  --wolfenstein
  wolf =
  {
    prob = 10

    square_caves = 1
	
	entity_remap =
    {
    }

    facades =
    {
      ZZWOLF1  = 50
      ZZWOLF9  = 50
      ZZWOLF11 = 20
      ZZWOLF5  = 5
    }

    monster_prefs =
    {
      BrutalSS = 70
	  ClassicSS = 100
      demon   = 10  -- kinda like a dog
      imp     =  5  -- kinda like a mutant
    }
	
	prefab_remap =
    {
	  BIGDOOR1 = "ZELDOOR"
	  BIGDOOR2 = "ZELDOOR"
	  BIGDOOR3 = "ZELDOOR"
	  BIGDOOR4 = "ZELDOOR"
	  BIGDOOR5 = "ZELDOOR"
	  BIGDOOR6 = "ZELDOOR"
	  BIGDOOR7 = "ZELDOOR"
	  
	  MARBFAC2 = "ZZWOLF2"
	  MARBFAC3 = "ZZWOLF3"
	  MARBFACE = "ZZWOLF4"
	}
  }
  
  --heretic---------------------------------------
  h_urban =
  {
	prob = 10
  
	entity_remap =
    {
	  k_red    = "ks_red"
      k_blue   = "ks_blue"
      k_yellow = "ks_yellow"
    }
	
    liquids =
    {
      water  = 50
      hsludge = 15
      HLAVA   = 5
    }

    facades =
    {
      GRSTNPB = 50
    }
	
	monster_prefs =
    {
	}
	
	prefab_remap =
	{
	  BIGDOOR1 = "DOORWOOD"
	  BIGDOOR2 = "DOORWOOD"
	  BIGDOOR3 = "DOORWOOD"
	  BIGDOOR4 = "DOORWOOD"
	  
	  LITE4 = "WOODWL"
	  
	  SUPPORT4 = "ORNGRAY"
	  LIFTFLAT = "FLOOR04"
	  TEKWALL4 = "CHAINSD"
	}
	
  }


  h_castle =
  {
    liquids =
    {
      HLAVA   = 50
      hmagma  = 20
      hsludge = 5
    }

    facades =
    {
      CSTLRCK  = 50
      GRNBLOK1 = 30
    }
	
	prefab_remap =
	{
	  BIGDOOR1 = "DOORWOOD"
	  BIGDOOR2 = "DOORWOOD"
	  BIGDOOR3 = "DOORWOOD"
	  BIGDOOR4 = "DOORWOOD"
	  
	  LITE4 = "WOODWL"
	  
	  SUPPORT4 = "ORNGRAY"
	  LIFTFLAT = "FLOOR04"
	  TEKWALL4 = "CHAINSD"
	}
	
  }

}


BRUTALDOOM.ROOM_THEMES =
{
  satanshankerchief_Indoors =
  {
    prob = 50
    env = "building"

    walls =
    {
      CHEXINDOOR1 = 100
      CHEXINDOOR2 = 100
      CHEXINDOOR3 = 100
    }

    floors =
    {
      CHEXINDOOR1 = 100
      CHEXINDOOR2 = 100
      CHEXINDOOR3 = 100
    }

    ceilings =
    {
      CHEXINDOOR1 = 100
      CHEXINDOOR3 = 100
    }
  }


  satanshankerchief_Cave =
  {
    env = "cave"
	prob = 50

    naturals =
    {
      CHEXROCK = 100
      CHEXROCK2 = 50
    }
	
	walls =
    {
      CHEXROCK = 100
      CHEXROCK2 = 50
    }
	
	floors =
    {
      CHEXOUTDOOR1 = 50
      CHEXOUTDOOR2 = 20
      CHEXOUTDOOR3 = 20
      CHEXOUTDOOR4 = 20
      CHEXOUTDOOR5 = 40
      FLOOR4_8 = 10
      FLOOR5_4 = 20
      FLOOR5_4 = 20
    }
  }


  satanshankerchief_Outdoors =
  {
    env = "outdoor"
	prob = 50

    floors =
    {
      CHEXOUTDOOR1 = 50
      CHEXOUTDOOR2 = 20
      CHEXOUTDOOR3 = 20
      CHEXOUTDOOR4 = 20
      CHEXOUTDOOR5 = 40
      FLOOR4_8 = 10
      FLOOR5_4 = 20
      FLOOR5_4 = 20
    }

    naturals =
    {
      CHEXOUTDOOR1 = 50
      CHEXOUTDOOR2 = 20
      CHEXOUTDOOR3 = 20
      CHEXOUTDOOR4 = 20
      CHEXOUTDOOR5 = 40
    }
  }


  satanshankerchief_Hallway =
  {
    env = "hallway"
	prob = 50

    walls =
    {
      CHEXINDOOR1 = 90
      CHEXINDOOR2 = 90
      CHEXINDOOR3 = 90
      GRAY1    = 70

      TEKWALL6 = 30
      TEKWALL4 = 10
      TEKGREN1 = 40
      STARGR1 = 10
      STARBR2 = 10

      BROWNPIP = 20
      PIPEWAL2 = 40
      PIPE2 = 15
      PIPE4 = 15
    }

    floors =
    {
      CHEXINDOOR1  = 50
      CHEXINDOOR2 = 50
      FLAT1  = 20
      FLOOR4_8 = 15
      FLOOR0_2 = 20
      CEIL4_1 = 20
    }

    ceilings =
    {
      CHEXINDOOR1 = 50
      CEIL3_1 = 50
      RROCK03 = 50
      CEIL4_2 = 20
      CEIL5_1 = 40
    }
  }
  
  --wolfenstein
  wolf_Cells =
  {
    env = "building"
	prob = 50

    walls =
    {
      ZZWOLF9 = 50
    }

    floors =
    {
      FLAT1 = 50
    }

    ceilings =
    {
      FLAT1 = 50
    }
  }

  wolf_Stone =
  {
    env = "building"
	prob = 50

    walls =
    {
      ZZWOLF1 = 50
    }

    floors =
    {
      FLAT1 = 50
      MFLR8_1 = 50
    }

    ceilings =
    {
      FLAT1 = 50
    }
  }

  wolf_Brick =
  {
    env = "building"
	prob = 50

    walls =
    {
      ZZWOLF11 = 50
    }

    floors =
    {
      FLAT1 = 50
    }

    ceilings =
    {
      FLAT5_3 = 30
    }
  }

  wolf_Hallway =
  {
    env = "hallway"
	prob = 50

    walls =
    {
      ZZWOLF5 = 50
    }

    floors =
    {
      CEIL5_1 = 50
    }

    ceilings =
    {
      CEIL1_1 = 50
      FLAT5_1 = 50
    }
  }

  wolf_Outdoors =
  {
    env = "outdoor"
	prob = 50

    floors =
    {
      MFLR8_1 = 20
      FLAT1_1 = 10
      RROCK13 = 20
    }

    naturals =
    {
      ROCK4 = 50
      SP_ROCK1 = 10
    }
  }

  wolf_Cave =
  {
    env = "cave"
	prob = 50

    square_caves = true

    naturals =
    {
      ROCK4 = 50
      SP_ROCK1 = 10
    }
	
	walls =
    {
      ROCK4 = 50
      SP_ROCK1 = 10
    }
	
	floors =
    {
      MFLR8_1 = 20
      FLAT1_1 = 10
      RROCK13 = 20
    }
	
  }
  
    --heretic-------------------------------------------
  h_urban_House1 =
  {
	prob = 50
    env = "building"

    walls =
    {
      CTYSTCI2 = 20
      CTYSTCI4 = 40
    }

    floors =
    {
      FLOOR03 = 50
      FLOOR06 = 50
      FLOOR10 = 50
    }

    ceilings =
    {
      FLAT521 = 50
      FLAT523 = 50
    }
  }


  h_urban_House2 =
  {
	prob = 50
    env = "building"

    walls =
    {
      CTYSTUC4 = 50
    }

    floors =
    {
      FLOOR03 = 50
      FLOOR06 = 50
      FLOOR10 = 50
    }

    ceilings =
    {
      FLAT521 = 50
      FLAT523 = 50
    }
  }


  h_urban_Stone =
  {
	prob = 50
    env = "building"

    walls =
    {
      GRSTNPB = 50
    }

    floors =
    {
      FLOOR00 = 50
      FLOOR19 = 50
      FLAT522 = 50
      FLAT523 = 50
    }

    ceilings =
    {
      FLAT520 = 50
      FLAT523 = 50
    }
  }


  h_urban_Wood =
  {
	prob = 50
    env = "building"

    walls =
    {
      WOODWL = 50
    }

    floors =
    {
      FLAT508 = 20
      FLOOR11 = 20
      FLOOR03 = 50
      FLOOR06 = 50
    }

    ceilings =
    {
      FLOOR10 = 50
      FLOOR11 = 30
      FLOOR01 = 50
    }
  }


  h_urban_Cave =
  {
	prob = 50
    env = "cave"

    naturals =
    {
      LOOSERCK=20, HLAVA=20, BRWNRCKS=20
    }
	
	walls =
    {
      LOOSERCK=20, HLAVA=20, BRWNRCKS=20
    }
	
	floors =
    {
      FLOOR00=20, FLOOR27=30, FLOOR18=50,
      FLAT522=10, FLAT523=20,
    }
  }


  h_urban_Outdoors =
  {
	prob = 50
    env = "outdoor"

    floors =
    {
      FLOOR00=20, FLOOR27=30, FLOOR18=50,
      FLAT522=10, FLAT523=20,
    }

    naturals =
    {
      FLOOR17=50, FLAT509=20, FLAT510=20,
      FLAT513=20, FLAT516=35, 
    }
  }


  ---- CASTLE THEME --------------------------------

  h_castle_Green =
  {
	prob = 50
    env = "building"

    walls =
    {
      GRNBLOK1 = 50
      MOSSRCK1 = 50
    }

    floors =
    {
      FLOOR19 = 20
      FLOOR27 = 50
      FLAT520 = 50
      FLAT521 = 50
    }

    ceilings =
    {
      FLOOR05 = 50
      FLAT512 = 50
    }
  }


  h_castle_Gray =
  {
	prob = 50
    env = "building"

    walls =
    {
      CSTLRCK  = 50
      TRISTON1 = 50
    }

    floors =
    {
      FLAT503 = 50
      FLAT522 = 50
      FLOOR10 = 50
    }

    ceilings =
    {
      FLOOR04 = 50
      FLAT520 = 50
    }
  }


  h_castle_Orange =
  {
	prob = 50
    env = "building"

    walls =
    {
      SQPEB2   = 50
      TRISTON2 = 50
    }

    floors =
    {
      FLOOR01 = 50
      FLOOR03 = 50
      FLOOR06 = 20
    }

    ceilings =
    {
      FLAT523 = 50
      FLOOR17 = 50
    }
  }


  -- TODO : these are same as urban theme, differentiate them!

  h_castle_Cave =
  {
	prob = 50
    env = "cave"

    naturals =
    {
      LOOSERCK=20, HLAVA=20, BRWNRCKS=20
    }
	
	walls =
    {
      LOOSERCK=20, HLAVA=20, BRWNRCKS=20
    }
	
	floors =
    {
      FLOOR00=20, FLOOR27=30, FLOOR18=50,
      FLAT522=10, FLAT523=20,
    }
  }


  h_castle_Outdoors =
  {
	prob = 50
    env = "outdoor"

    floors =
    {
      FLOOR00=20, FLOOR27=30, FLOOR18=50,
      FLAT522=10, FLAT523=20,
    }

    naturals =
    {
      FLOOR17=50, FLAT509=20, FLAT510=20,
      FLAT513=20, FLAT516=35, 
    }
  }
  h_urban_Hallway =
  {
	prob = 50
    env = "hallway"

    walls =
    {
      GRSTNPB  = 60
      SANDSQ2  = 20
      SNDCHNKS = 20
    }

    floors =
    {
      FLOOR00 = 50
      FLOOR18 = 50
      FLAT521 = 50
      FLAT506 = 50
    }

    ceilings =
    {
      FLAT523 = 50
    }
  }
  h_urban_Hallway =
  {
	prob = 50
    env = "hallway"

    walls =
    {
      GRSTNPB  = 60
      SANDSQ2  = 20
      SNDCHNKS = 20
    }

    floors =
    {
      FLOOR00 = 50
      FLOOR18 = 50
      FLAT521 = 50
      FLAT506 = 50
    }

    ceilings =
    {
      FLAT523 = 50
    }
  }
}

--egypt theme clones that from Oblige theme for tnt with a few adjustments
BRUTALDOOM.THEMES.egypt2=TNT.THEMES.egypt
BRUTALDOOM.THEMES.egypt2.prefab_remap =
    {
      DOORBLU  = "DOORBLU2"
      DOORRED  = "DOORRED2"
      DOORYEL  = "DOORYEL2"

      SILVER3  = "MURAL1"
      GATE3    = "FLAT22"
      GATE4    = "FLAT22"
      REDWALL  = "DOKGRIR"
      SW1COMP  = "SW1CMT"
	  
	  BIGDOOR1 = "METALDR"
	  BIGDOOR2 = "METALDR"
	  BIGDOOR3 = "METALDR"
	  BIGDOOR4 = "METALDR"
	  BIGDOOR5 = "METALDR"
	  BIGDOOR6 = "METALDR"
	  BIGDOOR7 = "METALDR"
    }
BRUTALDOOM.ROOM_THEMES.egypt2_Tomb=TNT.ROOM_THEMES.egypt_Tomb
BRUTALDOOM.ROOM_THEMES.egypt2_Hallway=TNT.ROOM_THEMES.egypt_Hallway
BRUTALDOOM.ROOM_THEMES.egypt2_Outdoors=TNT.ROOM_THEMES.egypt_Outdoors
BRUTALDOOM.ROOM_THEMES.egypt2_Cave=TNT.ROOM_THEMES.egypt_Cave

BRUTALDOOM.THEMES.egypt2.monster_prefs =
{
    gunner = 1.2
    mancubus = 1.3
    demon   = 1.3
    mummy = 2.0
    HeadlessZombie = 1.9 --Serious Sam had ancient Egypt themed levels and headless enemies so this seems appropriate
    Zyberdemon = 1.2
}

BRUTALDOOM.ROOM_THEMES.egypt2_Outdoors.floors =
{
    DSAND1 = 40
    DSAND2 = 40
    DSAND3 = 30
    DSAND4 = 30
    DSAND5 = 30
    RROCK03 = 10
    RROCK19 = 10
}

--Edits and additions to existing themes--
--tech
--BRUTALDOOM.THEMES.tech = DOOM.THEMES.tech
--BRUTALDOOM.ROOM_THEMES.tech = DOOM.ROOM_THEMES.tech
DOOM.THEMES.tech.prefab_remap =
{
    BIGDOOR5 = "TNTDOOR2"
    BIGDOOR6 = "TNTDOOR2"
    BIGDOOR7 = "TNTDOOR2"
}
DOOM.THEMES.tech.monster_prefs =
{
    PistolZombie  = 1.5
    shooter = 1.2
    arach   = 1.5
    Labguy = 1.5
}
DOOM.THEMES.tech.facades =
{      
    BROWN1   = 40
    STARTAN3 = 40
    STARG3   = 40
    STARGR2  = 40
    STARBR2  = 30
    
    BROWN96  = 25
    BROWNGRN = 25
    SLADWALL = 20
    METAL2   = 10
    METAL1   = 5
    
    BUNKER01 = 30
    BUNKER02 = 30
    BUNKER03 = 30
    BUNKER05 = 30
}
DOOM.THEMES.tech.fences.BROWN144 = 0 --doesn't tile properly on y
DOOM.ROOM_THEMES.tech_Gray.walls =
{
    GRAY1 = 50
    GRAY4 = 30
    GRAY7 = 30
    ICKWALL1 = 40
    ICKWALL3 = 20
    
    BUNKER01 = 30
    BUNKER02 = 30
    BUNKER03 = 30
    BUNKER05 = 30
}
--Urban
DOOM.THEMES.urban.monster_prefs =
{
    revenant = 1.2
    knight   = 1.5
    gunner   = 1.5
    ZombieMainBattleTank = 1.1
    ZombieLightTank = 1.2
    ZombieMech = 1.1
}

OB_THEMES["satanshankerchief"] =
{
  label = "Satan's Hankerchief"
  priority = 2
  name_class = "TECH"
  game = "brutaldoom"
  mixed_prob = 5
}

OB_THEMES["egypt2"] =
{
  -- TNT Evilution theme

  label = "Egypt"
  game = { brutaldoom = 1, brutal64 = 0 }
  priority = 3
  name_class = "GOTHIC"
  mixed_prob = 5
}

OB_THEMES["wolf"] =
{
  label = "Wolfenstein"
  priority = 2
  game = "brutaldoom"
  name_class = "URBAN"

  -- this theme is special, hence no mixed_prob
}

OB_THEMES["h_urban"] =
{
  label = _(" Heretic Urban")
  priority = 2
  game = { brutaldoom = 0, brutal64 = 0 }
  name_theme = "URBAN"
  mixed_prob = 0
  shown = False
}


OB_THEMES["h_castle"] =
{
  label = _("Castle")
  priority = 2
  game = { brutaldoom = 0, brutal64 = 0 }
  name_theme = "GOTHIC"
  mixed_prob = 0
  shown = False
}

---STARTERPACK
STARTERPACK.MATERIALS =
{
  TEKWALL2  = { t="TEKWALL2",    f="TEKWALL2" }
  TEKWALL5  = { t="TEKWALL5",    f="TEKWALL5" }
  MONITOR1  = { t="MONITOR1",    f="MONITOR1" }
  MONITOR2  = { t="MONITOR2",    f="MONITOR2" }
  COMPTILE  = { t="COMPTILE",    f="COMPTILE" }
  COMPTILY  = { t="COMPTILY",    f="COMPTILY" }
  COMPTILG  = { t="COMPTILG",    f="COMPTILG" }
  COMPTILR  = { t="COMPTILR",    f="COMPTILR" }
  COMP001  = { t="COMP001",    f="COMP001" }
  CRAK1  = { t="CRAK1",    f="CRAK1" }
  CRAK2  = { t="CRAK2",    f="CRAK2" }
  CRAK3  = { t="CRAK3",    f="CRAK3" }
  CRAK4  = { t="CRAK4",    f="CRAK4" }
  CRAK5  = { t="CRAK5",    f="CRAK5" }
  COMP2  = { t="COMP2",    f="COMP2" }
  COMP002  = { t="COMP002",    f="COMP002" }
  COMP003  = { t="COMP003",    f="COMP003" }
  COMP004  = { t="COMP004",    f="COMP004" }
  COMP005  = { t="COMP005",    f="COMP005" }
  COMP006  = { t="COMP006",    f="COMP006" }
  COMP007  = { t="COMP007",    f="COMP007" }
  COMP008  = { t="COMP008",    f="COMP008" }
  COMP009  = { t="COMP009",    f="COMP009" }
  COMP010  = { t="COMP010",    f="COMP010" }
  COMP011  = { t="COMP011",    f="COMP011" }
  COMP012  = { t="COMP012",    f="COMP012" }

  TILEWALL  = { t="TILEWALL",    f="TILEWALL" }

  B010035  = { t="B010035",    f="B010035" }
  B010100  = { t="B010110",    f="B010110" }
  B0130  = { t="B0130",    f="B0130" }
  B0163BW  = { t="B0163BW",    f="B0163BW" }
  B0163C  = { t="B0163C",    f="B0163C" }
  B0164  = { t="B0164",    f="B0164" }
  B0118  = { t="B0118",    f="B0118" }
  B0119  = { t="B0119",    f="B0119" }
  B0367  = { t="B0367",    f="B0367" }
  B03972BW  = { t="B03972BW",    f="B03972BW" }

  SNOW1  = { t="NATUR04",    f="SNOW1" }
  SNOW2  = { t="NATUR04",    f="SNOW2" }
  SNOW3  = { t="NATUR04",    f="SNOW3" }

  FBRICK1  = { t="FBRICK1",    f="FBRICK1" }
  FBRICK2  = { t="FBRICK2",    f="FBRICK2" }
  FBRICK3  = { t="FBRICK3",    f="FBRICK3" }
  FBRICK4  = { t="FBRICK4",    f="FBRICK4" }
  FBRICK5  = { t="FBRICK5",    f="FBRICK5" }
  FBRICK6  = { t="FBRICK6",    f="FBRICK6" }
  FBRICK7  = { t="FBRICK7",    f="FBRICK7" }
  FBRICK8  = { t="FBRICK8",    f="FBRICK8" }
  FBRICK9  = { t="FBRICK9",    f="FBRICK9" }

  DNCITY20  = { t="DNCITY20",    f="DNCITY20" }
  DNCITY21  = { t="DNCITY21",    f="DNCITY21" }
  DNCITY27  = { t="DNCITY27",    f="DNCITY27" }
  DNCITY29  = { t="DNCITY29",    f="DNCITY29" }

-- BRICK01-BRICK38 not included yet, there are already loads of bricks
  BRICK26  = { t="BRICK26",    f="BRICK26" }
  BRICK28  = { t="BRICK28",    f="BRICK28" } --apart from these 2 which I need for wolfenstein

  CEMENTWA  = { t="CEMENTWA",    f="CEMENTWA" }
  CEMENTRE  = { t="CEMENTRE",    f="CEMENTRE" }
  CEMENTBL  = { t="CEMENTBL",    f="CEMENTBL" }

  DNMETAL1  = { t="DNMETAL1",    f="DNMETAL1" }
  DNMETAL2  = { t="DNMETAL2",    f="DNMETAL2" }
  DNMETAL3  = { t="DNMETAL3",    f="DNMETAL3" }
  DNMETAL4  = { t="DNMETAL4",    f="DNMETAL4" }
  DNMETAL5  = { t="DNMETAL5",    f="DNMETAL5" }
  DNMETAL6  = { t="DNMETAL6",    f="DNMETAL6" }
  DNMETAL7  = { t="DNMETAL7",    f="DNMETAL7" }

  RUBLE1  = { t="RUBLE1",    f="RUBLE1" }

  DNSTEP01  = { t="DNSTEP01",    f="DNSTEP01" }
  DNSTEP02  = { t="DNSTEP02",    f="DNSTEP02" }
  DNSTEP03  = { t="DNSTEP03",    f="DNSTEP03" }
  DNSTEP04  = { t="DNSTEP04",    f="DNSTEP04" }
  DNSTEP05  = { t="DNSTEP05",    f="DNSTEP05" }
  DNSTEP06  = { t="DNSTEP06",    f="DNSTEP06" }
  DNSTEP07  = { t="DNSTEP07",    f="DNSTEP07" }
  DNSTEP08  = { t="DNSTEP08",    f="DNSTEP08" }
  DNSTEP09  = { t="DNSTEP09",    f="DNSTEP09" }
  DNSTEP10  = { t="DNSTEP10",    f="DNSTEP10" }
  DNSTEP11  = { t="DNSTEP11",    f="DNSTEP11" }
  DNSTEP12  = { t="DNSTEP12",    f="DNSTEP12" }
  DNSTEP13  = { t="DNSTEP13",    f="DNSTEP13" }
  DNSTEP14  = { t="DNSTEP14",    f="DNSTEP14" }
  DNSTEP15  = { t="DNSTEP15",    f="DNSTEP15" }
  DNSTEP16  = { t="DNSTEP16",    f="DNSTEP16" }
  DNSTEP17  = { t="DNSTEP17",    f="DNSTEP17" }
  
  DNZPOS30 = { t="DNZPOS30",    f="DNZPOS30" }

  DIRT01  = { t="DIRT01",    f="DIRT01" }
  DIRT02  = { t="DIRT02",    f="DIRT02" }
  DIRT03  = { t="DIRT03",    f="DIRT03" }
  DIRT04  = { t="DIRT04",    f="DIRT04" }
  DIRT05  = { t="DIRT05",    f="DIRT05" }
  DIRT06  = { t="DIRT06",    f="DIRT06" }
  DIRT07  = { t="DIRT07",    f="DIRT07" }
  DIRT08  = { t="DIRT08",    f="DIRT08" }

  WHITE  = { t="WHITE",    f="WHITE" }
  BLACK  = { t="BLACK",    f="BLACK" }

  DNLT02  = { t="DNLT02",    f="DNLT02" }
  DNLT03  = { t="DNLT03",    f="DNLT03" }
  DNLT04  = { t="DNLT04",    f="DNLT04" }
  DNLT05  = { t="DNLT05",    f="DNLT05" }
  DNLT06  = { t="DNLT06",    f="DNLT06" }
  DNLT07  = { t="DNLT07",    f="DNLT07" }

  DNCITY05  = { t="DNCITY05",    f="DNCITY05" }
  DNCITY06  = { t="DNCITY06",    f="DNCITY06" }
  DNCITY07  = { t="DNCITY07",    f="DNCITY07" }
  DNCITY08  = { t="DNCITY08",    f="DNCITY08" }
  DNCITY11  = { t="DNCITY11",    f="DNCITY11" }
  DNCITY12  = { t="DNCITY12",    f="DNCITY12" }
  DNCITY13  = { t="DNCITY13",    f="DNCITY13" }
  DNCITY14  = { t="DNCITY14",    f="DNCITY14" }
  DNCITY15  = { t="DNCITY15",    f="DNCITY15" }

  DNRUST01  = { t="DNRUST01",    f="DNRUST01" }
  DNRUST02  = { t="DNRUST02",    f="DNRUST02" }
  DNRUST03  = { t="DNRUST03",    f="DNRUST03" }
  DNRUST04  = { t="DNRUST04",    f="DNRUST04" }
  DNRUST05  = { t="DNRUST05",    f="DNRUST05" }
  DNRUST06  = { t="DNRUST06",    f="DNRUST06" }
  DNRUST07  = { t="DNRUST07",    f="DNRUST07" }
  DNRUST08  = { t="DNRUST08",    f="DNRUST08" }

  DNPLUM06  = { t="DNPLUM06",    f="DNPLUM06" }

  GTGREN01  = { t="GTGREN01",    f="GTGREN01" }
  GTGREN02  = { t="GTGREN02",    f="GTGREN02" }
  GTGREN03  = { t="GTGREN03",    f="GTGREN03" }
  GTGREN04  = { t="GTGREN04",    f="GTGREN04" }
  GTGREN05  = { t="GTGREN05",    f="GTGREN05" }

  GTGRN02  = { t="GTGRN02",    f="GTGRN02" }
  GTGRN03  = { t="GTGRN03",    f="GTGRN03" }

  HEROK01  = { t="HEROK01",    f="HEROK01" }
  HEROK02  = { t="HEROK02",    f="HEROK02" }
  HEROK03  = { t="HEROK03",    f="HEROK03" }
  HEROK04  = { t="HEROK04",    f="HEROK04" }
  HEROK05  = { t="HEROK05",    f="HEROK05" }

  ICE  = { t="ICE",    f="ICE" }

  HEALTAR1  = { t="HEALTAR1",    f="HEALTAR1" }
  HEALTAR2  = { t="HEALTAR2",    f="HEALTAR2" }

  HEBRIK01  = { t="HEBRIK01",    f="HEBRIK01" }
  HEBRIK02  = { t="HEBRIK02",    f="HEBRIK02" }

  HEFLOR12  = { t="HEFLOR12",    f="HEFLOR12" }  --animated

  WOLFBANNERS  = { t="WLFBANNR",    f="WLFBANNR", sane=1 }
  
  O_BRUTAL  = { t="O_BRUTAL",    f="O_BRUTAL", sane=1 }
  
  DNPSTER1  = { t="DNPSTER1",    f="BLACK" }
  DNPSTER2  = { t="DNPSTER2",    f="BLACK" }
  DNPSTER3  = { t="DNPSTER3",    f="BLACK" }
}

STARTERPACK.THEMES =
{
  nukem =
  {
    liquids =
    {
      water = 80
      slime = 40
      blood = 25
      lava  = 5
    }

    facades =
    {
      DNCITY27 = 80
      DNCITY29 = 80
      DNCITY11 = 80
      DNCITY12 = 80
      DNCITY15 = 80
      CEMENT7 = 5
      CEMENT9 = 5
      METAL2 = 3
    }

    outdoor_torches =
    {
      lamp   = 10
      mercury_lamp = 40
      short_lamp   = 40
      burning_barrel = 30
    }
	
	prefab_remap =
    {
	  --BIGDOOR1 = "ZELDOOR"
	  --BIGDOOR2 = "ZELDOOR"
	  --BIGDOOR3 = "ZELDOOR"
	  --BIGDOOR4 = "ZELDOOR"
	  --BIGDOOR5 = "ZELDOOR"
	  --BIGDOOR6 = "ZELDOOR"
	  --BIGDOOR7 = "ZELDOOR"
	  
	  MARBFAC2 = "DNPSTER1"
	  MARBFAC3 = "DNPSTER2"
	  MARBFACE = "DNPSTER3"
	}

    base_skin =
    {
    }

    monster_prefs =
    {
    }

    archy_arches = true
  }
  
  wolf =
  {
    prob = BRUTALDOOM.THEMES.wolf.prob

    square_caves = BRUTALDOOM.THEMES.wolf.square_caves
	
	entity_remap = BRUTALDOOM.THEMES.wolf.entity_remap

    facades = BRUTALDOOM.THEMES.wolf.facades

    monster_prefs =
    {
      BrutalSS = 70
	  ClassicSS = 100
	  GermanDog = 40
      --remove all non wolfenstein monsters
	  zombie = 0
	  shooter = 0
	  imp = 0
	  skull = 0
	  demon = 0
	  spectre = 0
	  caco = 0
	  baron = 0
	  Cyberdemon = 0
	  Spiderdemon = 0
	  gunner = 0
	  revenant = 0
	  knight = 0
	  mancubus = 0
	  arach = 0
	  vile = 0
	  pain = 0
      Belphegor = 0
      Juggernaut = 0
      EvilMarine = 0
      EasyMarine = 0
      DarkImp = 0
      Epic2Alien = 0
      Zyberdemon = 0
      D4caco = 0
      EnemyMarine3 = 0
    }
	
	prefab_remap = BRUTALDOOM.THEMES.wolf.prefab_remap
  }
}

STARTERPACK.ROOM_THEMES =
{
  nukem_Panel =
  {
    env = "building"
    prob = 50

    walls =
    {
      PANEL6 = 25
      PANEL8 = 25
      PANEL9 = 15
      PANEL7 = 10
      PANEL3 = 25
      PANEL2 = 25
      PANCASE2 = 15

      DNCITY15 = 100
    }

    floors =
    {
      FLOOR0_2 = 15
      FLOOR5_3 = 20
      FLOOR5_4 = 15
      FLAT1_1 = 50
      FLAT4 = 50
      FLAT1 = 30
      FLAT8 = 10
      FLAT5_5 = 30
      FLAT5 = 20
    }

    ceilings =
    {
      FLAT1 = 50
      CEIL1_1 = 20
      FLAT5_2 = 20
      CEIL3_3 = 10
      RROCK10 = 20
    }
  }


  nukem_Brick =
  {
    env = "building"
    prob = 70

    walls =
    {
      BRICK1  = 10
      BRICK2  = 15
      BRICK5  = 30
      BRICK6  = 20
      BRICK7  = 30
      BRICK8  = 15
      BRICK9  = 20
      BRICK12 = 30
      BRICK11 = 3
      BRICK10 = 5

      DNCITY27 = 100
      DNCITY29 = 100
      DNCITY11 = 100
      DNCITY12 = 100
    }

    floors =
    {
      FLAT1_1 = 50
      FLAT1   = 30
      FLAT5   = 15
      FLAT5_1 = 50
      FLAT5_2 = 20
      FLAT5_2 = 30
      FLAT5_4 = 20
      FLAT5_5 = 30
      FLAT8   = 50

      FLOOR0_1 = 20
      FLOOR0_2 = 20
      FLOOR0_3 = 20
      FLOOR4_6 = 20
      FLOOR5_3 = 25
      FLOOR5_4 = 10
    }

    ceilings =
    {
      FLAT1   = 50
      FLAT5_4 = 20
      FLAT8   = 15
      RROCK10 = 20
      RROCK14 = 20
      MFLR8_1 = 10
      SLIME13 = 5
    }
  }


  nukem_Hallway =
  {
    env = "hallway"
	prob = 50

    walls =
    {
      WOOD1    = 90
      WOOD12   = 90
      WOOD9    = 90
      WOODVERT = 90

      DNCITY27 = 50
      DNCITY29 = 50
      BRICK10  = 50
      BRICK11  = 10

      PANEL1   = 50
      PANEL7   = 30
      STUCCO   = 30
      STUCCO1  = 30
      STUCCO3  = 30
    }

    floors =
    {
      FLAT5_1 = 50
      FLAT5_2 = 20
      FLAT8   = 50
      FLAT5_4 = 50
      MFLR8_1 = 50
      FLOOR5_3 = 20
      FLAT5 = 20
    }

    ceilings =
    {
      CEIL1_1 = 30
      FLAT5_2 = 25
      CEIL3_5 = 20
      MFLR8_1 = 50
      FLAT1   = 30
    }
  }


  nukem_Cave =
  {
    env = "cave"
	prob = 50

    naturals =
    {
      ROCK2    = 40
      ASHWALL2 = 40
      ASHWALL4 = 30
      ZIMMER1  = 30

      BSTONE2  = 10
      ZIMMER5  = 20
      ZIMMER3  = 20

      STONE5   = 10
      ASHWALL7 = 10
      ROCK5    = 10
      WOOD9    = 10
    }
  }


  nukem_Outdoors =
  {
    env = "outdoor"
	prob = 50

    floors =
    {
      STONE = 50
      FLAT5_2 = 50
    }

    naturals =
    {
      ASHWALL2 = 50
      ASHWALL4 = 50
      BSTONE1  = 15
      ZIMMER5  = 15
      ROCK3    = 70
    }
  }
--wolfenstein updates---
  wolf_Outdoors =
  {
    env = "outdoor"
	prob = 50

    floors =
    {
      BRICK28 = 30
      BRICK26 = 30
      RROCK13 = 10
    }

    naturals =
    {
      SNOW2 = 50
      SNOW3 = 20
      SNOW1 = 20
    }
  }
  
--tech updates----------------------------
  tech_Hallway =
  {
    env = "hallway"
	prob = 50

    walls =
    {
      BROWNGRN = 90
      BROWN1   = 90
      GRAY1    = 70

      TEKWALL6 = 30
      TEKWALL4 = 10
      TEKGREN1 = 40
      STARGR1 = 10
      STARBR2 = 10

      BROWNPIP = 20
      PIPEWAL2 = 40
      PIPE2 = 15
      PIPE4 = 15

      TEKWALL2 = 30
      TEKWALL5 = 30
    }

    floors =
    {
      FLAT4  = 50
      FLAT14 = 50
      FLAT1  = 20
      FLOOR4_8 = 15
      FLOOR0_2 = 20
      CEIL4_1 = 20
    }

    ceilings =
    {
      CEIL3_5 = 50
      CEIL3_1 = 50
      RROCK03 = 50
      CEIL4_2 = 20
      CEIL5_1 = 40
    }
  }
  tech_Computer =
  {
    prob = 10
    env = "building"

    walls =
    {
      COMPSPAN = 30
      COMPOHSO = 10
      COMPTILE = 15
      COMPBLUE = 15
      TEKWALL4 = 3

      COMPTILY = 15
      COMPTILG = 15
      COMPTILR = 15
    }

    floors =
    {
      FLAT14 = 50
      FLOOR1_1 = 15
      FLAT4 = 10
      CEIL4_1 = 20
      CEIL4_2 = 20
      CEIL5_1 = 20
    }


    ceilings =
    {
      CEIL5_1 = 50
      CEIL4_1 = 15
      CEIL4_2 = 15
    }
  }

}

--[[OB_THEMES["nukem"] =
{
  label = "Duke Nukem"
  priority = 1
  game = "brutaldoom"
  mod="brutal_starterpack"
  name_class = "URBAN"
  mixed_prob = 0
  shown = False --if this is true it shows even without STARTERPACK being in use, which causes errors. Need to find a good solution.
}]]--
