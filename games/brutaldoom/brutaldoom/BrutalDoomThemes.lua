-------------------Themes---------------------------
BRUTALDOOM.THEMES =
{
 
  --wolfenstein
  wolf =
  {
    allow_mons_for_theme = "wolf"  
    
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
      BrutalSS = 1.2
      ClassicSS = 1.5
      Ubersoldat = 1.5
      ADog = 1.1
    }
  }
}

BRUTALDOOM.ROOM_THEMES =
{
  
  wolf_Stone =
  {
    env = "building"
	pic = "stone"
	prob = 50

	walls =
	{
	  ZZWOLF1 = 50
	}

    floors =
    {
      FLAT5_4 = 50
	  FLAT1 = 25
      MFLR8_1 = 25
    }

    ceilings =
    {
      FLAT1 = 50
	  FLAT19 = 25
    }
  }

  wolf_Wood =
  {
    env = "building"
	prob = 40

    walls =
    {
      ZZWOLF5 = 100  
    }

    floors =
    {
      FLAT5_5 = 50
	  FLAT5_2 = 25
	  FLAT5_1 = 25
    }

    ceilings =
    {
	  CEIL5_2 = 50
	  CEIL1_1 = 50
    }
  }

  wolf_Brick =
  {
    env = "building"
	prob = 40

    walls =
    {
      ZZWOLF11 = 100

    }
	
    floors =
    {
      FLOOR0_3 = 50
	  FLOOR0_5 = 25
	  FLAT1 = 25
    }

    ceilings =
    {
	  CEIL4_1 = 50
      FLAT5_3 = 25
    }	
  }
  
  wolf_Cells =
  {
    env = "building"
	prob = 30

    walls =
    {
      ZZWOLF9 = 50
    }
	
    floors =
    {
      FLAT5_4 = 50
	  FLAT1 = 25
    }

    ceilings =
    {
	  CEIL4_2 = 50
      FLAT1 = 25
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
    Experiment = 0 --it gets confusing having these on screen with the mummy
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

BRUTALDOOM.THEMES.egypt2.allow_mons_for_theme = "egypt2"

gui.import("brutaldoom/BrutalDoomThemesClassicUpdates")

OB_THEMES["egypt2"] =
{
  -- TNT Evilution theme

  label = "Egypt"
  game = { brutaldoom = 1 }
  priority = 5
  name_class = "GOTHIC"
  mixed_prob = 0
}

OB_THEMES["wolf"] =
{
  label = "Wolfenstein"
  priority = 2
  game = "brutaldoom"
  name_class = "URBAN"
  -- this theme is special, hence no mixed_prob
}

OB_THEMES["psycho"] =
{
  label = _("Psychedelic")
  game = {brutaldoom=1,doom1=1,doom2=1}
  priority = -99  -- bottom most
}
