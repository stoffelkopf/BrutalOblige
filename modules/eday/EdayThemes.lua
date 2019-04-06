EDAY.THEMES = DOOM.THEMES

EDAY.THEMES.urban.passable_decor =
{
  GraffitiPainter = 100

  UrbanRubble = 100

  BDCritterMouse = 90
        
  gibs = 20
  pool_blood_1 = 20
  pool_blood_2 = 20
  pool_brains  = 10

  gibbed_player = 10
  dead_player = 10
  dead_zombie = 3
  dead_shooter = 3
  dead_imp = 3
  dead_demon = 1
}

EDAY.ROOM_THEMES =
{
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

  wolf_Cells =
  {
    env = "building"
	prob = 50

    walls =
    {
      ZZWOLF9 = 50
      B0130 = 50
      BRICK01 = 50
    }

    floors =
    {
      FLAT1 = 50
      URFLAT09 = 50
    }

    ceilings =
    {
      FLAT1 = 50
      BRICK01 = 40
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
      B0130 = 50
      BRICK01 = 50
    }

    floors =
    {
      FLAT1 = 50
      URFLAT09 = 50
    }

    ceilings =
    {
      FLAT5_3 = 30
      BRICK01 = 40
    }
  }

  wolf_Hallway =
  {
    env = "hallway"
	prob = 50

    walls =
    {
      ZZWOLF5 = 50
      B0130 = 50
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
