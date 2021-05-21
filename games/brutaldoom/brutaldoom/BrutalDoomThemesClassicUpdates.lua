--Edits and additions to existing themes--
BRUTALDOOM.THEMES.tech = DOOM.THEMES.tech
BRUTALDOOM.THEMES.urban = DOOM.THEMES.urban
BRUTALDOOM.THEMES.hell = DOOM.THEMES.hell
BRUTALDOOM.THEMES.DEFAULTS = DOOM.THEMES.DEFAULTS

BRUTALDOOM.THEMES.DEFAULTS.barrels =
{
    barrel = 50
    BDECBarrel = 20
}

--tech
BRUTALDOOM.THEMES.tech.allow_mons_for_theme = "tech"
BRUTALDOOM.THEMES.tech.prefab_remap =
{
    BIGDOOR5 = "TNTDOOR2"
    BIGDOOR6 = "TNTDOOR2"
    BIGDOOR7 = "TNTDOOR2"
}

BRUTALDOOM.THEMES.tech.facades =
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
BRUTALDOOM.THEMES.tech.fences.BROWN144 = 0 --doesn't tile properly on y
BRUTALDOOM.ROOM_THEMES.tech_Gray = DOOM.ROOM_THEMES.tech_Gray
BRUTALDOOM.ROOM_THEMES.tech_Gray.walls =
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
BRUTALDOOM.THEMES.urban.allow_mons_for_theme = "urban"

BRUTALDOOM.THEMES.urban.passable_decor =
{

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
    dead_caco  = 0  
	BDECPentagram = 25
}
BRUTALDOOM.ROOM_THEMES.urban_Outdoors_generic=DOOM.ROOM_THEMES.urban_Outdoors_generic
BRUTALDOOM.ROOM_THEMES.urban_Outdoors_generic.floors =
{
    JUNKY15 = 60
    JUNKY16 = 60
    APOCTX1 = 60
    APOCTX1B = 60
    APOCTX2 = 60
    APOCTX3 = 60
    
    STONE    = 50
    FLAT5_2  = 50
    ROCK3    = 25
    MFLR8_3  = 10
}

BRUTALDOOM.THEMES.urban.skyboxes =
{
    Skybox_generic_Plain = 30
	Skybox_generic_Plain_cloud = 30
	Skybox_generic_Plain_rain = 15	
	Skybox_generic_Plain_snow = 10
	Skybox_garrett_city = 50
	Skybox_garrett_city_cloud = 30
	Skybox_garrett_city_rain = 30
	Skybox_garrett_city_snow = 15
    Skybox_generic = 50
	Skybox_generic_cloud = 30
	Skybox_generic_rain = 30
	Skybox_generic_snow = 15
	Skybox_hellish_city = 20	
}


BRUTALDOOM.THEMES.hell.skyboxes =
{
    Skybox_generic_Plain = 30
    Skybox_generic_Plain_ash = 15
    Skybox_generic_Plain_cinder = 15	
    Skybox_generic_Plain_cloud = 15	
	Skybox_generic = 20
	Skybox_garrett_hell = 50
	Skybox_garrett_hell_ash	= 30
	Skybox_garrett_hell_cinder	= 30
	Skybox_garrett_hell_cloud	= 30	
	Skybox_hellish_city = 50
	Skybox_hellish_city_ash = 30
	Skybox_hellish_city_cinder = 30
	Skybox_hellish_city_cloud = 30	
}


BRUTALDOOM.THEMES.tech.skyboxes =
{
    Skybox_generic_Plain = 30
	Skybox_generic_Plain_cloud = 15
	Skybox_generic_Plain_rain = 15
	Skybox_generic_Plain_snow = 10	
    Skybox_generic = 50
	Skybox_generic_cloud = 30
	Skybox_generic_rain = 30
	Skybox_generic_snow = 15	
	Skybox_garrett_city = 50
	Skybox_garrett_city_cloud = 30	
	Skybox_garrett_city_rain = 30	
	Skybox_garrett_city_snow = 15
	Skybox_hellish_city = 20
}

BRUTALDOOM.THEMES.wolf.skyboxes =
{
    Skybox_generic_Plain = 50
	Skybox_generic_Plain_cloud = 50
	Skybox_generic_Plain_rain = 50	
	Skybox_generic_Plain_snow = 30
}

BRUTALDOOM.THEMES.egypt2.skyboxes =
{
    Skybox_generic_Plain = 50
	Skybox_generic_Plain_cloud = 50
	Skybox_generic_Plain_rain = 50	
	Skybox_generic_Plain_snow = 30
}

BRUTALDOOM.THEMES.hell.allow_mons_for_theme = "hell"

OB_THEMES["tech"] =
{
  label = _("Tech")
  game = "brutaldoom"
  priority = 18
  name_class = "TECH"
  mixed_prob = 80
}


OB_THEMES["urban"] =
{
  label = _("Urban")
  game = "brutaldoom"
  priority = 15
  name_class = "URBAN"
  mixed_prob = 50
}


OB_THEMES["hell"] =
{
  label = _("Hell")
  game = "brutaldoom"
  priority = 12
  name_class = "GOTHIC"
  mixed_prob = 40
}
