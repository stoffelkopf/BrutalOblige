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
	prob = 50

	walls =
	{
	  ZZWOLF1 = 50
	  GSTONEB1 = 50
	  GSTONEC1 = 50
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

  wolf_Marble =
  {
    env = "building"
	prob = 50

	walls =
	{
	  MARB1_1 = 50
	  MARB2_1 = 50	  
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
	prob = 50

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
	prob = 50

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
  
  wolf_Brick_Mixed =
  {
    env = "building"
	prob = 50

    walls =
    {
      COBBLEA1 = 50
	  COBBLEB1 = 50
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
  
 wolf_Brick_Gray =
  {
    env = "building"
	prob = 50

    walls =
    {
      GRYBRIK1 = 50
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
	prob = 50

    walls =
    {
      ZZWOLF9 = 50
	  BSTONEB1 = 50
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

  wolf_Slime =
  {
    env = "building"
	prob = 50

    walls =
    {
      GSTSLME1 = 50
	  GSTLSLM1 = 50	  
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
	
  wolf_Brick_Blue =
  {
    env = "building"
	prob = 50

    walls =
    {
      BLUWALL1 = 50
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

gui.import("brutaldoom/BrutalDoomThemesClassicUpdates")

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