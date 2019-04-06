--Edits and additions to existing themes--
BRUTALDOOM.THEMES.tech = DOOM.THEMES.tech
BRUTALDOOM.THEMES.urban = DOOM.THEMES.urban
BRUTALDOOM.THEMES.hell = DOOM.THEMES.hell
BRUTALDOOM.THEMES.DEFAULTS = DOOM.THEMES.DEFAULTS

BRUTALDOOM.THEMES.DEFAULTS.barrels =
{
    barrel = 50
    BDECBarrel = 25
}
--tech
BRUTALDOOM.THEMES.tech.allow_mons_for_theme = "tech"
BRUTALDOOM.THEMES.tech.prefab_remap =
{
    BIGDOOR5 = "TNTDOOR2"
    BIGDOOR6 = "TNTDOOR2"
    BIGDOOR7 = "TNTDOOR2"
}
BRUTALDOOM.THEMES.tech.monster_prefs =
{
    PistolZombie  = 1.5
    RifleZombie = 0.5
    shooter = 1.2
    arach   = 1.5
    Labguy = 1.6
    Experiment = 1.5
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
BRUTALDOOM.THEMES.urban.monster_prefs =
{
    PistolZombie = 0.8
    RifleZombie = 1.2
    shooter = 0.8
    SMGZombie = 1.2
    revenant = 1.2
    knight   = 1.5
    gunner   = 1.5
    ZombieMainBattleTank = 1.1
    ZombieLightTank = 1.1
    ZombieMech = 1.1
    ZombieHelicopter = 1.1
    Experiment = 0.8
}
BRUTALDOOM.THEMES.urban.passable_decor =
{
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
    dead_caco  = 0
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
--hell
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
