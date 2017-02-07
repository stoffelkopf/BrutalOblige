--curent highest used id number 333 (Chex yellow key)

math.randomseed( os.time() ) --get some randomisation
math.random()
math.random()

secretexit1 = math.random(1,9)
secretexit2 = math.random(11,19)
secretexit3 = math.random(20,29)

local boss1 = "cyberdemon"
local boss2 = "mastermind"

local generickickstate = [[
                DoKick:
                	TNT1 A 0
                	TNT1 A 0 A_Takeinventory("Zoomed",1)
                        TNT1 A 0 A_ZoomFactor(1.0)
                        TNT1 A 0 A_Takeinventory("ADSmode",1)
                	NULL A 0 A_JumpIf (momZ > 0, "AirKick")
                	NULL A 0 A_JumpIf (momZ < 0, "AirKick")
                	RIFF A 0 A_FireCustomMissile("KickAttackDetectDowned", 0, 0, 0, 0)
                        TNT1 A 0 A_jumpifinventory("PowerStrength",1,"BerserkerKick")
                	TNT1 A 0 A_PlaySound("KICK")
                	TNT1 A 0 SetPlayerProperty(0,1,0)
                	KICK BCD 1
                	RIFF A 0 A_FireCustomMissile("KickAttack", 0, 0, 0, -7)
                        KICK H 5
                	KICK A 0 A_Takeinventory("Kicking",1)
                	KICK I 1
                	KICK GFEDCBA 1
                	TNT1 A 0 SetPlayerProperty(0,0,0)
                	TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")
                	Goto Ready
                BerserkerKick:
                	TNT1 A 0 A_PlaySound("KICK")
                	TNT1 A 0 SetPlayerProperty(0,1,0)
                	KICK BCD 1
                        RIFF A 0 A_FireCustomMissile("SuperKickAttack", 0, 0, 0, -7)
                        KICK H 5
                	KICK A 0 A_Takeinventory("Kicking",1)
                	KICK I 1
                	KICK GFEDCBA 1
                	TNT1 A 0 SetPlayerProperty(0,0,0)
                	TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")
                	Goto Ready
                AirKick:
                        TNT1 A 0 A_jumpifinventory("PowerStrength",1,"SuperAirKick")
                	TNT1 A 0 A_PlaySound("KICK")
                	TNT1 A 0 A_Recoil (-6)
                        KICK JKLMN 1
                        RIFF A 0 A_FireCustomMissile("AirKickAttack", 0, 0, 0, -31)
                        KICK O 3
                	KICK A 0 A_Takeinventory("Kicking",1)
                	KICK PQRST 2
                        TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")
                	Goto Ready
                SuperAirKick:
                	TNT1 A 0 A_PlaySound("KICK")
                	TNT1 A 0 A_Recoil (-6)
                	KICK JKLMN 1
                        RIFF A 0 A_FireCustomMissile("SuperAirKickAttack", 0, 0, 0, -31)
                        KICK O 3
                	KICK A 0 A_Takeinventory("Kicking",1)
                	KICK PQRST 2
                	TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")
                	Goto Ready
                ]]
                
local genericgrenadestate = [[
                TossGrenade:
                    TNT1 A 0
                    TNT1 A 0 A_TakeInventory("TossGrenade", 1)
                    TNT1 A 0 A_JumpIfInventory("GrenadeAmmo", 1, 1)
                    Goto NoGrenade
                    GRTH ABCD 1
                    TNT1 A 0 A_GiveInventory("FiredGrenade", 1)
                    TNT1 A 0 A_PLaySound ("GRNPIN")
                    GRTH EEFG 1
                    TNT1 A 0 A_PLaySound ("GRNTOSS")
                    GRTH HI 1
                    TNT1 A 0 A_TakeInventory("GrenadeAmmo", 1)
                    TNT1 A 0 A_FireCustomMissile("HandGrenade", random(-2,2), 0, 0, 0, 0, 0)
                    TNT1 A 0 A_TakeInventory("FiredGrenade", 1)
                    GRTH JKLM 1
                    TNT1 A 1
                    TNT1 A 0 A_TakeInventory("TossGrenade", 1)
                    Goto Ready
                NoGrenade:
                    TNT1 A 0
                    TNT1 A 0 A_Print("No Grenades Left.")
                    Goto Ready
                ]]

BRUTALDOOM = { }

BRUTALITY = { }

BRUTALDOOM4 = { }

BRUTALFRIENDS = { }

DOOMMETAL = { }

BRUTALDOOM.SECRET_EXITS = { }

STARTERPACK = { }

gui.import("brutalthemes") --this has to come after the tables are declared
gui.import("hereticbrutal")

BRUTALDOOM.YES_NO =
{
    "yes", "Yes"
    "no", "No"
}

BRUTALDOOM.VERSIONS = 
{
	"brutalv20b.pk3",	"V20b"
}

BRUTALDOOM.PARAMETERS =
{
	doom_metal = false
    starterpack = false
    skygenerator = false
    iwad = 'Doom2.wad'
    musicpreset = 'iwad'
	brutalversion = "brutalv20b.pk3"
}

BRUTALDOOM.IWADS =
{
    "Doom2.wad",    "Doom 2"
    "Tnt.wad",      "TNT:Eviloution"
    "Plutonia.wad", "Plutonia"
    "doom_complete.pk3",    "Doom Complete"
    "freedoom2.wad",    "Freedoom 2"
	--"heretic.wad",	"Heretic" Nowhere near ready yet!
}

BRUTALDOOM.MONSTERS =
{
	Belphegor =
	  {
	    id = 302
	    r = 32
	    h = 88
	    level = 8
	    prob = 17
	    crazy_prob = 12
	    health = 2000
	    damage = 150
	    attack = "missile"
	    outdoor_factor = 3.0
	    density = 0.1
	    weap_prefs = { bfg=5.0 }
	    room_size = "medium"
	  }
	 Juggernaut =
	  {
	    id = 303
	    r = 48
	    h = 88
	    level = 9
		boss_type = "tough"
		boss_prob = 15
		boss_limit = 1
	    prob = 10
	    crazy_prob = 10
	    health = 8000
	    damage = 200
	    attack = "hitscan"
	    outdoor_factor = 3.0
	    density = 0.1
	    weap_prefs = { bfg=5.0 }
	    room_size = "large"
		nasty = true
	  }
	  Flemoid1 =
	  {
	    id = 304
	    r = 20
	    h = 56 
	    level = 1
	    prob = 35
	    crazy_prob = 35
	    health = 70
	    damage = 1
	    attack = "Missile"
	    density = 1.5
	    room_size = "small"
	    infights = true
	    theme = "satanshankerchief"
	  }
	  Flemoid2 =
	  {
	    id = 305
	    r = 20
	    h = 56 
	    level = 2
	    prob = 35
	    crazy_prob = 35
	    health = 90
	    damage = 1
	    attack = "Missile"
	    density = 1.5
	    room_size = "small"
	    infights = true
	    theme = "satanshankerchief"
	  }
	  Flemoid3 =
	  {
	    id = 306
	    r = 20
	    h = 56 
	    level = 3
	    prob = 35
	    crazy_prob = 35
	    health = 200
	    damage = 1
	    attack = "Missile"
	    density = 1.5
	    room_size = "small"
	    infights = true
	    theme = "satanshankerchief"
	  }
	  Quadrumpus =
	  {
	    id = 310
	    r = 20
	    h = 64 
	    level = 7
	    prob = 20
	    crazy_prob = 20
	    health = 400
	    damage = 1
	    attack = "Missile"
	    density = 0.7
	    room_size = "medium"
	    infights = true
	    theme = "satanshankerchief"
	  }
	--As of v20b the evil marine replaces the ss. A script checks if it is in a wolfenstein themed level and changes it back if so.
	ss_dude = REMOVE_ME
	EvilMarine =
	  {
	    id = 84
	    r = 20 --the evil marine is actually 14 but I've left it as 20 incase it does somehow end up as an ss guard.
	    h = 56 
	    level = 8
	    prob = 8
	    crazy_prob = 7
	    health = 200
	    damage = 75
	    attack = "hitscan"
	    cage_factor = 0  -- never put in cages
	    density = 1.0
	  }
	BrutalSS = --the script often fails in Oblige levels hence this as well
	  {
	    id = 311
	    r = 20
	    h = 56 
	    level = 1
	    prob = 35
	    crazy_prob = 20
	    health = 90
	    damage = 20
	    attack = "hitscan"
	    cage_factor = 0  -- never put in cages
	    density = 1.5
	    theme = "wolf"
	  }
	  EasyMarine =
	  {
	    id = 307
	    r = 14
	    h = 56 
	    level = 4
	    prob = 10
	    crazy_prob = 7
	    health = 80
	    damage = 5
	    attack = "hitscan"
	    cage_factor = 0  -- never put in cages
	    density = 1.0
	  }
	  DarkImp =
	  {
	    id = 308
	    r = 25
	    h = 56 
	    level = 1
	    prob = 65
	    health = 120
	    damage = 3
	    attack = "missile"
	    room_size = "small"
	  }
	  Epic2Alien =
	  {
	    id = 309
	    r = 20
	    h = 56 
	    level = 4
	    prob = 15
	    crazy_prob = 7
	    health = 80
	    damage = 20
	    attack = "hitscan"
	    cage_factor = 0  -- never put in cages
	    density = 1.0
	  }
      ClassicSS =
      {
          id = 313
          r = 20
          h = 56 
          level = 1
          theme = "wolf"
          prob = 20
          crazy_prob = 7
          health = 50
          damage = 5
          attack = "hitscan"
          give = { {ammo="bullet",count=5} }
          density = 1.5
      }
      Zyberdemon =
      {
          id = 324
          r = 40
          h = 132
          level = 9
          prob = 17
          crazy_prob = 12
          health = 4000
          damage = 150
          attack = "hitscan"
          density = 0.1
          min_weapon = 4
          --weap_prefs = { bfg=10.0 }
          room_size = "medium"
      }
      --existing monsters height corrected
      Cyberdemon =
      {
          id = 16
          r = 40
          h = 132
          level = 9
          prob = 17
          crazy_prob = 12
          health = 4000
          damage = 150
          attack = "missile"
          density = 0.1
          min_weapon = 4
          weap_prefs = { bfg=10.0 }
          room_size = "medium"
      }
      Mastermind =
      {
          id = 7
          r = 128
          h = 100
          level = 9
          prob = 20
          crazy_prob = 18
          health = 3000
          damage = 200
          attack = "hitscan"
          density = 0.2
          min_weapon = 5
          weap_prefs = { bfg=10.0 }
          room_size = "large"
      }
}

BRUTALITY.MONSTERS =
{
	--remove the no longer needed brutal monsters
	Belphegor = REMOVE_ME
	DarkImp = REMOVE_ME
	Juggernaut = REMOVE_ME

	  Trite =
	  {
	    id = 303
	    r = 19
	    h = 23 
	    level = 1
	    prob = 40
	    crazyprob = 20
	    health = 15
	    damage = 1
	    attack = "melee"
	    room_size = "small"
	  }

	--from pb's decorate.realm667monsters
	  Shadow =
	  {
	    id = 312
	    r = 20
	    h = 56 
	    level = 2
	    prob = 50
	    crazyprob = 20
	    health = 80
	    damage = 5
	    attack = "missile"
	    room_size = "small"
	  }
	
}

BRUTALDOOM4.MONSTERS =
{
 D4caco =
  {
    id = 316
    r = 31
    h = 56 
    level = 3
    prob = 50
    health = 400
    damage = 5
    attack = "missile"
    density = 0.5
    min_weapon = 1
    float = true
    room_size = "large"
  }   
}

BRUTALFRIENDS.MONSTERS =
{
 EnemyMarine3 =
	  {
	    id = 319
	    r = BRUTALDOOM.MONSTERS.EasyMarine.r
	    h = BRUTALDOOM.MONSTERS.EasyMarine.h
	    level = BRUTALDOOM.MONSTERS.EasyMarine.level
	    prob = BRUTALDOOM.MONSTERS.EasyMarine.prob
	    crazy_prob = BRUTALDOOM.MONSTERS.EasyMarine.crazy_prob
	    health = BRUTALDOOM.MONSTERS.EasyMarine.health
	    damage = BRUTALDOOM.MONSTERS.EasyMarine.damage
	    attack = BRUTALDOOM.MONSTERS.EasyMarine.attack
	    cage_factor = BRUTALDOOM.MONSTERS.EasyMarine.cage_factor
	    density = BRUTALDOOM.MONSTERS.EasyMarine.density
	  }
}

--decorate definition
function BRUTALDOOM.decorate()

  local data =
	{
        'actor classicwolf : WolfensteinSS 313\n'
		'{\n'
                '//$Category "Monsters/Wolfenstein"\n'
                '//$EditorSprite "SSWVA1"\n'
                'Tag "Vanilla Wolfenstein 3D SS"\n'
		'}\n'
		'actor ObligeBelphegor : Belphegor 302\n'
		'{\n'
                '//$Category "Monsters"\n'
                '//$EditorSprite "BOS3A1"\n'
                'Tag "Belphegor"\n'
		'}\n'
		'\n'
		'actor ObligeJuggernaut : Hectebus 303\n'
		'{\n'
                '//$Category "Monsters"\n'
                '//$EditorSprite "BS1WA1"\n'
                'Tag "Juggernaut"\n'
		'}\n'
		'\n'
		'actor ObligeFlemoid1 : Flemoid1 304\n'
		'{\n'
                '//$Category "Monsters/Chex"\n'
                '//$EditorSprite "FLE1A1"\n'
                'Tag "Flemoidus Commonus"\n'
		'}\n'
		'\n'
		'actor ObligeFlemoid2 : Flemoid2 305\n'
		'{\n'
                '//$Category "Monsters/Chex"\n'
                '//$EditorSprite "FLE2A1"\n'
                'Tag "Flemoidus Bipedicus"\n'
		'}\n'
		'\n'
		'actor ObligeFlemoid3 : Flemoid3 306\n'
		'{\n'
                '//$Category "Monsters/Chex"\n'
                '//$EditorSprite "FLE3A1"\n'
                'Tag "Armored Flemoidus Bipedicus"\n'
		'}\n'
		'\n'
		'actor ObligeEasyMarine : EasyMarine 307\n'
		'{\n'
                    '//$Category "Monsters/Evil Marines"\n'
                    '//$EditorSprite "PLAYA1"\n'
                    'Tag "Evil Grunt"\n'
		'}\n'
		'\n'
		'ACTOR ObligeDarkImp : DoomImp 308\n' --change back to inherit from Imp if you can be bothered with the brutal stuff
		'{\n'
                '//$Category "Monsters"\n'
                '//$EditorSprite "DRKSA1"\n'
                'Tag "Dark Imp"\n'
		'Translation "48:63=5:8", "64:79=5:8", "208:223=5:8"\n' --for the brutal death states
		'Obituary "%o was burned by a dark imp."\n'
  		'HitObituary "%o was slashed by a dark imp."\n'
  		'Health 120\n'
		'States\n'
		  '{\n'
		  'Spawn:\n'
		    'DRKS AB 10 A_Look\n'
		    'Loop\n'
		  'See:\n'
		    'DRKS AABBCCDD 3 A_Chase\n'
		    'Loop\n'
		  'Melee:\n'
		  'Missile:\n'
		    'DRKS EF 8 A_FaceTarget\n'
		    'DRKS G 6 A_CustomComboAttack("CacodemonBall", 32, 3 * random(1, 8), "imp/melee")\n' --close enough
		    'Goto See\n'
		  'Pain:\n'
		    'DRKS H 2\n'
		    'DRKS H 2 A_Pain\n'
		    'Goto See\n'
		  'Death:\n'
		    'TNT1 A 0 A_Jump (127, "Death2")\n'
		    'DRKS I 8\n'
		    'DRKS J 8 A_Scream\n'
		    'DRKS K 6\n'
		    'DRKS L 6 A_NoBlocking\n'
		    'DRKS M -1\n'
		    'Stop\n'
		  'Death2:\n'
		    'DRKD A 8\n'
		    'DRKD C 7 A_Scream\n'
		    'DRKD D 5\n'
		    'DRKD E 5 A_NoBlocking\n'
		    'DRKD E -1\n'
		    'Stop\n'
		'Death.MonsterShotgunBullet:\n'
		'Death.Shotgun:\n'
		 	'TNT1 A 0 A_ChangeFlag("SLIDESONWALLS", 0)\n'
			'//TNT1 A 0 A_Jump(42, "Death.Shotgunontheface")\n'
			'TNT1 A 0 A_JumpIfCloser(100, "Death.Blast")\n'
			'TNT1 A 0 A_JumpIfCloser(320, "Death.Shotgunontheface")\n'
			'Goto Death\n'
		'Death.SSG:\n'
		 	'TNT1 A 0 A_ChangeFlag("SLIDESONWALLS", 0)\n'
			'TNT1 A 0 A_Jump(42, "Death.Shotgunontheface")\n'
			'TNT1 A 0 A_JumpIfCloser(100, "XDeath")\n'
			'TNT1 A 0 A_JumpIfCloser(320, "Death.Shotgunontheface")\n'
			'Goto Death\n'
		'Death.Shotgunontheface:\n'
			'TNT1 A 0 A_Stop\n'
			'TNT1 A 0 A_Pain\n'
			'TROO H 1 A_FaceTarget\n'
			'TNT1 A 0 A_Recoil(13)\n'
			'TNT1 A 0 ThrustThingZ(0,20,0,1)\n'
			'TNT1 A 0 A_Scream\n'
			'TNT1 A 0 A_CustomMissile ("MuchBlood2", 35, 0, random (0, 360), 2, random (0, 160))\n'
			'TNT1 AA 0 A_CustomMissile ("XDeath1", 35, 0, random (0, 360), 2, random (0, 160))\n'
			'TR06 ABCDE 4 A_CustomMissile ("Brutal_LiquidBlood3", 15, 0, random (0, 360), 2, random (0, 40))\n'
			'TR06 FGHIJK 4 A_NoBlocking\n'
		    	'TR06 K -1\n'
		    	'Stop\n'
		'Death.Blast:\n'
		'Death.Railgun:\n'
			'TNT1 A 0\n'
			'TNT1 A 0 A_FaceTarget\n'
			'TNT1 A 0 A_NoBlocking\n'
			'TNT1 A 0 A_XScream\n'
			'TNT1 AAA 0 A_CustomMissile ("Instestin", 32, 0, random (150, 210), 2, random (0, 40))\n'
			'TNT1 AAA 0 A_CustomMissile ("XDeath1", 32, 0, random (150, 210), 2, random (0, 40))\n'
			'TNT1 A 0 A_CustomMissile ("XDeathDarkImpArm", 32, 0, random (150, 210), 2, random (0, 40))\n'
			'TNT1 A 0 A_CustomMissile ("XDeathDarkImpHead", 32, 0, random (150, 210), 2, random (0, 40))\n'
			'TNT1 AAA 0 A_CustomMissile ("Xdeath3", 16, 0, random (170, 190), 2, random (0, 40))\n'
			'TNT1 AAAA 0 A_CustomMissile ("Brutal_FlyingBlood", 32, 0, random (170, 190), 2, random (0, 40))\n'
			'TNT1 AAAA 0 A_CustomMissile ("Brutal_FlyingBloodFaster", 32, 0, random (170, 190), 2, random (0, 40))\n'
			'TNT1 AAAA 0 A_CustomMissile ("Brutal_FlyingBloodMuchFaster", 32, 0, random (170, 190), 2, random (0, 40))\n'
			'TNT1 AAAA 0 A_CustomMissile ("SuperWallRedBlood", 32, 0, random (170, 190), 2, random (0, 40))\n'
			'TNT1 AAA 0 A_CustomMissile ("BloodMistBig", 40, 0, random (0, 360), 2, random (30, 90))\n'
			'TRO3 A 6 A_Stop\n'
			'TNT1 A 0 A_SpawnItem ("GrowingBloodPool")\n'
			'TRO3 BBBBBBBBBB 3 A_CustomMissile ("Brutal_LiquidBlood2", 26, 0, random (0, 360), 2, random (30, 60))\n'
			'TRO3 CCC 3 A_CustomMissile ("Brutal_LiquidBlood2", 26, 0, random (0, 360), 2, random (10, 40))\n'
			'TRO3 DD 3 A_CustomMissile ("Brutal_LiquidBlood2", 6, 0, random (0, 360), 2, random (30, 60))\n'
			'TRO3 E -1\n'
		    'Stop\n'
                'Death.SuperPlasma:\n'
                'Death.Plasma:\n'
                'Death.Plasma2:\n'
                    '    PBR1 A 6 A_Scream\n'
                    '    TNT1 AAAAAAAAAAAAAAAAAA 0 A_CustomMissile ("Ashes1", 32, 0, random (0, 360), 2, random (0, 180))\n'
                    '    TNT1 AAAAAAAAAAAAAAAAAA 0 A_CustomMissile ("Ashes2", 32, 0, random (0, 360), 2, random (0, 180))\n'
                    '    TNT1 AAAA 0 A_CustomMissile ("BluePlasmaFireNonStatic", 32, 0, random (0, 360), 2, random (0, 180))\n'
                    '    PBR1 B 6 A_NoBlocking\n'
                    '    PBR1 CDEFGH 6 A_CustomMissile ("Blood", 10, 0, random (0, 360), 2, random (0, 160))\n'
                    '    PBR1 HHHHHHHHHHHHHHHHHHHHHH 8 A_CustomMissile ("PlasmaSmoke", 10, 0, random (0, 360), 2, random (0, 160))\n'
                    '    PBR1 H -1\n'
                    '    Stop\n'
                'Crush:\n'
                'Death.Stomp:\n'
                        'TNT1 A 0 A_Scream\n'
                        'TNT1 A 0 A_NoBlocking\n'
                        'DRKS KL 2\n'
                        'TNT1 AA 0 A_SpawnItem("MeatDeathSmall")\n'
                        'TNT1 AAA 0 bright A_CustomMissile ("SuperGoreSpawner", 5, 0, random (0, 360), 2, random (30, 180))\n'
                        'TNT1 AAAA 0 bright A_CustomMissile ("XDeath1", 5, 0, random (0, 360), 2, random (30, 180))\n'
                        'TNT1 AA 0 bright A_CustomMissile ("XDeath2b", 55, 0, random (0, 360), 2, random (30, 180))\n'
                        'TNT1 AA 0 bright A_CustomMissile ("XDeath3b", 55, 0, random (0, 360), 2, random (30, 180))\n'
                        'TNT1 A 0 A_SpawnItem ("GrowingBloodPool")\n'
                        'TNT1 A 0 A_SpawnItem ("CrushedRemains")\n'
                        'TNT1 A 1\n'
                        'TNT1 A 1 A_XScream\n'
                        'Stop\n'
		  'Raise:\n'
		    'DRKS MLKJI 8\n'
		    'Goto See\n'
		  '}\n'
		'}\n'
		'ACTOR XDeathDarkImpArm : XDeathImpArm\n'
		'{\n'
		'Translation "48:63=5:8", "64:79=5:8", "208:223=5:8"\n'
		'}\n'
		'ACTOR XDeathDarkImpHead : XDeathImpHead\n'
		'{\n'
		'Translation "48:63=5:8", "64:79=5:8", "208:223=5:8"\n'
		'}\n'
		'actor ObligeEpic2Alien : Epic2Alien 309\n'
		'{\n'
                        '//$Category "Monsters"\n'
                        '//$EditorSprite "EPTAA1"\n'
                        'Tag "Epic 2 Alien"\n'
			'SeeSound "chainguy/sight"\n'
			'PainSound "chainguy/pain"\n'
			'DeathSound "chainguy/death"\n'
			'ActiveSound "chainguy/active"\n'
			'AttackSound "chainguy/attack"\n'
			'Obituary "%o never saw their attacker"\n'
			'States\n'
			'{\n'
				'See:\n'
					'TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
					'TNT1 AAAAAAAAAAAAAAAAAAA 1 A_Chase("","")\n'
					'TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
					'EPTA ABCD 1 A_Chase\n'
					'TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
					'TNT1 AAAAAAAAAAAAAAAAAAA 1 A_Chase("","")\n'
					'TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
					'EPTA ABCD 1 A_Chase\n'
					'EPTA ABCD 1 A_Chase("","")\n'
					'TNT1 AAAAAAAAAAAAAAAAAAA 1 A_Chase("","")\n'
					'EPTA ABCDABCD 1 A_Chase\n'
					'Loop\n'
				'Missile:\n'
					'EPTA E 9 A_FaceTarget\n'
					'EPTA F 4 A_FaceTarget\n'
					'EPTA G 4 BRIGHT A_CPosAttack\n'
					'EPTA E 9 A_FaceTarget\n'
					'EPTA F 4 A_FaceTarget\n'
					'EPTA G 4 BRIGHT A_CPosAttack\n'
					'EPTA E 9 A_FaceTarget\n'
					'EPTA F 4 A_FaceTarget\n'
					'EPTA G 4 BRIGHT A_CPosAttack\n'
					'EPTA E 9 A_FaceTarget\n'
					'EPTA F 4 A_FaceTarget\n'
					'EPTA G 4 BRIGHT A_CPosAttack\n'
					'Goto See\n'
				'Pain:\n'
					'EPTA H 3 A_Pain\n'
					'Goto See\n'
				'Death:\n'
					'EPTA I 5\n'
					'EPTA J 5 A_Scream\n'
					'EPTA K 5 A_NoBlocking\n'
					'EPTA L 5\n'
					'EPTA M -1\n'
					'Stop\n'
				'XDeath:\n'
					'EPTA N 5 \n'
					'EPTA O 5 A_XScream\n'
					'EPTA P 5 A_NoBlocking\n'
					'EPTA QRSTU 5\n'
					'EPTA V -1\n'
					'Stop\n'
				'Raise:\n'
					'EPTA M 5\n'
					'EPTA LKJI 5\n'
					'Goto See \n'
			'}\n'
		'}\n'
		'\n'
		'actor ObligeQuadrumpus : Quadrumpus 310\n'
		'{\n'
                '//$Category "Monsters/Chex"\n'
                '//$EditorSprite "QUADA1"\n'
                'Tag "Flemoidus Quadrumpus"\n'
		'}\n'
		'\n'
		'actor ObligeSS : Nazi 311\n'
		'{\n'
                '//$Category "Monsters/Wolfenstein"\n'
                '//$EditorSprite "NAZIA1"\n'
                'Tag "Brutal Doom SS"\n'
		'}\n'
		'\n'
                'ACTOR BrutalZyberdemon : TheCyberdemon 324\n'
                '{\n'
                '//$Category "Monsters"\n'
                '//$EditorSprite "ZYBRA1"\n'
                'Tag "Zyberdemon"\n'
                'Health 4500\n'
                'AttackSound "spider/attack"\n'
                'Height 132\n'
                'States\n'
                '{\n'
                '   Death.KillMe:\n'
                '   Death.Taunt:\n'
                '	TNT1 A 0 A_ChangeFlag("SOLID", 0)\n'
                '       TNT1 A 0 A_SpawnItem("TheCyberdemon")\n'
                '       Stop	\n'
                '	Pain.Killme:\n'
                '		TNT1 A 0\n'
                '	Goto See\n'
                '    ReplaceVanilla:\n'
                '		TNT1 A 0 A_ChangeFlag("THRUACTORS", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("COUNTKILL", 0)\n'
                '		TNT1 A 0 A_SpawnItemEx ("VanillaCyberdemon",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION | SXF_TRANSFERAMBUSHFLAG ,0)\n'
                '		Stop\n'
                '    Spawn:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		TNT1 A 0 A_GiveInventory("TargetIsACyberdemon")	\n'
                '	Stand:	\n'
                '        ZYBR D 10 A_Look\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '        ZYBR Z 10 A_Look\n'
                '        Loop\n'
                '	See:\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		TNT1 A 0 A_SpawnItem("HeavyFootSteps32")\n'
                '		ZYBR A 3 A_Hoof\n'
                '		ZYBR A 3\n'
                '		TNT1 A 0 A_JumpIfCloser(120, "Stomp")\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR AA 2 A_Chase\n'
                '		TNT1 A 0 A_JumpIfCloser(120, "Stomp")\n'
                '		ZYBR BB 2 A_Chase\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '        ZYBR BBC 2 A_Chase\n'
                '		TNT1 A 0 A_SpawnItem("HeavyFootSteps32")\n'
                '		TNT1 A 0 A_JumpIfCloser(120, "Stomp")\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '        ZYBR C 2 A_Chase\n'
                '		ZYBR C 2\n'
                '		ZYBR C 2 A_Metal\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR D 2 A_Chase\n'
                '		ZYBR D 2 A_Chase\n'
                '		TNT1 A 0 A_JumpIfCloser(120, "Stomp")\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR DD 2 A_Chase\n'
                '		Loop\n'
                '	Missile:\n'
                '		TNT1 A 0 A_TakeInventory("BrutalCounter",5)\n'
                '	    TNT1 A 0 A_JumpIfCloser(180, "Stomp")\n'
                '		TNT1 A 0 A_JumpIfInventory("Enraged", 1, "SpecialAttack")\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR E 8 A_FaceTarget\n'
                '	FireMissile:\n'
                '		TNT1 A 0 A_JumpIfInventory("BrutalCounter",5,"See")\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR F 3 BRIGHT A_CustomMissile("MastermindTracer",66,-25,0,0)\n'
                '		TNT1 A 0 A_JumpIfCloser(180, "Stomp")\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR E 4 A_FaceTarget\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR F 3 BRIGHT A_CustomMissile("MastermindTracer",66,-25,-7,0)\n'
                '		TNT1 A 0 A_JumpIfCloser(180, "Stomp")\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR E 4 A_FaceTarget\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR F 3 BRIGHT A_CustomMissile("MastermindTracer",66,-25,7,0)\n'
                '		TNT1 A 0 A_JumpIfCloser(180, "Stomp")\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR E 4 A_FaceTarget\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR F 3 BRIGHT A_CustomMissile("MastermindTracer",66,-25,0,0)\n'
                '		TNT1 A 0 A_JumpIfCloser(180, "Stomp")\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR E 4 A_FaceTarget\n'
                '		TNT1 A 0 A_GiveInventory("BrutalCounter",1)\n'
                '		Goto FireMissile \n'
                '	Stomp:\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR Z 5 A_FaceTarget\n'
                '		TNT1 A 0 A_Recoil(-5)\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '	    CYMA A 7 A_FaceTarget\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		TNT1 A 0 A_CustomMissile("CyberStomp",10,0,0,0)\n'
                '	    CYMA B 7\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		CYMA B 7\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		Goto See\n'
                '	Death:\n'
                '		ZYBR H 10\n'
                '		EXPL A 0 Radius_Quake (6, 100, 0, 22, 0)\n'
                '        TNT1 AAAA 0 A_CustomMissile ("ExplosionSpawner", 90, 0, random (0, 360), 2, random (0, 180))\n'
                '        TNT1 AAAAAA 0 A_CustomMissile ("ExplosionSpawner", 90, 0, random (0, 360), 2, random (0, 180))\n'
                '        TNT1 AAAA 0 A_CustomMissile ("UltraGoreSPawner", 90, 0, random (0, 360), 2, random (0, 180))\n'
                '		TNT1 A 0 A_CustomMissile ("XDeathCyberdemonHead", 120, 0, random (0, 360), 2, random (0, 180))\n'
                '		TNT1 A 0 A_CustomMissile ("XDeathCyberdemonArm", 120, 0, random (0, 360), 2, random (0, 180))\n'
                '		TNT1 A 0 A_CustomMissile ("XDeathCyberdemonGun", 120, 0, random (0, 360), 2, random (0, 180))\n'
                '		TNT1 A 0 A_CustomMissile ("XDeathCyberdemonPiece", 120, 0, random (0, 360), 2, random (0, 180))\n'
                '		TNT1 A 0 A_CustomMissile ("XDeathCyberdemonTorso", 120, 0, random (0, 360), 2, random (0, 180))\n'
                '        TNT1 AAAAAA 0 A_CustomMissile ("UltraGoreSpawner", 90, 0, random (0, 360), 2, random (0, 180))\n'
                '        TNT1 A 0 A_CustomMissile ("CyberXDeath", 0, 0, random (0, 360), 2, random (0, 160))\n'
                '		ZYBR I 5 A_Scream\n'
                '		ZYBR JKL 5\n'
                '		ZYBR M 5 A_NoBlocking\n'
                '		ZYBR NOP 5\n'
                '		ZYBR P 120\n'
                '		TNT1 A 0 A_BossDeath\n'
                '		ZYBR P -1 A_BossDeath\n'
                '		Stop\n'
                '	Death.Decaptate:\n'
                '	    TNT1 A 0 A_CustomMissile ("XDeathCyberdemonHead", 120, 0, random (0, 360), 2, random (0, 180))\n'
                '		TNT1 AAAAAAAAA 0 A_CustomMissile ("XDeath1", 120, 0, random (0, 360), 2, random (0, 180))\n'
                '		CYBB AAAAA 8 A_SpawnItem("MuchBlood", 0, 120)\n'
                '		CYBB ABCABCB 8 A_SpawnItem("MuchBlood", 0, 120)\n'
                '		EXPL A 0 Radius_Quake (6, 100, 0, 22, 0)\n'
                '        TNT1 AAAA 0 A_CustomMissile ("ExplosionSpawner", 90, 0, random (0, 360), 2, random (0, 180))\n'
                '        TNT1 AAAAAA 0 A_CustomMissile ("ExplosionSpawner", 90, 0, random (0, 360), 2, random (0, 180))\n'
                '        TNT1 AAAA 0 A_CustomMissile ("UltraGoreSPawner", 90, 0, random (0, 360), 2, random (0, 180))\n'
                '        TNT1 AAAAAA 0 A_CustomMissile ("UltraGoreSpawner", 90, 0, random (0, 360), 2, random (0, 180))\n'
                '        TNT1 A 0 A_CustomMissile ("CyberXDeath", 0, 0, random (0, 360), 2, random (0, 160))\n'
                '		ZYBR I 0 A_Fall\n'
                '		ZYBR JKL 0\n'
                '		ZYBR M 0 A_NoBlocking\n'
                '		ZYBR NOP 0\n'
                '		ZYBR P 120\n'
                '		ZYBR P -1 A_BossDeath\n'
                '		Stop\n'
                '    Crush:\n'
                '        TNT1 A 0 A_PlaySound("misc/xdeath4")\n'
                '        CRS3 A 5\n'
                '        CRS3 A -1\n'
                '        Stop\n'
                '	Pain.Taunt:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_JumpIfInventory("Enraged", 1, "SpecialAttack")\n'
                '		SPOS B 0 A_Pain\n'
                '		TNT1 A 0 A_ChangeFlag("FASTER", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("MISSILEMORE", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("MISSILEEVENMORE", 1)\n'
                '		TNT1 A 0 A_PlaySound("demon/pain")\n'
                '		CYBT A 1 A_FaceTarget\n'
                '		CYBT ABCCBADE 4\n'
                '		TNT1 A 0 A_PlaySound("CYBTAT", 1)\n'
                '		CYBT FGHGFGHGFGHGFGHG 3\n'
                '		CYBT EDA 4\n'
                '		TNT1 A 0 A_GiveInventory("Enraged", 1)\n'
                '		Goto Missile\n'
                '	SpecialAttack:\n'
                '		TNT1 A 0 A_TakeInventory("BrutalCounter",5)\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR E 6 A_FaceTarget\n'
                '	FireSpecial:\n'
                '		TNT1 A 0 A_JumpIfInventory("BrutalCounter",5,"See")\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR F 2 BRIGHT A_CustomMissile("MastermindTracer",66,-25,0,0)\n'
                '		TNT1 A 0 A_JumpIfCloser(180, "Stomp")\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR E 4 A_FaceTarget\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR F 2 BRIGHT A_CustomMissile("MastermindTracer",66,-25,-7,0)\n'
                '		TNT1 A 0 A_JumpIfCloser(180, "Stomp")\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR E 4 A_FaceTarget\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR F 2 BRIGHT A_CustomMissile("MastermindTracer",66,-25,7,0)\n'
                '		TNT1 A 0 A_JumpIfCloser(180, "Stomp")\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR E 4 A_FaceTarget\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR F 2 BRIGHT A_CustomMissile("MastermindTracer",66,-25,0,0)\n'
                '		TNT1 A 0 A_JumpIfCloser(180, "Stomp")\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR E 4 A_FaceTarget\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR F 2 BRIGHT A_CustomMissile("MastermindTracer",66,-25,0,0)\n'
                '		ZYBR E 4 A_FaceTarget\n'
                '		TNT1 A 0 A_SpawnItem("CybersHitBox", 0, 100,0)\n'
                '		ZYBR F 2 BRIGHT A_CustomMissile("MastermindTracer",66,-25,0,0)\n'
                '		TNT1 A 0 A_GiveInventory("BrutalCounter",1)\n'
                '		Goto FireMissile	\n'
                '	}\n'
                '}\n'
	}
    gui.wad_add_text_lump("BRUMONS", data);
end

function BRUTALDOOM4.caco()

  local data =
	{
    'ACTOR d4cacodemon 316\n'
    '{\n'
    '	//$Category "Monsters"\n'
    '   //$EditorSprite "HED4A1"\n'
    '	Game Doom\n'
    '  bloodtype "Blue_Blood", "BlueSawBlood"\n'
    '  +NOBLOODDECALS\n'
    '	SpawnID 19\n'
    '    GibHealth 25\n'
    '    damagefactor "Crush", 10.0\n'
    '	damagefactor "SSG", 10.0\n'
    '	Radius 31\n'
    '	Height 56\n'
    '	Mass 400\n'
    '	Speed 8\n'
    '	Health 320\n'
    '	PainChance 128\n'
    '	PainChance "Kick", 255\n'
    '	PainChance "Avoid", 90\n'
    '	PainChance "Saw", 255\n'
    '	damagefactor "GibRemoving", 0.0\n'
    '	Monster\n'
    '	Scale 0.9\n'
    '	+FLOAT +NOGRAVITY\n'
    '	SeeSound "d4caco/sight"\n'
    '	PainSound "d4caco/pain"\n'
    '	DeathSound "d4caco/death"\n'
    '	ActiveSound "d4caco/active"\n'
    '	damagefactor "TeleportRemover", 0.0\n'
    '	DamageFactor "CauseObjectsToSplash", 0.0\n'
    '	Obituary "$OB_d4caco"\n'
    '	HitObituary "$OB_d4cacoHIT"\n'
    '	DropItem "DemonStrengthRune" 5\n'
    'damagefactor "Blood", 0.0 damagefactor "BlueBlood", 0.0 damagefactor "GreenBlood", 0.0\n'
    '	States\n'
    '	{\n'
    '	\n'
    '	Pain.Avoid: \n'
    '	  TNT1 A 0\n'
    '	  TNT1 A 0 A_Jump(255, "AvoidLeft", "AvoidRight")\n'
    '	  Goto AvoidLeft\n'
    '	  \n'
    '	  AvoidLeft:\n'
    '	    HED4 A 1 A_FaceTarget\n'
    '	    TNT1 A 0 ThrustThing(angle*256/360+192, 15, 0, 0)\n'
    '        HED4 A 5 A_FaceTarget\n'
    '        Goto Missile\n'
    '	AvoidRight:\n'
    '	    HED4 A 1 A_FaceTarget\n'
    '	    TNT1 A 0 ThrustThing(angle*256/360+64, 15, 0, 0)\n'
    '        HED4 A 5 A_FaceTarget\n'
    '        Goto Missile\n'
    '	\n'
    '	ReplaceVanilla:\n'
    '		TNT1 A 0 A_ChangeFlag("THRUACTORS", 1)\n'
    '		TNT1 A 0 A_ChangeFlag("COUNTKILL", 0)\n'
    '		TNT1 A 0 A_SpawnItemEx ("Vanillad4cacoDemon",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION | SXF_TRANSFERAMBUSHFLAG ,0)\n'
    '		Stop\n'
    '    Spawn:\n'
    '		HED4 A 0\n'
    '		TNT1 A 0 ACS_ExecuteAlways(796, 0, 0, 0, 0)//Check if Vanilla Mode is activated\n'
    '		HED4 A 1 A_Look\n'
    '		TNT1 A 0 A_JumpIfInventory("Curbstomp_Marine", 1, "FatalityMarine")\n'
    '		Goto Stand\n'
    '		\n'
    '	Stand:	\n'
    '		HED4 A 10 A_Look\n'
    '		Loop\n'
    '		\n'
    '	SearchPlayer:\n'
    '	    TNT1 A 0 A_ClearTarget\n'
    '		TNT1 A 0 A_TakeInventory("EnemyMemory", 40)\n'
    '		HED4 A 10 A_Look\n'
    '		TNT1 A 0 A_SetAngle(angle - 30)\n'
    '		HED4 A 10 A_Look\n'
    '		TNT1 A 0 A_SetAngle(angle + 30)\n'
    '		HED4 A 10 A_Look\n'
    '		TNT1 A 0 A_SetAngle(angle + 30)\n'
    '		HED4 A 10 A_Look\n'
    '		TNT1 A 0 A_SetAngle(angle - 30)\n'
    '		\n'
    '		\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		\n'
    '		TNT1 A 0 A_Jump(128, "SearchPlayer")\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		HED4 A 0 A_Wander\n'
    '		HED4 A 2 A_Look\n'
    '		Goto SearchPlayer\n'
    '		\n'
    '	See:\n'
    '		TNT1 A 0 A_CheckSight("See2")\n'
    '		HED4 A 2 A_Chase\n'
    '		HED4 AA 2 A_Chase ("","")\n'
    '		TNT1 A 0 A_JumpIfCloser(99, "Melee")\n'
    '		TNT1 A 0 A_TakeInventory("EnemyMemory", 1)\n'
    '		Loop\n'
    '		\n'
    '	See2:\n'
    '		HED4 AAAAAA 2 A_Chase\n'
    '		TNT1 A 0 A_JumpIfInventory("EnemyMemory", 25, "SearchPlayer")\n'
    '		TNT1 A 0 A_GiveInventory("EnemyMemory", 1)\n'
    '		HED4 AAAAAA 2 A_Chase\n'
    '		TNT1 A 0 A_JumpIfInventory("EnemyMemory", 25, "SearchPlayer")\n'
    '		TNT1 A 0 A_GiveInventory("EnemyMemory", 1)\n'
    '		TNT1 A 0 A_JumpIfInTargetInventory("IsInvisible", 1, "SearchPlayer")\n'
    '		Goto See	\n'
    '		\n'
    '		\n'
    '	Missile:\n'
    '	    TNT1 A 0 A_TakeInventory("EnemyMemory", 30)\n'
    '	    TNT1 A 0 A_JumpIfCloser(140, "Melee")\n'
    '        TNT1 A 0 A_Jump (198, 3)\n'
    '        Goto Avoid\n'
    '        TNT1 AAA 0\n'
    '		HED4 B 4 A_FaceTarget\n'
    '		HED4 C 4 A_FaceTarget\n'
    '		HED4 D 4 BRIGHT A_CustomMissile("d4cacodemonBall", 34, 0, 0, 0)\n'
    '		Goto See\n'
    '		\n'
    '	Melee:	\n'
    '		HED4 B 4 A_Facetarget\n'
    '		HED4 C 4 A_Recoil(-5)\n'
    '		TNT1 A 0 A_CustomMissile("cacodemonBite", 34, 0, 0, 0)\n'
    '		//TNT1 A 0 A_JumpIfInventory("Fatality_Marine", 1, "FatalityMarine")\n'
    '		HED4 D 4\n'
    '		TNT1 A 0 A_JumpIfInventory("Curbstomp_Marine", 1, "FatalityMarine")\n'
    '	Goto See\n'
    '	\n'
    '	Pain:\n'
    '		HED4 E 3\n'
    '		HED4 E 3 A_Pain\n'
    '		HED4 F 6\n'
    '		Goto See\n'
    '\n'
    '	Pain.Kick:\n'
    '	Pain.HeavyImpact:\n'
    '        TNT1 A 0 A_FaceTarget\n'
    '		HED4 E 6 A_Recoil(5)\n'
    '		HED4 E 6 A_Pain\n'
    '		HED4 F 10\n'
    '		Goto See\n'
    '\n'
    'Pain:\n'
    '		HED4 E 3\n'
    '		HED4 E 3 A_Pain\n'
    '        TNT1 A 0 A_Jump (128, 3)\n'
    '        Goto Avoid\n'
    '        TNT1 AAA 0\n'
    '		HED4 F 6\n'
    '        Goto See\n'
    '\n'
    '\n'
    '	Avoid:\n'
    '         NULL A 0 A_FaceTarget\n'
    '         HED4 A 6 A_FastChase\n'
    '         NULL A 0 A_FaceTarget\n'
    '         HED4 A 6 A_FastChase\n'
    '         NULL A 0 A_FaceTarget\n'
    '         HED4 A 6 A_FastChase\n'
    '         NULL A 0 A_FaceTarget\n'
    '         HED4 A 6 A_FastChase\n'
    '\n'
    '		HED4 B 5 A_FaceTarget\n'
    '		HED4 C 5 A_FaceTarget\n'
    '		HED4 D 5 BRIGHT A_HeadAttack\n'
    '		 Goto See\n'
    '\n'
    '    Death.Shotgun:\n'
    '	TNT1 A 0\n'
    '	TNT1 A 0 A_JumpIfCloser(500, "Death.Brutal")\n'
    '	Goto Death\n'
    '	\n'
    '	Death:\n'
    '		HED4 G 3 A_Scream\n'
    '		HED4 H 3 A_NoBlocking\n'
    '        TNT1 AAAA 0 A_CustomMissile ("Blue_FlyingBlood", 15, 0, random (0, 360), 2, random (0, 160))\n'
    '        HED4 IJK 4\n'
    '		TNT1 A 0 A_SpawnItem ("BlueBloodPool", 1)\n'
    '		HED4 L -1\n'
    '        TNT1 A 0 A_SpawnItem ("Deadd4cacoDemon1", 1)\n'
    '        Stop\n'
    '	\n'
    '	Deathlulz:\n'
    '		H3D2 A 6 A_Scream\n'
    '		H3D2 B 6 A_NoBlocking\n'
    '		H3D2 CD 6\n'
    '        TNT1 AAAA 0 A_CustomMissile ("Blue_FlyingBlood", 15, 0, random (0, 360), 2, random (0, 160))\n'
    '        H3D2 E 6\n'
    '		TNT1 A 0 A_SpawnItem ("BlueBloodPool", 1)\n'
    '		H3D2 F -1\n'
    '        TNT1 A 0 A_SpawnItem ("Deadd4cacoDemon1", 1)\n'
    '        Stop\n'
    '		\n'
    '	   Death.Fatality:\n'
    '        TNT1 A 0 A_NoBlocking\n'
    '		TNT1 A 0 A_Pain\n'
    '		TNT1 A 0 A_JumpIfIntargetInventory("FistsSelected", 1, 1)\n'
    '		Goto Death.SSG\n'
    '		TNT1 A 0 A_GiveToTarget("GoFatality", 1)\n'
    '        TNT1 A 0 A_Jump(128,5)\n'
    '        TNT1 A 0 A_GiveToTarget("d4cacoDemonFatality", 1)\n'
    '        Stop\n'
    '        TNT1 AAAAAAA 0\n'
    '        TNT1 A 0 A_GiveToTarget("d4cacoDemonFatality2", 1)\n'
    '        TNT1 A 1\n'
    '        TNT1 A 0\n'
    '		Stop\n'
    '		\n'
    '	Death.saw:\n'
    '        TNT1 A 0 A_SetFloorClip\n'
    '        TNT1 A 0 A_SetFloorClip\n'
    '		TNT1 A 0 A_Scream\n'
    '		TNT1 O 0 A_NoBlocking\n'
    '		TNT1 AAAAA 0 A_CustomMissile ("Blue_FlyingBlood", 47, 0, random (0, 360), 2, random (30, 150))\n'
    '	TNT1 A 0 A_CustomMissile ("d4cacoXDeath3", 50, 0, random (0, 360), 2, random (0, 160))\n'
    '	TNT1 A 0 A_CustomMissile ("d4cacoXDeath4", 50, 0, random (0, 360), 2, random (0, 160))\n'
    '	TNT1 A 0 A_CustomMissile ("d4cacoXDeath6", 50, 0, random (0, 360), 2, random (0, 160))\n'
    '	TNT1 AAA 0 A_CustomMissile ("d4cacoXDeath7", 50, 0, random (0, 360), 2, random (0, 160))\n'
    '		HD4C AB 9\n'
    '		TNT1 A 0 A_SpawnItem ("BlueBloodPool", 1)\n'
    '		HD4C C -1\n'
    '        TNT1 A 0 A_SpawnItem ("Sawedd4cacodemon", 1)\n'
    '        Stop		\n'
    '		\n'
    '	Death.cut:\n'
    '		TNT1 O 0 A_Jump(180, 2)\n'
    '		Goto Death\n'
    '        TNT1 A 0 A_SetFloorClip\n'
    '        TNT1 A 0 A_SetFloorClip\n'
    '		TNT1 A 0 A_Scream\n'
    '		TNT1 O 0 A_NoBlocking\n'
    '		TNT1 A 0 A_CustomMissile ("Ripd4caco", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '        CD43 A 6\n'
    '		TNT1 A 0 A_SpawnItem ("BlueBloodPool", 1)\n'
    '		CD43 B -1\n'
    '        TNT1 A 0 A_SpawnItem ("DeadHalfd4cacoDemon", 1)\n'
    '        Stop	\n'
    '	Death.cutless:\n'
    '		TNT1 O 0 A_Jump(64, 2)\n'
    '		Goto Death.Brutal\n'
    '        TNT1 A 0 A_SetFloorClip\n'
    '        TNT1 A 0 A_SetFloorClip\n'
    '		TNT1 A 0 A_Scream\n'
    '		TNT1 O 0 A_NoBlocking\n'
    '		TNT1 A 0 A_CustomMissile ("Ripd4caco", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '        CD43 A 6\n'
    '		TNT1 A 0 A_SpawnItem ("BlueBloodPool", 1)\n'
    '		CD43 B -1\n'
    '        TNT1 A 0 A_SpawnItem ("DeadHalfd4cacoDemon", 1)\n'
    '        Stop\n'
    '	\n'
    '	Death.Brutal:\n'
    '		TNT1 A 0 A_SetFloorClip\n'
    '		TNT1 A 0 A_SetFloorClip\n'
    '		TNT1 A 0 A_Scream\n'
    '		TNT1 O 0 A_NoBlocking\n'
    '		TNT1 AAAAA 0 A_CustomMissile ("Blue_FlyingBlood", 47, 0, random (0, 360), 2, random (30, 150))\n'
    '		TNT1 A 0 A_CustomMissile ("d4cacoXDeath3", 50, 0, random (0, 360), 2, random (0, 160))\n'
    '		TNT1 A 0 A_CustomMissile ("d4cacoXDeath4", 50, 0, random (0, 360), 2, random (0, 160))\n'
    '		TNT1 A 0 A_CustomMissile ("d4cacoXDeath6", 50, 0, random (0, 360), 2, random (0, 160))\n'
    '		TNT1 AAA 0 A_CustomMissile ("d4cacoXDeath7", 50, 0, random (0, 360), 2, random (0, 160))\n'
    '		CD41 A 0\n'
    '		TNT1 A 0 A_SpawnItem("Brutalizedd4cacodemon1")\n'
    '		Stop\n'
    '		\n'
    '		\n'
    '	Death.SuperPlasma:\n'
    '    Death.Plasma: Death.Plasma2:\n'
    '        TNT1 A 0\n'
    '        TNT1 A 0 A_Scream\n'
    '        TNT1 A 0 A_NoBlocking\n'
    '		EXPL AAAAA 0 A_CustomMissile ("ExplosionSmoke", 32, 0, random (0, 360), 2, random (0, 360))\n'
    '        CACB A 10 A_CustomMissile ("PlasmaSmoke", 24, 0, random (0, 180), 2, random (0, 180))\n'
    '        CACB A 0 A_CustomMissile ("XDeathBurnedBlueMeat1", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '        CACB A 0 A_CustomMissile ("XDeathBurnedBlueMeat2", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '        CACB BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB 8 A_CustomMissile ("PlasmaSmoke", 16, 0, random (0, 180), 2, random (0, 180))\n'
    '        CACB B -1\n'
    '        Stop\n'
    '		\n'
    '        Death.fire:\n'
    '        TNT1 A 0\n'
    '        TNT1 A 0 A_Scream\n'
    '        TNT1 A 0 A_NoBlocking\n'
    '		TNT1 A 0 A_Playsound("props/redfire")\n'
    '        TNT1 A 0 A_CustomMissile ("PlasmaSmoke", 24, 0, random (0, 180), 2, random (0, 180))\n'
    '        TNT1 A 0 A_SpawnItem("BurningcacoDemon")\n'
    '        Stop\n'
    '		\n'
    '	Death.ExplosiveImpact:\n'
    '	Death.Explosives:\n'
    '	XDeath:\n'
    '		TNT1 A 0 A_XScream\n'
    '		TNT1 A 0 A_NoBlocking\n'
    '        TNT1 A 0 A_CustomMissile ("d4cacoXDeath", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '        Stop\n'
    '		\n'
    '	Death.SSG:\n'
    '	TNT1 A 0\n'
    '	CD43 A 1 A_Pain\n'
    '	TNT1 A 0 A_FaceTarget\n'
    '	TNT1 A 0 A_Scream\n'
    '	TNT1 AAAAAAAAAAAAA 0 A_CustomMissile ("Blue_FlyingBlood", 50, 0, random (160, 200), 2, random (0, 50))\n'
    '	TNT1 A 0 A_CustomMissile ("d4cacoXDeath2", 50, 0, random (160, 200), 2, random (20, 40))\n'
    '	TNT1 A 0 A_CustomMissile ("d4cacoXDeath1", 50, 0, random (160, 200), 2, random (20, 40))\n'
    '	TNT1 A 0 A_CustomMissile ("d4cacoXDeath3", 50, 0, random (160, 200), 2, random (20, 40))\n'
    '	TNT1 A 0 A_CustomMissile ("d4cacoXDeath4", 50, 0, random (160, 200), 2, random (20, 40))\n'
    '	TNT1 AA 0 A_CustomMissile ("d4cacoXDeath5", 50, 0, random (160, 200), 2, random (20, 40))\n'
    '	TNT1 AAAA 0 A_CustomMissile ("d4cacoXDeath6", 50, 0, random (160, 200), 2, random (20, 40))\n'
    '	TNT1 AAAAAA 0 A_CustomMissile ("d4cacoXDeath7", 50, 0, random (160, 200), 2, random (20, 40))\n'
    '	CD43 A 6 A_NoBlocking\n'
    '	TNT1 A 0 A_SpawnItem ("BlueBloodPool", 1)\n'
    '	CD43 B -1\n'
    '	Stop	\n'
    '	\n'
    '	Raise:\n'
    '		TNT1 A 2 A_CustomMissile ("RealFlameTrailsSmall", 6, 0, random (0, 360), 2, random (70, 110))\n'
    '		TNT1 A 0 A_SpawnItem("PentagramSpawner", 0, 60)\n'
    '		TNT1 A 2 A_CustomMissile ("RealFlameTrailsSmall", 6, 0, random (0, 360), 2, random (70, 110))\n'
    '		TNT1 A 0 A_SpawnItem("PentagramSpawner", 0, 60)\n'
    '		TNT1 A 0 A_SpawnItem("TeleportFog")\n'
    '		TNT1 A 0 A_NoBlocking\n'
    '        TNT1 A 0 A_SpawnItem ("d4cacoDemon_")\n'
    '		Stop\n'
    '    Crush:\n'
    '        TNT1 A 0 A_PlaySound("misc/xdeath4")\n'
    '        CRS2 B 5\n'
    '		TNT1 A 0 A_SpawnItem ("BlueBloodPool", 1)\n'
    '        CRS2 B -1\n'
    '        Stop\n'
    '\n'
    '    Pain.KillMe:\n'
    '    Pain.Taunt:\n'
    '        TNT1 A 0\n'
    '        Goto Missile\n'
    '    Death.KillMe:\n'
    '    Death.Taunt:\n'
    '	    TNT1 A 0 A_ChangeFlag("SOLID", 0)\n'
    '        TNT1 A 0 A_SpawnItem("d4cacoDemon")\n'
    '        Stop\n'
    '		\n'
    '\n'
    'FatalityMarine:\n'
    '        TNT1 A 0 A_SetInvulnerable\n'
    '       CFPF A 1\n'
    '	   TNT1 A 0 A_PlaySound("DSFDTHE")\n'
    '       CFPF A 10\n'
    '		 TNT1 AAA 0 A_CustomMissile ("XDeath1", 1, 0, random (0, 360), 2, random (0, 160))\n'
    '         TNT1 AA 0 A_CustomMissile ("BrainBlood", 25, 0, random (0, 360), 2, random (0, 160))\n'
    '	  \n'
    '	  CFPF B 9\n'
    '		 TNT1 AAA 0 A_CustomMissile ("XDeath1", 1, 0, random (0, 360), 2, random (0, 160))\n'
    '         TNT1 AA 0 A_CustomMissile ("BrainBlood", 25, 0, random (0, 360), 2, random (0, 160))\n'
    '	  CFPF C 9\n'
    '	  \n'
    '	  \n'
    '	  	  CFPF B 9\n'
    '		 TNT1 AAA 0 A_CustomMissile ("XDeath1", 1, 0, random (0, 360), 2, random (0, 160))\n'
    '         TNT1 AA 0 A_CustomMissile ("BrainBlood", 25, 0, random (0, 360), 2, random (0, 160))\n'
    '	  CFPF C 9\n'
    '	  \n'
    '	  	  CFPF B 9\n'
    '		 TNT1 AAA 0 A_CustomMissile ("XDeath1", 1, 0, random (0, 360), 2, random (0, 160))\n'
    '         TNT1 AA 0 A_CustomMissile ("BrainBlood", 25, 0, random (0, 360), 2, random (0, 160))\n'
    '	  CFPF C 9\n'
    '	  \n'
    '	  CFPF B 9\n'
    '	   TNT1 AAA 0 A_CustomMissile ("XDeath1", 1, 0, random (0, 360), 2, random (0, 160))\n'
    '      TNT1 AA 0 A_CustomMissile ("BrainBlood", 25, 0, random (0, 360), 2, random (0, 160))\n'
    '	  CFPF C 9\n'
    '       TNT1 A 0 A_TakeInventory("Curbstomp_Marine",1)\n'
    'TNT1 A 0 A_SpawnItem ("PlayerJustGotCutInHalf", 1)\n'
    'TNT1 A 0 A_UnSetInvulnerable\n'
    'Goto See\n'
    '\n'
    'Death.Ice:\n'
    '	Death.Freeze:\n'
    '	Death.Frost:\n'
    '	TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
    '	TNT1 A 0 A_ChangeFlag("SOLID", 0)\n'
    '	TNT1 A 0 A_SpawnItem("Frozend4cacodemon")\n'
    '	Stop\n'
    '	\n'
    'Death.Massacre:\n'
    '	Goto Death	\n'
    '		\n'
    '	}\n'
    '}\n'
    '\n'
    'ACTOR d4cacodemonBall_ //Replaces d4cacodemonBall\n'
    '{\n'
    '	Game Doom\n'
    '	SpawnID 126\n'
    '	Radius 6\n'
    '	Height 6\n'
    '	Speed 14\n'
    '	FastSpeed 18\n'
    '	Damage (random(20,25))\n'
    '	Projectile \n'
    '	+RANDOMIZE\n'
    '	+THRUGHOST\n'
    '	RenderStyle Add\n'
    '	Alpha 1\n'
    '    damagetype Plasma\n'
    '	SeeSound "d4caco/attack"\n'
    '	DeathSound "d4caco/shotx"\n'
    '	Decal "Scorch"\n'
    '	States\n'
    '	{\n'
    '	Spawn:\n'
    '		BAL2 AA 2 BRIGHT A_SpawnItem("RedFlareMedium",0,0)\n'
    '		BAL2 BB 2 BRIGHT A_SpawnItem("BlueFlareMedium",0,0)\n'
    '		Loop\n'
    '	Death:\n'
    '        TNT1 AAAA 0 A_CustomMissile ("ShoqueAzul", 3, 0, random (0, 360), 2, random (0, 360))\n'
    '		BAL2 CDE 6 BRIGHT\n'
    '		Stop\n'
    '	}\n'
    '}\n'
    '\n'
    '/*ACTOR Shoque\n'
    '{\n'
    '	Game Doom\n'
    '	Radius 1\n'
    '	Height 1\n'
    '	Speed 2\n'
    '	Damage 0 \n'
    '    +NOBLOCKMAP\n'
    '    +NOTELEPORT\n'
    '    +DONTSPLASH\n'
    '	+MISSILE\n'
    '	+FORCEXYBILLBOARD\n'
    '    +CLIENTSIDEONLY\n'
    '	RenderStyle Add\n'
    '    Scale 0.7\n'
    '	Gravity 0\n'
    '	Alpha 0.5\n'
    '	States\n'
    '	{\n'
    '    Spawn:\n'
    '        TNT1 A 1\n'
    '        SHOQ ABCDEFG 1 BRIGHT\n'
    '        Stop\n'
    '	}\n'
    '}\n'
    '\n'
    '\n'
    'ACTOR ShoqueAzul\n'
    '{\n'
    '	Game Doom\n'
    '	Radius 1\n'
    '	Height 1\n'
    '	Speed 3\n'
    '	Damage 0 \n'
    '    +NOBLOCKMAP\n'
    '    +NOTELEPORT\n'
    '    +DONTSPLASH\n'
    '	+MISSILE\n'
    '	+FORCEXYBILLBOARD\n'
    '    +CLIENTSIDEONLY\n'
    '	RenderStyle Add\n'
    '    Scale 1.0\n'
    '	Gravity 0\n'
    '	States\n'
    '	{\n'
    '    Spawn:\n'
    '        TNT1 A 1\n'
    '        SH1K ABCDEFG 2 BRIGHT\n'
    '        Stop\n'
    '	}\n'
    '}*/\n'
    '\n'
    '\n'
    'ACTOR d4cacoXDeath1\n'
    '{\n'
    'translation "168:191=192:207"\n'
    '    Radius 8\n'
    '    Height 8\n'
    '    Speed 9\n'
    '    Scale 1.1\n'
    '	Mass 1\n'
    '    +NOBLOCKMAP\n'
    '	+MISSILE\n'
    '    +NOTELEPORT\n'
    '    +MOVEWITHSECTOR\n'
    '    +CLIENTSIDEONLY\n'
    '    +RIPPER\n'
    '    +BLOODLESSIMPACT \n'
    'Decal BlueBloodSplat\n'
    'damagetype Blood\n'
    '    SeeSound "misc/xdeath4"\n'
    '    DeathSound "misc/xdeath1"\n'
    '	Decal BlueBloodSplat\n'
    '    States\n'
    '    {\n'
    '    Spawn:\n'
    '        TNT1 AAAAAAAAAA 0 A_CustomMissile ("Blue_FlyingBloodTrail", 0, 0, random (0, 180), 2, random (0, 180))\n'
    '	    TNT1 A 0 A_JumpIf(waterlevel > 1, "Splash")\n'
    '        CP41 A 4 A_CustomMissile("BlueBloodTrails",0,0,180,2)\n'
    '        Loop\n'
    '    Death:\n'
    '        TNT1 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 0 A_CustomMissile ("Blue_FlyingBloodTrail", 0, 0, random (0, 180), 2, random (0, 180))\n'
    '        TNT1 A 0 A_SpawnItem("Blue_BloodSpot",0,0,0,1)\n'
    '        CP41 B 2002\n'
    '        Stop\n'
    '     Splash:\n'
    '        TNT1 A 0\n'
    '        Stop\n'
    '    }\n'
    '}\n'
    '\n'
    '\n'
    'ACTOR d4cacoXDeath2: d4cacoXDeath1\n'
    '{\n'
    '    SeeSound "misc/xdeath3"\n'
    '    DeathSound "misc/xdeath1"\n'
    '    States\n'
    '    {\n'
    '    Spawn:\n'
    '        TNT1 AAAAAAAAAA 0 A_CustomMissile ("Blue_FlyingBloodTrail", 0, 0, random (0, 180), 2, random (0, 180))\n'
    '	    TNT1 A 0 A_JumpIf(waterlevel > 1, "Splash")\n'
    '        CP41 A 4 A_CustomMissile("BlueBloodTrails",0,0,180,2)\n'
    '        Loop\n'
    '    Death:\n'
    '        TNT1 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 0 A_CustomMissile ("Blue_FlyingBloodTrail", 0, 0, random (0, 180), 2, random (0, 180))\n'
    '        TNT1 A 0 A_SpawnItem("Blue_BloodSpot",0,0,0,1)\n'
    '        CP41 C 2002\n'
    '        Stop\n'
    '        TNT1 A 1\n'
    '    }\n'
    '}\n'
    '\n'
    '\n'
    'ACTOR d4cacoXDeath3: d4cacoXDeath1\n'
    '{\n'
    '    SeeSound "misc/xdeath3"\n'
    '    DeathSound "misc/xdeath1"\n'
    '	Scale 0.9\n'
    '    States\n'
    '    {\n'
    '    Spawn:\n'
    '        TNT1 AAAAAAAAAA 0 A_CustomMissile ("Blue_FlyingBloodTrail", 0, 0, random (0, 180), 2, random (0, 180))\n'
    '	    TNT1 A 0 A_JumpIf(waterlevel > 1, "Splash")\n'
    '        CP42 A 4 A_CustomMissile("BlueBloodTrails",0,0,180,2)\n'
    '        Loop\n'
    '    Death:\n'
    '        TNT1 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 0 A_CustomMissile ("Blue_FlyingBloodTrail", 0, 0, random (0, 180), 2, random (0, 180))\n'
    '        TNT1 A 0 A_SpawnItem("Blue_BloodSpot",0,0,0,1)\n'
    '        CP42 B 2002\n'
    '        Stop\n'
    '        TNT1 A 1\n'
    '    }\n'
    '}\n'
    '\n'
    'ACTOR d4cacoXDeath4: d4cacoXDeath1\n'
    '{\n'
    '    SeeSound "misc/xdeath3"\n'
    '    DeathSound "misc/xdeath1"\n'
    '	Scale 0.9\n'
    '    States\n'
    '    {\n'
    '    Spawn:\n'
    '        TNT1 AAAAAAAAAA 0 A_CustomMissile ("Blue_FlyingBloodTrail", 0, 0, random (0, 180), 2, random (0, 180))\n'
    '	    TNT1 A 0 A_JumpIf(waterlevel > 1, "Splash")\n'
    '        CP42 A 4 A_CustomMissile("BlueBloodTrails",0,0,180,2)\n'
    '        Loop\n'
    '    Death:\n'
    '        TNT1 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 0 A_CustomMissile ("Blue_FlyingBloodTrail", 0, 0, random (0, 180), 2, random (0, 180))\n'
    '        TNT1 A 0 A_SpawnItem("Blue_BloodSpot",0,0,0,1)\n'
    '        CP42 C 2002\n'
    '        Stop\n'
    '        TNT1 A 1\n'
    '    }\n'
    '}\n'
    '\n'
    'ACTOR d4cacoXDeath5: d4cacoXDeath1\n'
    '{\n'
    '    SeeSound "misc/xdeath3"\n'
    '    DeathSound "misc/xdeath1"\n'
    '    States\n'
    '    {\n'
    '    Spawn:\n'
    '        TNT1 AAAAAAAAAA 0 A_CustomMissile ("Blue_FlyingBloodTrail", 0, 0, random (0, 180), 2, random (0, 180))\n'
    '	    TNT1 A 0 A_JumpIf(waterlevel > 1, "Splash")\n'
    '        CP43 A 4 A_CustomMissile("BlueBloodTrails",0,0,180,2)\n'
    '        Loop\n'
    '    Death:\n'
    '        TNT1 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 0 A_CustomMissile ("Blue_FlyingBloodTrail", 0, 0, random (0, 180), 2, random (0, 180))\n'
    '        TNT1 A 0 A_SpawnItem("Blue_BloodSpot",0,0,0,1)\n'
    '        CP43 B 2002\n'
    '        Stop\n'
    '        TNT1 A 1\n'
    '    }\n'
    '}\n'
    '\n'
    'ACTOR d4cacoXDeath6: d4cacoXDeath1\n'
    '{\n'
    'Scale 1.3\n'
    'Gravity 0.6\n'
    '    States\n'
    '    {\n'
    '    Spawn:\n'
    '        TNT1 AAAAAA 0 A_CustomMissile ("Blue_FlyingBloodTrail", 0, 0, random (0, 180), 2, random (0, 180))\n'
    '	    TNT1 A 0 A_JumpIf(waterlevel > 1, "Splash")\n'
    '        CP44 ABCDEFG 4 A_CustomMissile("BlueBloodTrails",0,0,180,2)\n'
    '        Loop\n'
    '    Death:\n'
    '        TNT1 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 0 A_CustomMissile ("Blue_FlyingBloodTrail", 0, 0, random (0, 180), 2, random (0, 180))\n'
    '        TNT1 A 0 A_SpawnItem("Blue_BloodSpot",0,0,0,1)\n'
    '        CP44 H 2002\n'
    '        Stop\n'
    '    }\n'
    '}\n'
    '\n'
    'ACTOR d4cacoXDeath7: d4cacoXDeath1\n'
    '{\n'
    '    SeeSound "misc/xdeath4"\n'
    '    DeathSound "misc/xdeath1"\n'
    '	Decal BlueBloodSplat\n'
    'Scale 0.9\n'
    'Speed 16\n'
    '    States\n'
    '    {\n'
    '    Spawn:\n'
    '	    TNT1 A 0\n'
    '		TNT1 A 0 A_Jump(128, "Spawn2")\n'
    '	    TNT1 A 0 A_JumpIf(waterlevel > 1, "Splash")\n'
    '        CP45 C 4 A_CustomMissile("BlueBloodTrails",0,0,180,2)\n'
    '        Loop\n'
    '	Spawn2:\n'
    '	    TNT1 A 0 A_JumpIf(waterlevel > 1, "Splash")\n'
    '        CP45 D 4 A_CustomMissile("BlueBloodTrails",0,0,180,2)\n'
    '        Loop	\n'
    '    Death:\n'
    '	TNT1 A 0\n'
    '		TNT1 A 0 A_Jump(128, "Death2")\n'
    '       TNT1 A 0 A_SpawnItem("Blue_BloodSpot",0,0,0,1)\n'
    '        CP45 A 2002\n'
    '        Stop\n'
    '	  Death2:\n'
    '	TNT1 A 0\n'
    '       TNT1 A 0 A_SpawnItem("Blue_BloodSpot",0,0,0,1)\n'
    '        CP45 B 2002\n'
    '        Stop	\n'
    '    }\n'
    '}\n'
    '\n'
    'ACTOR Halfd4cacodemon\n'
    '{\n'
    '    Radius 8\n'
    '    Height 8\n'
    '	Speed 12\n'
    '	Mass 1\n'
    '    +NOBLOCKMAP\n'
    '	+MISSILE\n'
    '    +NOTELEPORT\n'
    '    +DONTSPLASH\n'
    '	+DOOMBOUNCE\n'
    '    +MOVEWITHSECTOR\n'
    '    +CLIENTSIDEONLY\n'
    '	SeeSound "misc/xdeath4"\n'
    '    DeathSound "misc/xdeath3"\n'
    '	Decal BlueBloodSplat\n'
    '	BounceFactor 0.5\n'
    '	Scale 0.9\n'
    '    States\n'
    '    {\n'
    '    Spawn:\n'
    '	    TNT1 A 0 A_JumpIf(waterlevel > 1, "Death")\n'
    '		C4CX ABCDEFGH 2 A_CustomMissile("Blue_FlyingBlood", 15, 0, random (0, 360), 2, random (0, 160))\n'
    '		Loop\n'
    '	Death:\n'
    '	    C4CX I -1\n'
    '		Stop\n'
    '    }\n'
    '}\n'
    '\n'
    '\n'
    'Actor Deadd4cacoDemon1: CurbstompedMarine\n'
    '{\n'
    '    Radius 12\n'
    '    Height 24\n'
    '    Scale 0.9\n'
    '    +SHOOTABLE\n'
    '    -SOLID\n'
    '    +NOTELEPORT\n'
    '    +MOVEWITHSECTOR\n'
    '    +CORPSE\n'
    '  bloodtype "Blue_Blood"\n'
    '  bloodcolor darkblue\n'
    '    Mass 1000\n'
    '    Health 200\n'
    '    damagefactor "Blood", 0.0\n'
    '    damagefactor "Trample", 0.0\n'
    'States\n'
    '    {\n'
    '    Spawn:\n'
    '		H3D2 E -1\n'
    '        Stop\n'
    '	Raise:\n'
    '		TNT1 A 2 A_CustomMissile ("RealFlameTrailsSmall", 6, 0, random (0, 360), 2, random (70, 110))\n'
    '		TNT1 A 0 A_SpawnItem("PentagramSpawner", 0, 60)\n'
    '		TNT1 A 2 A_CustomMissile ("RealFlameTrailsSmall", 6, 0, random (0, 360), 2, random (70, 110))\n'
    '		TNT1 A 0 A_SpawnItem("PentagramSpawner", 0, 60)\n'
    '		TNT1 A 0 A_SpawnItem("TeleportFog")\n'
    '		TNT1 A 0 A_NoBlocking\n'
    '        TNT1 A 0 A_SpawnItem ("d4cacoDemon")\n'
    '		Stop\n'
    '	Death.ExplosiveImpact:\n'
    '    Death:\n'
    '  	     TNT1 AA 0 A_CustomMissile ("d4cacoXDeath1", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '  	     TNT1 AAAAA 0 A_CustomMissile ("d4cacoXDeath4", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '  	     TNT1 AAAAAAAAAAA 0 A_CustomMissile ("d4cacoXDeath7", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '         Stop\n'
    '	Death.cut:\n'
    '		TNT1 O 0 A_Jump(180, 2)\n'
    '		Goto Death\n'
    '        TNT1 A 0 A_SetFloorClip\n'
    '        TNT1 A 0 A_SetFloorClip\n'
    '		TNT1 A 0 A_Scream\n'
    '		TNT1 O 0 A_NoBlocking\n'
    '		TNT1 A 0 A_CustomMissile ("Ripd4caco", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '        CACL A 1\n'
    '        TNT1 A 0 A_SpawnItem ("DeadHalfd4cacoDemon", 3)\n'
    '        Stop\n'
    '	Death.cutless:\n'
    '		TNT1 O 0 A_Jump(180, 2)\n'
    '		Goto Death\n'
    '        TNT1 A 0 A_SetFloorClip\n'
    '        TNT1 A 0 A_SetFloorClip\n'
    '		TNT1 A 0 A_Scream\n'
    '		TNT1 O 0 A_NoBlocking\n'
    '		TNT1 A 0 A_CustomMissile ("Ripd4caco", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '        CACL A 1\n'
    '        TNT1 A 0 A_SpawnItem ("DeadHalfd4cacoDemon", 3)\n'
    '        Stop\n'
    '    Death.Plasma: Death.Plasma2:\n'
    '        TNT1 O 0 A_Jump(220, 2)\n'
    '		Goto Death\n'
    '        TNT1 A 0\n'
    '        TNT1 A 0 A_Scream\n'
    '        TNT1 A 0 A_NoBlocking\n'
    '		EXPL AAAAA 0 A_CustomMissile ("ExplosionSmoke", 32, 0, random (0, 360), 2, random (0, 360))\n'
    '        CACB A 10 A_CustomMissile ("PlasmaSmoke", 24, 0, random (0, 180), 2, random (0, 180))\n'
    '        CACB A 0 A_CustomMissile ("XDeathBurnedBlueMeat1", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '        CACB A 0 A_CustomMissile ("XDeathBurnedBlueMeat2", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '        CACB BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB 8 A_CustomMissile ("PlasmaSmoke", 16, 0, random (0, 180), 2, random (0, 180))\n'
    '        CACB B -1\n'
    '        Stop\n'
    '	}\n'
    '}\n'
    '		\n'
    'Actor DeadHalfd4cacoDemon: Deadd4cacoDemon1\n'
    '{\n'
    'Health 200\n'
    'States\n'
    '	{\n'
    '	Spawn:\n'
    '	CACL A -1\n'
    '	Stop    \n'
    '	Death.Cut:\n'
    '	Death.Cutless:\n'
    '	Death:\n'
    '	TNT1 AAAA 0 A_CustomMissile ("d4cacoXDeath7", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '	Stop\n'
    '	}\n'
    '}\n'
    '		\n'
    '		\n'
    'Actor Sawedd4cacoDemon: Deadd4cacoDemon1\n'
    '{\n'
    'Health 200\n'
    'States\n'
    '	{\n'
    '	Spawn:\n'
    '	HD4C C -1\n'
    '	Stop    \n'
    '	Death.Cut:\n'
    '	Death.Cutless:\n'
    '	Death:\n'
    '	TNT1 AAAA 0 A_CustomMissile ("d4cacoXDeath7", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '	Stop\n'
    '	}\n'
    '}	\n'
    '		\n'
    'ACTOR d4cacoXDeath\n'
    '{\n'
    '    Radius 1\n'
    '    Height 1\n'
    '    Scale 0.8\n'
    '	Speed 0\n'
    '	Mass 1\n'
    '	Decal BloodSuper\n'
    '	BounceFactor 0.5\n'
    '	+DOOMBOUNCE\n'
    '	+MISSILE\n'
    '    +NOBLOCKMAP\n'
    '    +NOTELEPORT\n'
    '    +MOVEWITHSECTOR\n'
    '    +NOGRAVITY\n'
    '    +NOCLIP\n'
    '    +DONTSPLASH\n'
    '    States\n'
    '    {\n'
    '    Spawn:\n'
    '        TNT1 AAAAA 0 A_CustomMissile ("BlueSuperGoreSpawner", 10, 0, random (0, 360), 2, random (0, 180))\n'
    '        TNT1 AAAAAAAAAA 0 A_CustomMissile ("BlueSuperGoreSpawner", 0, 0, random (0, 180), 2, random (0, 180))\n'
    '		 TNT1 A 0 A_CustomMissile ("d4cacoXDeath1", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '		 TNT1 A 0 A_CustomMissile ("d4cacoXDeath2", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '		 TNT1 A 0 A_CustomMissile ("d4cacoXDeath3", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '		 TNT1 A 0 A_CustomMissile ("d4cacoXDeath4", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '		 TNT1 A 0 A_CustomMissile ("d4cacoXDeath5", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '		 TNT1 AAAA 0 A_CustomMissile ("d4cacoXDeath6", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '		 TNT1 AAAAAAAAAA 0 A_CustomMissile ("d4cacoXDeath7", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '	Death:\n'
    '	    TNT1 A 0\n'
    '        Stop\n'
    '    }\n'
    '}\n'
    '\n'
    'ACTOR Ripd4caco\n'
    '{\n'
    '    Radius 1\n'
    '    Height 1\n'
    '    Scale 0.8\n'
    '	Speed 0\n'
    '	Mass 1\n'
    '	Decal BloodSuper\n'
    '	BounceFactor 0.5\n'
    '	+DOOMBOUNCE\n'
    '	+MISSILE\n'
    '    +NOBLOCKMAP\n'
    '    +NOTELEPORT\n'
    '    +MOVEWITHSECTOR\n'
    '    +NOGRAVITY\n'
    '    +NOCLIP\n'
    '    +DONTSPLASH\n'
    '    States\n'
    '    {\n'
    '    Spawn:\n'
    '         TNT1 A 0\n'
    '		 TNT1 A 0 A_CustomMissile ("Halfd4cacoDemon", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '		 TNT1 AAAA 0 A_CustomMissile ("d4cacoXDeath6", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '		 TNT1 AAAA 0 A_CustomMissile ("d4cacoXDeath7", 0, 0, random (0, 360), 2, random (0, 160))\n'
    '	Death:\n'
    '	    TNT1 A 0\n'
    '        Stop\n'
    '    }\n'
    '}\n'
    '\n'
    'ACTOR Brutalizedd4Cacodemon1\n'
    '{\n'
    '	Game Doom\n'
    '	Radius 24\n'
    '	Height 48\n'
    '	Health 50\n'
    '	damagefactor "Blood", 0.0 damagefactor "BlueBlood", 0.0 damagefactor "GreenBlood", 0.0\n'
    '    damagefactor "Avoid", 0.0\n'
    '	damagefactor "Shrapnel", 0.0\n'
    '	damagefactor "KillMe", 0.0\n'
    '	damagefactor "Cutless", 0.6\n'
    '	bloodtype "Blue_Blood"\n'
    '    bloodcolor darkblue\n'
    '	Mass 999999\n'
    '	-SOLID\n'
    '	+NOBLOODDECALS\n'
    '	+SHOOTABLE\n'
    '	+FLOORCLIP\n'
    '	+DONTSPLASH\n'
    '	+NOPAIN\n'
    '	Scale 1.0\n'
    '	States\n'
    '	{\n'
    '	Spawn:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_Jump(96, "NoSuffer")\n'
    '		TNT1 A 0 A_Jump(64, "Fall")\n'
    '		CD41 AAEEAAEEAAAAEEAAEEAA 5 A_CustomMissile ("BlueBloodTrails", 40, 0, random (0, 360), 2, random (0, 160))\n'
    '	Fall:\n'
    '		TNT1 AAAAA 0 A_NoBlocking\n'
    '		TNT1 A 0 A_Fall\n'
    '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
    '		TNT1 A 0 A_ChangeFlag("SOLID", 0)\n'
    '		CD41 ABC 6\n'
    '		CD41 C -1\n'
    '		Stop\n'
    '	Death:\n'
    '		TNT1 AAAAA 0 A_CustomMissile ("Blue_FlyingBlood", 47, 0, random (0, 360), 2, random (30, 150))\n'
    '		TNT1 A 0 A_CustomMissile ("CacoXDeath3", 40, 0, random (0, 360), 2, random (0, 160))\n'
    '		TNT1 A 0 A_CustomMissile ("CacoXDeath4", 40, 0, random (0, 360), 2, random (0, 160))\n'
    '		TNT1 A 0 A_CustomMissile ("CacoXDeath6", 40, 0, random (0, 360), 2, random (0, 160))\n'
    '		TNT1 AAA 0 A_CustomMissile ("CacoXDeath7", 40, 0, random (0, 360), 2, random (0, 160))\n'
    '		CD42 A 10\n'
    '		TNT1 A 0 A_SpawnItem("Brutalizedd4Cacodemon2")\n'
    '		Stop\n'
    '	\n'
    '	NoSuffer:\n'
    '		TNT1 AAAAA 0 A_CustomMissile ("Blue_FlyingBlood", 47, 0, random (0, 360), 2, random (30, 150))\n'
    '		TNT1 A 0 A_CustomMissile ("CacoXDeath3", 40, 0, random (0, 360), 2, random (0, 160))\n'
    '		TNT1 A 0 A_CustomMissile ("CacoXDeath4", 40, 0, random (0, 360), 2, random (0, 160))\n'
    '		TNT1 A 0 A_CustomMissile ("CacoXDeath6", 40, 0, random (0, 360), 2, random (0, 160))\n'
    '		TNT1 AAA 0 A_CustomMissile ("CacoXDeath7", 40, 0, random (0, 360), 2, random (0, 160))\n'
    '		CD42 B 6\n'
    '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
    '		TNT1 A 0 A_ChangeFlag("SOLID", 0)\n'
    '		CD42 B -1\n'
    '		Stop	\n'
    '		}\n'
    '}\n'
    '\n'
    'ACTOR Brutalizedd4Cacodemon2\n'
    '{\n'
    '	Game Doom\n'
    '	Radius 24\n'
    '	Height 48\n'
    '	Health 50\n'
    '	damagefactor "Blood", 0.0 damagefactor "BlueBlood", 0.0 damagefactor "GreenBlood", 0.0\n'
    '    damagefactor "Avoid", 0.0\n'
    '	damagefactor "Shrapnel", 0.0\n'
    '	damagefactor "KillMe", 0.0\n'
    '	damagefactor "Cutless", 0.6\n'
    '	bloodtype "Blue_Blood"\n'
    '    bloodcolor darkblue\n'
    '	Mass 999999\n'
    '	-SOLID\n'
    '	+NOBLOODDECALS\n'
    '	+SHOOTABLE\n'
    '	+FLOORCLIP\n'
    '	+DONTSPLASH\n'
    '	+NOPAIN\n'
    '	Scale 1.0\n'
    '	States\n'
    '	{\n'
    '	Spawn:\n'
    '	CD42 AEAEAEAEAEAEAEAE 5 A_CustomMissile ("BlueBloodTrails", 40, 0, random (0, 360), 2, random (0, 160))\n'
    '	TNT1 A 0 A_NoBlocking\n'
    '	TNT1 A 0 A_Fall\n'
    '	CD42 B 6\n'
    '	TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
    '	TNT1 A 0 A_ChangeFlag("SOLID", 0)\n'
    '	CD42 B -1\n'
    '	Stop\n'
    '\n'
    '	Death:\n'
    '	TNT1 AAAAA 0 A_CustomMissile ("Blue_FlyingBlood", 47, 0, random (0, 360), 2, random (30, 150))\n'
    '	TNT1 AAAA 0 A_CustomMissile ("Blue_FlyingBloodTrail", 0, 0, random (0, 360), 2, random (0, 180))\n'
    '    TNT1 AA 0 A_CustomMissile ("CacoXDeath6", 30, 0, random (0, 360), 2, random (0, 160))\n'
    '	TNT1 AAAAA 0 A_CustomMissile ("CacoXDeath7", 30, 0, random (0, 360), 2, random (0, 160))\n'
    '	TNT1 A 0 A_SpawnItem ("CrueltyBonus5Health")\n'
    '	CD43 A 10\n'
    '	CD43 B -1\n'
    '	Stop	\n'
    '	}\n'
    '}\n'
	}
    gui.wad_add_text_lump("DECORATE", data);
end

function BRUTALDOOM4.decorateweapons()

  local data =
	{
        'ACTOR D4Machinegun : DoomWeapon 314\n'
    '{\n'
        '//$Category "Weapons"\n'
        'Tag "Machinegun"\n'
    '	Weapon.SelectionOrder 1300\n'
    '	Weapon.SlotNumber 4\n'
    '	Weapon.AmmoUse1 1\n'
    '	Weapon.AmmoGive1 0\n'
    '	Weapon.AmmoUse2 0\n'
    '	Weapon.AmmoGive2 0\n'
    '	Weapon.AmmoType1 "Clip2"\n'
    '	Weapon.AmmoType2 "MachinegunUpgrade"\n'
    '	Inventory.PickupMessage "You got the Machinegun!"\n'
    '	Obituary "$OB_MPMachinegun"\n'
    '	+WEAPON.NOAUTOFIRE\n'
    '	+WEAPON.NOAUTOAIM\n'
    '	States\n'
    '	{\n'
    '	Ready:\n'
    '		MAGG A 1 A_WeaponReady\n'
    '		TNT1 A 0 A_JumpIfInventory("D4AltMode",1,"Ready4")\n'
    '		TNT1 A 0 A_JumpIfInventory("MachinegunUpgrade",1,"Ready3")\n'
    '		TNT1 A 0 A_JumpIfInventory("IsUpgradingWeapons",1,"UpgradeWeapons")\n'
    '		TNT1 A 0 A_JumpIfInventory("Kicking",1,"DoKick")\n'
    '        TNT1 A 0 A_JumpIfInventory("Taunting",1,"Taunt")\n'
    '        TNT1 A 0 A_JumpIfInventory("Reloading",1,"ChangeAltMode")\n'
    '		TNT1 A 0 A_JumpIfInventory("Salute1", 1, "Salute")\n'
    '		TNT1 A 0 A_JumpIfInventory("Salute2", 1, "Salute")\n'
    '		TNT1 A 0 A_JumpIfInventory("TossGrenade",1,"TossGrenade")\n'
    '		Loop\n'
    '		\n'
    '	Ready2:\n'
    '		MAGS A 1 A_WeaponReady\n'
    '		TNT1 A 0 A_JumpIfInventory("IsUpgradingWeapons",1,"UpgradeWeapons")\n'
    '		TNT1 A 0 A_JumpIfInventory("Kicking",1,"DoKick")\n'
    '        TNT1 A 0 A_JumpIfInventory("Taunting",1,"Taunt")\n'
    '        TNT1 A 0 A_JumpIfInventory("Reloading",1,"ChangeAltMode")\n'
    '		TNT1 A 0 A_JumpIfInventory("Salute1", 1, "Salute")\n'
    '		TNT1 A 0 A_JumpIfInventory("Salute2", 1, "Salute")\n'
    '		TNT1 A 0 A_JumpIfInventory("TossGrenade",1,"TossGrenade")\n'
    '		Loop\n'
    '		\n'
    '	Ready3:\n'
    '		M2GG A 1 A_WeaponReady\n'
    '		TNT1 A 0 A_JumpIfInventory("IsUpgradingWeapons",1,"UpgradeWeapons")\n'
    '		TNT1 A 0 A_JumpIfInventory("Kicking",1,"DoKick")\n'
    '        TNT1 A 0 A_JumpIfInventory("Taunting",1,"Taunt")\n'
    '        TNT1 A 0 A_JumpIfInventory("Reloading",1,"ChangeAltMode")\n'
    '		TNT1 A 0 A_JumpIfInventory("Salute1", 1, "Salute")\n'
    '		TNT1 A 0 A_JumpIfInventory("Salute2", 1, "Salute")\n'
    '		TNT1 A 0 A_JumpIfInventory("TossGrenade",1,"TossGrenade")\n'
    '		Loop\n'
    '		\n'
    '	Ready4:\n'
    '		M3GG A 1 A_WeaponReady\n'
    '		TNT1 A 0 A_JumpIfInventory("IsUpgradingWeapons",1,"UpgradeWeapons")\n'
    '		TNT1 A 0 A_JumpIfInventory("Kicking",1,"DoKick")\n'
    '        TNT1 A 0 A_JumpIfInventory("Taunting",1,"Taunt")\n'
    '        TNT1 A 0 A_JumpIfInventory("Reloading",1,"ChangeAltMode")\n'
    '		TNT1 A 0 A_JumpIfInventory("Salute1", 1, "Salute")\n'
    '		TNT1 A 0 A_JumpIfInventory("Salute2", 1, "Salute")\n'
    '		TNT1 A 0 A_JumpIfInventory("TossGrenade",1,"TossGrenade")\n'
    '		Loop	\n'
    '		\n'
    '	Steady:	\n'
    '		TNT1 A 0\n'
    '		TNT1 A 5\n'
    '		TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")\n'
    '		Goto Select2\n'
    '		\n'
    '	ChangeAltMode:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_TakeInventory("Reloading", 1)\n'
    '		TNT1 A 0 A_JumpIfInventory("D4AltMode", 1, "ChangeAltMode2")\n'
    '		M2GG A 1\n'
    '		TNT1 A 0 A_JumpIfInventory("MachinegunUpgrade", 1, 1)\n'
    '		Goto NoUpgrades\n'
    '		M2GG A 1\n'
    '		TNT1 A 0 A_JumpIfInventory("MachinegunUpgrade", 2, 1)\n'
    '		Goto NoUpgrades2\n'
    '		M2GG A 1\n'
    '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
    '        TNT1 A 0 A_ZoomFactor(1.0)\n'
    '		TNT1 A 0 A_Takeinventory("ADSmode",1)\n'
    '		TNT1 A 0 A_JumpIfInventory("D4AltMode", 1, "ChangeAltMode2")\n'
    '		TNT1 A 0 A_GiveInventory("D4AltMode", 1)\n'
    '		TNT1 A 0 A_Print("Micro missiles mode selected.", 2)\n'
    '		M2GL CBA 1\n'
    '		TNT1 A 4\n'
    '		M3GL ABC 1\n'
    '		Goto Ready4\n'
    '		\n'
    '	ChangeAltMode2:	\n'
    '		M3GG A 1\n'
    '		TNT1 A 0 A_TakeInventory("D4AltMode", 1)\n'
    '		TNT1 A 0 A_Print("Tactical Scope Mode Selected.", 2)\n'
    '		M3GL CBA 1\n'
    '		TNT1 A 4\n'
    '		M2GL ABC 1\n'
    '		Goto Ready3\n'
    '		\n'
    '		\n'
    '		\n'
    '		\n'
    '	Deselect:\n'
    '		MAGL CBA 0\n'
    '		TNT1 A 0 A_ZoomFactor(1.0)\n'
    '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
    '		TNT1 A 0 A_Takeinventory("ADSmode",1)\n'
    '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
    '		TNT1 A 0 A_TakeInventory("IsD4Weapon", 1)\n'
    '		TNT1 A 0 A_TakeInventory("D4MachinegunSelected", 1)\n'
    '		TNT1 A 0 A_TakeInventory("D4AltMode", 1)\n'
    '		MAGG AAAAAAAAAAAA 0 A_Lower\n'
    '		TNT1 A 1 A_Lower\n'
    '		Loop\n'
    '	Select:\n'
    '		TNT1 A 1 A_Raise\n'
    '		TNT1 A 0 A_TakeInventory("IsFiringSecondary",1)\n'
    '		TNT1 A 0 A_TakeInventory("FiredSecondary",1)\n'
    '		TNT1 A 0 A_TakeInventory("IsFiringPrimary",1)\n'
    '		TNT1 A 0 A_TakeInventory("FiredPrimary",1)\n'
    '		TNT1 A 0 A_GiveInventory("StopDualWield", 1)\n'
    '		TNT1 A 0 A_Takeinventory("FistsSelected",1)\n'
    '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
    '		TNT1 A 0 A_Takeinventory("Kicking",1)\n'
    '		TNT1 A 0 A_Takeinventory("TossGrenade",1)\n'
    '		TNT1 A 0 A_Takeinventory("HasPlasmaWeapon",1)\n'
    '		TNT1 A 0 A_JumpIfInventory("D4AltMode",1,"Select4")\n'
    '		TNT1 A 0 A_JumpIfInventory("MachinegunUpgrade",1,"Select3")\n'
    '		MAGG AAAAAAAAA 0 A_Raise\n'
    '		Select2:\n'
    '		TNT1 A 0 A_JumpIfInventory("D4AltMode",1,"Select44")\n'
    '		TNT1 A 0 A_JumpIfInventory("MachinegunUpgrade",1,"Select33")\n'
    '		MAGL ABC 1\n'
    '		TNT1 A 0 A_GiveInventory("D4MachinegunSelected", 1)\n'
    '		TNT1 A 0 A_GiveInventory("IsD4Weapon", 1)\n'
    '		Goto Ready\n'
    '		\n'
    '	Select3:\n'
    '		TNT1 A 1 A_Raise\n'
    '		M2GG AAAAAAAAA 0 A_Raise\n'
    '		Select33:\n'
    '		M2GL ABC 1\n'
    '		TNT1 A 0 A_GiveInventory("D4MachinegunSelected", 1)\n'
    '		TNT1 A 0 A_GiveInventory("IsD4Weapon", 1)\n'
    '		Goto Ready3	\n'
    '	\n'
    '	Select4:\n'
    '		TNT1 A 1 A_Raise\n'
    '		M3GG AAAAAAAAA 0 A_Raise\n'
    '		Select44:\n'
    '		M3GL ABC 1\n'
    '		TNT1 A 0 A_GiveInventory("D4MachinegunSelected", 1)\n'
    '		TNT1 A 0 A_GiveInventory("IsD4Weapon", 1)\n'
    '		Goto Ready4	\n'
    '		\n'
    '	Fire:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_JumpIfInventory("Zoomed",1,"Fire2")\n'
    '		TNT1 A 0 A_JumpIfInventory("D4AltMode",1,"Fire4")\n'
    '		TNT1 A 0 A_JumpIfInventory("MachinegunUpgrade",1,"Fire3")\n'
    '		TNT1 A 0 A_FireCustomMissile("Tracer", random(-2,2),0,12,-6,0,random(-1,1))\n'
    '		TNT1 A 0 A_FireCustomMissile("RifleCaseSpawn",5,0,6,-14)\n'
    '		TNT1 A 0 A_FireBullets (2.0, 2.0, 1, 10, "MachinegunBulletPuff")\n'
    '		TNT1 A 0 A_PlaySound("weapons/rifle", 1)\n'
    '		MAGF A 1 BRIGHT A_SetPitch(-1.0 + pitch)\n'
    '		MAGF B 1\n'
    '		MAGF C 1 A_SetPitch(0.5 + pitch)\n'
    '		MAGG A 1 A_SetPitch(0.5 + pitch)\n'
    '		TNT1 A 0 A_Refire\n'
    '		MAGG A 5 A_WeaponReady\n'
    '		Goto Ready\n'
    '	\n'
    '	Fire3:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_FireCustomMissile("Tracer", random(-2,2),0,12,-6,0,random(-1,1))\n'
    '		TNT1 A 0 A_FireCustomMissile("RifleCaseSpawn",5,0,6,-14)\n'
    '		TNT1 A 0 A_FireBullets (2.0, 2.0, 1, 10, "MachinegunBulletPuff")\n'
    '		TNT1 A 0 A_PlaySound("weapons/rifle", 1)\n'
    '		M2GF A 1 BRIGHT A_SetPitch(-1.0 + pitch)\n'
    '		M2GF B 1\n'
    '		M2GF C 1 A_SetPitch(0.5 + pitch)\n'
    '		M2GG A 1 A_SetPitch(0.5 + pitch)\n'
    '		TNT1 A 0 A_Refire\n'
    '		M2GG A 5 A_WeaponReady\n'
    '		Goto Ready3\n'
    '		\n'
    '	Fire4:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_FireCustomMissile("Tracer", random(-2,2),0,12,-6,0,random(-1,1))\n'
    '		TNT1 A 0 A_FireCustomMissile("RifleCaseSpawn",5,0,6,-14)\n'
    '		TNT1 A 0 A_FireBullets (2.0, 2.0, 1, 10, "MachinegunBulletPuff")\n'
    '		TNT1 A 0 A_PlaySound("weapons/rifle", 1)\n'
    '		M3GF A 1 BRIGHT A_SetPitch(-1.0 + pitch)\n'
    '		M3GF B 1\n'
    '		M3GF C 1 A_SetPitch(0.5 + pitch)\n'
    '		M3GG A 1 A_SetPitch(0.5 + pitch)\n'
    '		TNT1 A 0 A_Refire\n'
    '		M3GG A 5 A_WeaponReady\n'
    '		Goto Ready4	\n'
    '		\n'
    '	Fire2:\n'
    '		TNT1 A 0 A_FireCustomMissile("Tracer", 0,0,0,-6,0,0)\n'
    '		TNT1 A 0 A_FireBullets (0.0, 0.0, 1, 10, "MachinegunBulletPuff")\n'
    '		TNT1 A 0 A_FireCustomMissile("RifleCaseSpawn",5,0,6,-14)\n'
    '		TNT1 A 0 A_PlaySound("weapons/rifle", 1)\n'
    '		MAGS A 1 BRIGHT A_SetPitch(-1.0 + pitch)\n'
    '		MAGS B 1\n'
    '		MAGS C 1 A_SetPitch(0.5 + pitch)\n'
    '		MAGS A 1 A_SetPitch(0.5 + pitch)\n'
    '		TNT1 A 0 A_Refire\n'
    '		MAGS A 5 A_WeaponReady\n'
    '		Goto Ready2	\n'
    '		\n'
    '	AltFire:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_JumpIfInventory("MachinegunUpgrade", 1, 1)\n'
    '		Goto NoUpgrades\n'
    '		TNT1 A 0 A_JumpIfInventory("D4AltMode", 1, "AltFire2")\n'
    '		TNT1 A 0 A_JumpIfInventory("Clip2", 3, 1)\n'
    '		Goto NoAmmo\n'
    '		\n'
    '		TNT1 A 0 A_JumpIfInventory("Zoomed",1,"NoAim")\n'
    '		TNT1 A 0 A_Giveinventory("Zoomed",1)\n'
    '		TNT1 A 0 A_Giveinventory("GoSpecial",1)\n'
    '        TNT1 A 0 A_ZoomFactor(2.0)\n'
    '		TNT1 A 0 A_Giveinventory("ADSmode",1)\n'
    '        MAGA ABCD 1\n'
    '        Goto Ready2\n'
    '      NoAim:\n'
    '        MAGA DCBA 1\n'
    '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
    '        TNT1 A 0 A_ZoomFactor(1.0)\n'
    '		TNT1 A 0 A_Takeinventory("ADSmode",1)\n'
    '        Goto Ready3\n'
    '		MAGG A 5 A_WeaponReady\n'
    '		Goto Ready3\n'
    '		\n'
    '	AltFire2:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_JumpIfInventory("Clip2", 12, 1)\n'
    '		Goto NoAmmo\n'
    '		\n'
    '		TNT1 A 0 A_PlaySound("MICROOPN", 1)\n'
    '		M3GA ABCDEF 1\n'
    '		TNT1 A 0 A_PlaySound("MICREADY", 4)\n'
    '		M3GA FFFFF 1\n'
    '		\n'
    '		TNT1 A 0 A_PlaySound("weapons/RLL", 1)\n'
    '		TNT1 A 0 A_TakeInventory("Clip2", 2)\n'
    '		TNT1 A 0 A_FireCustomMissile("MachinegunRocket", random(-2,2),0,9,-6,0,random(-1,1))\n'
    '		M3GA G 2 BRIGHT A_SetPitch(-2.0 + pitch)\n'
    '		M3GA H 1\n'
    '		M3GA HH 1 A_SetPitch(1.0 + pitch)\n'
    '		\n'
    '		TNT1 A 0 A_PlaySound("MICRO2", 3)\n'
    '		TNT1 A 0 A_TakeInventory("Clip2", 2)\n'
    '		TNT1 A 0 A_FireCustomMissile("MachinegunRocket", random(-2,2),0,9,-6,0,random(-1,1))\n'
    '		M3GA I 2 BRIGHT A_SetPitch(-2.0 + pitch)\n'
    '		M3GA J 1\n'
    '		M3GA JJ 1 A_SetPitch(1.0 + pitch)\n'
    '		\n'
    '		TNT1 A 0 A_PlaySound("weapons/RLL", 1)\n'
    '		TNT1 A 0 A_TakeInventory("Clip2", 2)\n'
    '		TNT1 A 0 A_FireCustomMissile("MachinegunRocket", random(-2,2),0,9,-6,0,random(-1,1))\n'
    '		M3GA K 2 BRIGHT A_SetPitch(-2.0 + pitch)\n'
    '		M3GA L 1\n'
    '		M3GA LL 1 A_SetPitch(1.0 + pitch)\n'
    '		\n'
    '		TNT1 A 0 A_PlaySound("MICRO2", 3)\n'
    '		TNT1 A 0 A_TakeInventory("Clip2", 2)\n'
    '		TNT1 A 0 A_FireCustomMissile("MachinegunRocket", random(-2,2),0,9,-6,0,random(-1,1))\n'
    '		M3GA M 2 BRIGHT A_SetPitch(-2.0 + pitch)\n'
    '		M3GA N 1\n'
    '		M3GA NN 1 A_SetPitch(1.0 + pitch)\n'
    '		\n'
    '		TNT1 A 0 A_PlaySound("weapons/RLL", 1)\n'
    '		TNT1 A 0 A_TakeInventory("Clip2", 2)\n'
    '		TNT1 A 0 A_FireCustomMissile("MachinegunRocket", random(-2,2),0,9,-6,0,random(-1,1))\n'
    '		M3GA O 2 BRIGHT A_SetPitch(-2.0 + pitch)\n'
    '		M3GA P 1\n'
    '		M3GA PP 1 A_SetPitch(1.0 + pitch)\n'
    '		\n'
    '		TNT1 A 0 A_PlaySound("MICRO2", 3)\n'
    '		TNT1 A 0 A_TakeInventory("Clip2", 2)\n'
    '		TNT1 A 0 A_FireCustomMissile("MachinegunRocket", random(-2,2),0,9,-6,0,random(-1,1))\n'
    '		M3GA Q 2 BRIGHT A_SetPitch(-2.0 + pitch)\n'
    '		M3GA R 1\n'
    '		M3GA RR 1 A_SetPitch(1.0 + pitch)\n'
    '		\n'
    '		TNT1 A 0 A_PlaySound("MICROEND", 4)\n'
    '		M3GA EEDCBA 1\n'
    '		Goto Ready4	\n'
    '		\n'
    '	Spawn:\n'
    '           D4W4 A 10\n'
    '           TNT1 A 0 A_ChangeFlag("THRUACTORS", 0)\n'
    '           D4W4 A -1\n'
    '           Stop\n'
    '		\n'
    '	DoKick:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
    '        TNT1 A 0 A_ZoomFactor(1.0)\n'
    '		TNT1 A 0 A_Takeinventory("ADSmode",1)\n'
    '		NULL A 0 A_JumpIf (momZ > 0, "AirKick")\n'
    '		NULL A 0 A_JumpIf (momZ < 0, "AirKick")\n'
    '		RIFF A 0 A_FireCustomMissile("KickAttackDetectDowned", 0, 0, 0, 0)\n'
    '        TNT1 A 0 A_jumpifinventory("PowerStrength",1,"BerserkerKick")\n'
    '		TNT1 A 0 A_PlaySound("KICK")\n'
    '		TNT1 A 0 SetPlayerProperty(0,1,0)\n'
    '		KICK BCD 1\n'
    '		RIFF A 0 A_FireCustomMissile("KickAttack", 0, 0, 0, -7)\n'
    '        KICK H 5\n'
    '		KICK A 0 A_Takeinventory("Kicking",1)\n'
    '		KICK I 1\n'
    '		KICK GFEDCBA 1 \n'
    '		TNT1 A 0 SetPlayerProperty(0,0,0)\n'
    '		TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")\n'
    '		Goto Select2\n'
    '    BerserkerKick:\n'
    '		TNT1 A 0 A_PlaySound("KICK")\n'
    '		TNT1 A 0 SetPlayerProperty(0,1,0)\n'
    '		KICK BCD 1\n'
    '        RIFF A 0 A_FireCustomMissile("SuperKickAttack", 0, 0, 0, -7)\n'
    '        KICK H 5\n'
    '		KICK A 0 A_Takeinventory("Kicking",1)\n'
    '		KICK I 1\n'
    '		KICK GFEDCBA 1 \n'
    '		TNT1 A 0 SetPlayerProperty(0,0,0)\n'
    '		TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")\n'
    '		Goto Select2\n'
    '	\n'
    '	AirKick:\n'
    '	    TNT1 A 0 A_jumpifinventory("PowerStrength",1,"SuperAirKick")\n'
    '		TNT1 A 0 A_PlaySound("KICK")\n'
    '		TNT1 A 0 A_Recoil (-6)\n'
    '		KICK JKLMN 1\n'
    '        RIFF A 0 A_FireCustomMissile("AirKickAttack", 0, 0, 0, -31)\n'
    '        KICK O 3\n'
    '		KICK A 0 A_Takeinventory("Kicking",1)\n'
    '		KICK PQRST 2\n'
    '		TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")\n'
    '		Goto Select2\n'
    '		\n'
    '	SuperAirKick:\n'
    '		TNT1 A 0 A_PlaySound("KICK")\n'
    '		TNT1 A 0 A_Recoil (-6)\n'
    '		KICK JKLMN 1\n'
    '        RIFF A 0 A_FireCustomMissile("SuperAirKickAttack", 0, 0, 0, -31)\n'
    '        KICK O 3\n'
    '		KICK A 0 A_Takeinventory("Kicking",1)\n'
    '		KICK PQRST 2\n'
    '		TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")\n'
    '		Goto Select2\n'
    '\n'
    '    Taunt:\n'
    '        TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
    '        TNT1 A 0 A_ZoomFactor(1.0)\n'
    '		FUCK A 1\n'
    '		TNT1 A 0 BRIGHT A_FireCustomMissile("Taunter", 0, 0, -1, 0)\n'
    '		TNT1 A 0 BRIGHT A_FireCustomMissile("Taunter", -9, 0, -1, 0)\n'
    '		TNT1 A 0 BRIGHT A_FireCustomMissile("Taunter", 9, 0, -1, 0)\n'
    '        FUCK B 1 A_PlaySound("FUCK", 2)\n'
    '        FUCK CD 1 A_AlertMonsters\n'
    '		FUCK E 15 A_Takeinventory("Taunting",1)\n'
    '        FUCK DCBA 1\n'
    '		Goto Select2\n'
    '	Salute:\n'
    '		TNT1 A 0 A_ZoomFactor(1.0)\n'
    '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
    '		TNT1 A 0 A_Takeinventory("ADSmode",1)\n'
    '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
    '	    TNT1 A 0 SetPlayerProperty(0,1,0)\n'
    '		TNT1 A 0 A_ALertMonsters\n'
    '		SALU ABCDEDCDEDCDEDCBA 4\n'
    '		TNT1 A 0 A_TakeInventory("Salute1",1)\n'
    '		TNT1 A 0 A_TakeInventory("Salute2",1)\n'
    '		TNT1 A 0 SetPlayerProperty(0,0,0)\n'
    '		Goto Select2\n'
    '	TossGrenade:	\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_ZoomFactor(1.0)\n'
    '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
    '		TNT1 A 0 A_Takeinventory("ADSmode",1)\n'
    '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
    '		TNT1 A 0 A_TakeInventory("TossGrenade", 1)\n'
    '		TNT1 A 0 A_JumpIfInventory("GrenadeAmmo", 1, 1)\n'
    '		Goto NoGrenade\n'
    '		GRTH ABCD 1\n'
    '		TNT1 A 0 A_GiveInventory("FiredGrenade", 1)\n'
    '		TNT1 A 0 A_PLaySound ("GRNPIN")\n'
    '		GRTH EEFG 1\n'
    '		TNT1 A 0 A_PLaySound ("GRNTOSS")\n'
    '		GRTH HI 1\n'
    '		TNT1 A 0 A_TakeInventory("GrenadeAmmo", 1)\n'
    '		TNT1 A 0 A_FireCustomMissile("HandGrenade", random(-2,2), 0, 0, 0, 0, 0)\n'
    '	    TNT1 A 0 A_TakeInventory("FiredGrenade", 1)\n'
    '		GRTH JKLM 1\n'
    '		TNT1 A 1 \n'
    '		TNT1 A 0 A_TakeInventory("TossGrenade", 1)\n'
    '		Goto Select2\n'
    '	NoGrenade:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_ZoomFactor(1.0)\n'
    '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
    '		TNT1 A 0 A_Takeinventory("ADSmode",1)\n'
    '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
    '		TNT1 A 0 A_Print("No Grenades Left.", 2)\n'
    '		Goto Ready	\n'
    '	NoUpgrades:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_ZoomFactor(1.0)\n'
    '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
    '		TNT1 A 0 A_Takeinventory("ADSmode",1)\n'
    '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
    '		TNT1 A 0 A_Print("You have no upgrades for this weapon.", 2)\n'
    '		Goto Ready\n'
    '	NoUpgrades2:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_ZoomFactor(1.0)\n'
    '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
    '		TNT1 A 0 A_Takeinventory("ADSmode",1)\n'
    '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
    '		TNT1 A 0 A_Print("You have no level 2 upgrade for this weapon.", 2)\n'
    '		Goto Ready	\n'
    '	NoAmmo:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_ZoomFactor(1.0)\n'
    '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
    '		TNT1 A 0 A_Takeinventory("ADSmode",1)\n'
    '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
    '		TNT1 A 0 A_Print("You do not have enough ammo to use the alt fire.", 2)\n'
    '		Goto Ready	\n'
    '	UpgradeWeapons:\n'
    '		TNT1 A 0 \n'
    '		TNT1 A 0 A_ZoomFactor(1.0)\n'
    '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
    '		TNT1 A 0 A_Takeinventory("ADSmode",1)\n'
    '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
    '		TNT1 A 0 A_TakeInventory("IsUpgradingWeapons", 1)\n'
    '		NULL A 0 SetPlayerProperty(0,1,4)\n'
    '		PK4P ABCDEFGH 2\n'
    '		TNT1 A 6\n'
    '		PUN3 ABCDE 1\n'
    '        TNT1 A 0 A_PlaySound("weapons/gswing")\n'
    '		PUN3 F 1\n'
    '		RIFF AA 0 A_FireCustomMissile("PickD4UpgradeAttack", 0, 0, 0, -9)\n'
    '		PUN3 GHI 1\n'
    '		PUN3 JK 1\n'
    '		NULL A 0 SetPlayerProperty(0,0,4)\n'
    '		TNT1 A 12\n'
    '		TNT1 A 0 A_JumpIfInventory("Taunting",1,"Taunt")\n'
    '		Goto Select2	\n'
    '	}\n'
    '}\n'
    'ACTOR MachinegunRocket: RevenantBalls\n'
    '{\n'
    '	Radius 8\n'
    '	Height 8\n'
    '	Damage 12\n'
    '	Scale 0.5\n'
    '	Speed 45\n'
    '	-NOEXTREMEDEATH\n'
    '	-GHOST\n'
    '	-THRUGHOST\n'
    '	+SEEKERMISSILE\n'
    '	Damagetype "ExplosiveImpact"\n'
    '	Species "Marines"\n'
    '	States\n'
    '	{\n'
    '	Spawn:\n'
    '	    MISL A 1 Bright \n'
    '		TNT1 A 0 A_SpawnItem("RedFlareSmall",-20,0)\n'
    '		TNT1 A 0 A_CustomMissile ("MeleeSmoke", 2, 0, random (160, 210), 2, random (-30, 30))\n'
    '		TNT1 A 0 ThrustThingZ(0,random(-3, 2),0,1)\n'
    '		MISL A 1 Bright \n'
    '		TNT1 A 0 A_SpawnItem("RedFlareSmall",-20,0)\n'
    '		TNT1 A 0 A_CustomMissile ("MeleeSmoke", 2, 0, random (160, 210), 2, random (-30, 30))\n'
    '		MISL A 1 Bright \n'
    '		TNT1 A 0 A_SpawnItem("RedFlareSmall",-20,0)\n'
    '		TNT1 A 0 A_CustomMissile ("MeleeSmoke", 2, 0, random (160, 210), 2, random (-30, 30))\n'
    '		TNT1 A 0 ThrustThingZ(0,random(-3, 2),0,1)\n'
    '		MISL A 1 Bright \n'
    '		TNT1 A 0 A_SpawnItem("RedFlareSmall",-20,0)\n'
    '		TNT1 A 0 A_CustomMissile ("MeleeSmoke", 2, 0, random (160, 210), 2, random (-30, 30))\n'
    '		TNT1 A 0 ThrustThing(angle*256/360+64,random(-1, 1),1, 0)\n'
    '		Loop\n'
    '	}\n'
    '}\n'
    
    'Actor D4AltMode : Inventory\n'
    '{\n'
    'inventory.maxamount 1\n'
    '}\n'
    '\n'
    '\n'
    'Actor IsD4Weapon : Inventory\n'
    '{\n'
    'inventory.maxamount 1\n'
    '}\n'
    '\n'
    'Actor HasZombiemanChunk : Inventory\n'
    '{\n'
    'inventory.maxamount 1\n'
    '}\n'
    '\n'
    'Actor HasSergeantChunk : Inventory\n'
    '{\n'
    'inventory.maxamount 1\n'
    '}\n'
    '\n'
    '\n'
    '\n'
    'ACTOR ShotgunUpgrade : Ammo\n'
    '{\n'
    '	Game Doom\n'
    '	Inventory.PickupMessage "Picked up a Shotgun Upgrade."\n'
    '	Inventory.Amount 1\n'
    '	Inventory.MaxAmount 2\n'
    '	Ammo.BackpackAmount 0\n'
    '	Ammo.BackpackMaxAmount 2\n'
    '	//Inventory.Icon "CLIPA0"\n'
    '	States\n'
    '	{\n'
    '	Spawn:\n'
    '		CLIP A -1\n'
    '		Stop\n'
    '	}\n'
    '}\n'
    '\n'
    '\n'
    'ACTOR MachinegunUpgrade : Ammo\n'
    '{\n'
    '	Game Doom\n'
    '	Inventory.PickupMessage "Picked up a Machinegun Upgrade."\n'
    '	Inventory.Amount 1\n'
    '	Inventory.MaxAmount 2\n'
    '	Ammo.BackpackAmount 0\n'
    '	Ammo.BackpackMaxAmount 2\n'
    '	//Inventory.Icon "CLIPA0"\n'
    '	States\n'
    '	{\n'
    '	Spawn:\n'
    '		CLIP A -1\n'
    '		Stop\n'
    '	}\n'
    '}\n'
    '\n'
    '\n'
    '\n'
    'Actor D4ShotgunSelected : Inventory\n'
    '{\n'
    'inventory.maxamount 1\n'
    '}\n'
    '\n'
    'Actor D4MachinegunSelected : Inventory\n'
    '{\n'
    'inventory.maxamount 1\n'
    '}\n'
    '\n'
    'Actor D4PlasmaSelected : Inventory\n'
    '{\n'
    'inventory.maxamount 1\n'
    '}\n'
    '\n'
    'Actor D4RocketSelected : Inventory\n'
    '{\n'
    'inventory.maxamount 1\n'
    '}\n'
    '\n'
    'Actor D4ChaingunSelected : Inventory\n'
    '{\n'
    'inventory.maxamount 1\n'
    '}\n'
    '\n'
    'Actor D4GaussSelected : Inventory\n'
    '{\n'
    'inventory.maxamount 1\n'
    '}\n'
    '\n'
    '\n'
    'Actor IsUpgradingWeapons : Inventory\n'
    '{\n'
    'inventory.maxamount 1\n'
    '}\n'
    '\n'
    '\n'
    '\n'
    '\n'
    '\n'
    '\n'
    '\n'
    'ACTOR PickD4UpgradeAttack: FastProjectile\n'
    '{\n'
    '	Radius 18\n'
    '	Height 6\n'
    '	DamageType DestroyUpgradeStation\n'
    '	Projectile \n'
    '	+FORCEXYBILLBOARD\n'
    '	+NOEXTREMEDEATH\n'
    '	RenderStyle Add\n'
    '	Alpha 0.6\n'
    '    Damage (random(28,32))\n'
    '    Speed 30\n'
    '	//HitObituary "$OB_IMPHIT"\n'
    '	SeeSound "none"\n'
    '	DeathSound "none"\n'
    '	Decal "none"\n'
    '	States\n'
    '	{\n'
    '	Spawn:\n'
    '		TNT1 A 1 BRIGHT\n'
    '        TNT1 A 1 //A_PlaySound("weapons/gswing")\n'
    '		Stop\n'
    '	Death:\n'
    '	XDEath:\n'
    '			TNT1 A 0\n'
    '			TNT1 A 0 A_CheckFloor("DeathOnGround")\n'
    '		    PUFF A 0 A_PlaySound("player/cyborg/fist", 3)\n'
    '			TNT1 A 0 A_SpawnItemEx ("PLOFT2",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION,0)\n'
    '			EXPL AAAAAA 0 A_CustomMissile ("MeleeSmoke", 0, 0, random (0, 360), 2, random (0, 360))\n'
    '			TNT1 A 0 A_GiveToTarget("KickHasHit", 1)\n'
    '			TNT1 A 0 Radius_Quake (2, 6, 0, 5, 0)//(intensity, duration, damrad, tremrad, tid)\n'
    '			\n'
    '			TNT1 A 10\n'
    '		Stop\n'
    '	\n'
    '	DeathOnGround:\n'
    '			TNT1 A 0\n'
    '		    PUFF A 0 A_PlaySound("player/cyborg/fist", 3)\n'
    '			TNT1 A 0 A_SpawnItemEx ("PLOFT2",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION,0)\n'
    '			EXPL AAAAAA 0 A_CustomMissile ("MeleeSmoke", 0, 0, random (0, 360), 2, random (0, 360))\n'
    '			TNT1 A 0 Radius_Quake (2, 6, 0, 5, 0)//(intensity, duration, damrad, tremrad, tid)\n'
    '			TNT1 A 0 A_Explode(10, 40, 0)\n'
    '			TNT1 A 10\n'
    '		Stop\n'
    '	}\n'
    '}\n'
    
    'ACTOR UpgradeBot: SwitchableDecoration 315\n'
    '{\n'
        '//$Category "Weapons"\n'
        'Tag "Upgrade Bot"\n'
    '    Radius 24\n'
    '	Height 60\n'
    '	+SOLID\n'
    '	+USESPECIAL\n'
    '	MONSTER\n'
    '	-COUNTKILL\n'
    '	+SHOOTABLE\n'
    '	+LOOKALLAROUND\n'
    '	-THRUACTORS\n'
    '	+NOINFIGHTING\n'
    '	MaxTargetRange 120\n'
    '	+NOBLOOD\n'
    '	Activation THINGSPEC_Activate | THINGSPEC_ThingTargets | THINGSPEC_NoDeathSpecial\n'
    '	Mass 999999\n'
    '	Speed 0\n'
    '	health 1000\n'
    '	+FLOATBOB\n'
    '	+NOGRAVITY\n'
    '	DamageFactor "DestroyUpgradeStation", 9999.0\n'
    '	Scale 1.0\n'
    '    States\n'
    '    {\n'
    '    Spawn:\n'
    '	    UABB AB 2 BRIGHT\n'
    '		Loop\n'
    '	Spawn2:\n'
    '		UABB CD 2 BRIGHT\n'
    '		Loop\n'
    '	\n'
    '	Active:\n'
    '		UABB A 1 \n'
    '		TNT1 A 0 A_JumpIfInTargetInventory("IsD4Weapon", 1, 1)\n'
    '		Goto CantUpgrade\n'
    '		UABB A 1\n'
    '		TNT1 A 0 A_JumpIfInTargetInventory("D4ShotgunSelected", 1, "UpgradeShotgun")\n'
    '		TNT1 A 0 A_JumpIfInTargetInventory("D4MachinegunSelected", 1, "UpgradeMachinegun")\n'
    '		UABB B 2\n'
    '		Goto CantUpgrade\n'
    '		Stop\n'
    '	\n'
    '	UpgradeShotgun:\n'
    '		UABB A 1\n'
    '		TNT1 A 0 A_JumpIfInTargetInventory("ShotgunUpgrade", 2, "MaxUpgrade")\n'
    '		TNT1 A 0 A_GiveToTarget("ShotgunUpgrade", 1)\n'
    '		TNT1 A 0 A_GiveToTarget("IsUpgradingWeapons", 1)\n'
    '		UABB ABABABAB 2 BRIGHT\n'
    '		Goto Spawn2\n'
    '	\n'
    '	UpgradeMachinegun:\n'
    '		UABB A 1\n'
    '		TNT1 A 0 A_JumpIfInTargetInventory("MachinegunUpgrade", 2, "MaxUpgrade")\n'
    '		TNT1 A 0 A_GiveToTarget("MachinegunUpgrade", 1)\n'
    '		TNT1 A 0 A_GiveToTarget("IsUpgradingWeapons", 1)\n'
    '		UABB ABABABAB 2 BRIGHT\n'
    '		Goto Spawn2\n'
    '		\n'
    '	CantUpgrade:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_Print("This weapon cannot be upgraded.", 2)\n'
    '		TNT1 A 0 A_Noblocking\n'
    '		TNT1 A 0 A_ChangeFlag("USESPECIAL", 0)\n'
    '		TNT1 A 0 A_ChangeFlag("THRUACTORS", 1)\n'
    '		TNT1 A 0 A_ChangeFlag("NOGRAVITY", 0)\n'
    '		TNT1 A 0 A_ChangeFlag("FLOATBOB", 0)\n'
    '		TNT1 A 0 A_SpawnItemEx ("UpgradeBot", 0, 0, 0, 0, 0, 0, 0, SXF_NOCHECKPOSITION)\n'
    '		TNT1 A 1\n'
    '		TNT1 A -1\n'
    '		Goto Spawn\n'
    '		\n'
    '	MaxUpgrade:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_Print("This weapon already has all possible upgrades.", 2)\n'
    '		TNT1 A 0 A_Noblocking\n'
    '		TNT1 A 0 A_ChangeFlag("USESPECIAL", 0)\n'
    '		TNT1 A 0 A_ChangeFlag("THRUACTORS", 1)\n'
    '		TNT1 A 0 A_ChangeFlag("NOGRAVITY", 0)\n'
    '		TNT1 A 0 A_ChangeFlag("FLOATBOB", 0)\n'
    '		TNT1 A 0 A_SpawnItem("UpgradeBot")\n'
    '		TNT1 A 1\n'
    '		TNT1 A -1\n'
    '		Goto Spawn	\n'
    '	\n'
    '	Death:	\n'
    '		UABB E 1\n'
    '		TNT1 A 0 A_PlaySound("weapons/explode")\n'
    '		TNT1 A 0 A_Scream\n'
    '		TNT1 A 0 A_NoBlocking\n'
    '		TNT1 AA 0 A_CustomMissile ("XJunk1", 55, 0, random (0, 360), 2, random (40, 150))\n'
    '		TNT1 AA 0 A_CustomMissile ("XJunk2", 55, 0, random (0, 360), 2, random (40, 150))\n'
    '		TNT1 AAAA 0 A_CustomMissile ("XJunk3", 55, 0, random (0, 360), 2, random (40, 150))\n'
    '		TNT1 AAAAAAAAA 0 A_CustomMissile ("ExplosionParticleHeavy", 50, 0, random (0, 360), 2, random (0, 180))\n'
    '        TNT1 AAAAAAAAAAAAAAAAAA 0 A_CustomMissile ("ExplosionParticleHeavy", 50, 0, random (0, 360), 2, random (0, 360))\n'
    '		TNT1 AAAAAAAAA 0 A_CustomMissile ("ExplosionParticleVeryFast", 50, 0, random (0, 360), 2, random (0, 360))\n'
    '        TNT1 AAAAA 0 A_CustomMissile ("MediumExplosionFlames", 50, 0, random (0, 360), 2, random (0, 360))\n'
    '        EXPL AAAAA 0 A_CustomMissile ("ExplosionSmokeFast22", 50, 0, random (0, 360), 2, random (0, 360))\n'
    '		UABB E 1 A_FaceTarget\n'
    '		TNT1 A 0 A_ChangeFlag("USESPECIAL", 0)\n'
    '		TNT1 A 0 A_ChangeFlag("THRUACTORS", 1)\n'
    '		TNT1 A 0 A_ChangeFlag("NOGRAVITY", 0)\n'
    '		TNT1 A 0 A_ChangeFlag("FLOATBOB", 0)\n'
    '		TNT1 A 0 ThrustThingZ(0,25,0,1)\n'
    '		UABB E 8 A_Recoil(3)\n'
    '		UABB F -1\n'
    '		Stop	\n'
    '	}\n'
    '}\n'
    
    
    'ACTOR D4GaussCannon : DoomWeapon 317\n'
    '{\n'
        '//$Category "Weapons"\n'
        'Tag "Gauss Cannon"\n'
    '	Weapon.AmmoUse1 15\n'
    '	Weapon.AmmoGive1 50\n'
    '	Weapon.AmmoType1 "Cell"\n'
    '	Weapon.AmmoUse2 0\n'
    '	Weapon.AmmoGive2 0\n'
    '	Weapon.AmmoType1 "Cell"\n'
    '	Inventory.PickupMessage "You got the Gauss Cannon!"\n'
    '	Obituary "$OB_MPSHOTGUN"\n'
    '	+WEAPON.NOAUTOFIRE\n'
    '	+WEAPON.NOAUTOAIM\n'
    '	States\n'
    '	{\n'
    '	Ready:\n'
    '		GCAG A 1 A_WeaponReady\n'
    '		TNT1 A 0 A_JumpIfInventory("Kicking",1,"DoKick")\n'
    '        TNT1 A 0 A_JumpIfInventory("Taunting",1,"Taunt")\n'
    '		TNT1 A 0 A_JumpIfInventory("Salute1", 1, "Salute")\n'
    '		TNT1 A 0 A_JumpIfInventory("Salute2", 1, "Salute")\n'
    '		TNT1 A 0 A_JumpIfInventory("TossGrenade",1,"TossGrenade")\n'
    '		Loop\n'
    '		\n'
    '	Steady:	\n'
    '		TNT1 A 0\n'
    '		TNT1 A 5\n'
    '		TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")\n'
    '		Goto Select2\n'
    '		\n'
    '	\n'
    '	Deselect:\n'
    '		GCAS CBA 0\n'
    '		GCAG AAAAAAAAAAAA 0 A_Lower\n'
    '		TNT1 A 1 A_Lower\n'
    '		Loop\n'
    '	Select:\n'
    '		TNT1 A 1 A_Raise\n'
    '		TNT1 A 0 A_TakeInventory("IsFiringSecondary",1)\n'
    '		TNT1 A 0 A_TakeInventory("FiredSecondary",1)\n'
    '		TNT1 A 0 A_TakeInventory("IsFiringPrimary",1)\n'
    '		TNT1 A 0 A_TakeInventory("FiredPrimary",1)\n'
    '		TNT1 A 0 A_GiveInventory("StopDualWield", 1)\n'
    '		TNT1 A 0 A_Takeinventory("FistsSelected",1)\n'
    '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
    '		TNT1 A 0 A_Takeinventory("Kicking",1)\n'
    '		TNT1 A 0 A_Takeinventory("TossGrenade",1)\n'
    '		TNT1 A 0 A_Takeinventory("HasPlasmaWeapon",1)\n'
    '		GCAG AAAAAAAAA 0 A_Raise\n'
    '		Select2:\n'
    '		GCAS ABC 1\n'
    '		Goto Ready\n'
    '		\n'
    '	Fire:\n'
    '		GCAF ABCD 1 BRIGHT\n'
    '		TNT1 A 0 A_PlaySound("PLSALTFR", 1)\n'
    '		TNT1 A 0 A_FireCustomMissile("GaussCannonShot", 0,1,6,-3,0,0)\n'
    '		GCAF E 1 BRIGHT A_SetPitch(-4.0 + pitch)\n'
    '		GCAF F 1 BRIGHT\n'
    '		GCAF GHIJ 1 A_SetPitch(1.0 + pitch)\n'
    '		GCAG A 15\n'
    '		Goto Ready\n'
    '		\n'
    '	Spawn:\n'
    '		D4W7 B -1\n'
    '		Stop\n'
    '		\n'
    '	DoKick:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
    '        TNT1 A 0 A_ZoomFactor(1.0)\n'
    '		TNT1 A 0 A_Takeinventory("ADSmode",1)\n'
    '		NULL A 0 A_JumpIf (momZ > 0, "AirKick")\n'
    '		NULL A 0 A_JumpIf (momZ < 0, "AirKick")\n'
    '		RIFF A 0 A_FireCustomMissile("KickAttackDetectDowned", 0, 0, 0, 0)\n'
    '        TNT1 A 0 A_jumpifinventory("PowerStrength",1,"BerserkerKick")\n'
    '		TNT1 A 0 A_PlaySound("KICK")\n'
    '		TNT1 A 0 SetPlayerProperty(0,1,0)\n'
    '		KICK BCD 1\n'
    '		RIFF A 0 A_FireCustomMissile("KickAttack", 0, 0, 0, -7)\n'
    '        KICK H 5\n'
    '		KICK A 0 A_Takeinventory("Kicking",1)\n'
    '		KICK I 1\n'
    '		KICK GFEDCBA 1 \n'
    '		TNT1 A 0 SetPlayerProperty(0,0,0)\n'
    '		TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")\n'
    '		Goto Select2\n'
    '    BerserkerKick:\n'
    '		TNT1 A 0 A_PlaySound("KICK")\n'
    '		TNT1 A 0 SetPlayerProperty(0,1,0)\n'
    '		KICK BCD 1\n'
    '        RIFF A 0 A_FireCustomMissile("SuperKickAttack", 0, 0, 0, -7)\n'
    '        KICK H 5\n'
    '		KICK A 0 A_Takeinventory("Kicking",1)\n'
    '		KICK I 1\n'
    '		KICK GFEDCBA 1 \n'
    '		TNT1 A 0 SetPlayerProperty(0,0,0)\n'
    '		TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")\n'
    '		Goto Select2\n'
    '	\n'
    '	AirKick:\n'
    '	    TNT1 A 0 A_jumpifinventory("PowerStrength",1,"SuperAirKick")\n'
    '		TNT1 A 0 A_PlaySound("KICK")\n'
    '		TNT1 A 0 A_Recoil (-6)\n'
    '		KICK JKLMN 1\n'
    '        RIFF A 0 A_FireCustomMissile("AirKickAttack", 0, 0, 0, -31)\n'
    '        KICK O 3\n'
    '		KICK A 0 A_Takeinventory("Kicking",1)\n'
    '		KICK PQRST 2\n'
    '		TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")\n'
    '		Goto Select2\n'
    '		\n'
    '	SuperAirKick:\n'
    '		TNT1 A 0 A_PlaySound("KICK")\n'
    '		TNT1 A 0 A_Recoil (-6)\n'
    '		KICK JKLMN 1\n'
    '        RIFF A 0 A_FireCustomMissile("SuperAirKickAttack", 0, 0, 0, -31)\n'
    '        KICK O 3\n'
    '		KICK A 0 A_Takeinventory("Kicking",1)\n'
    '		KICK PQRST 2\n'
    '		TNT1 A 0 A_JumpIfInventory("GoFatality", 1, "Steady")\n'
    '		Goto Select2\n'
    '\n'
    '    Taunt:\n'
    '        TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
    '        TNT1 A 0 A_ZoomFactor(1.0)\n'
    '		FUCK A 1\n'
    '		TNT1 A 0 BRIGHT A_FireCustomMissile("Taunter", 0, 0, -1, 0)\n'
    '		TNT1 A 0 BRIGHT A_FireCustomMissile("Taunter", -9, 0, -1, 0)\n'
    '		TNT1 A 0 BRIGHT A_FireCustomMissile("Taunter", 9, 0, -1, 0)\n'
    '        FUCK B 1 A_PlaySound("FUCK", 2)\n'
    '        FUCK CD 1 A_AlertMonsters\n'
    '		FUCK E 15 A_Takeinventory("Taunting",1)\n'
    '        FUCK DCBA 1\n'
    '		Goto Select2\n'
    '	Salute:\n'
    '	    TNT1 A 0 SetPlayerProperty(0,1,0)\n'
    '		TNT1 A 0 A_ALertMonsters\n'
    '		SALU ABCDEDCDEDCDEDCBA 4\n'
    '		TNT1 A 0 A_TakeInventory("Salute1",1)\n'
    '		TNT1 A 0 A_TakeInventory("Salute2",1)\n'
    '		TNT1 A 0 SetPlayerProperty(0,0,0)\n'
    '		Goto Select2\n'
    '	TossGrenade:	\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_TakeInventory("TossGrenade", 1)\n'
    '		TNT1 A 0 A_JumpIfInventory("GrenadeAmmo", 1, 1)\n'
    '		Goto NoGrenade\n'
    '		GRTH ABCD 1\n'
    '		TNT1 A 0 A_GiveInventory("FiredGrenade", 1)\n'
    '		TNT1 A 0 A_PLaySound ("GRNPIN")\n'
    '		GRTH EEFG 1\n'
    '		TNT1 A 0 A_PLaySound ("GRNTOSS")\n'
    '		GRTH HI 1\n'
    '		TNT1 A 0 A_TakeInventory("GrenadeAmmo", 1)\n'
    '		TNT1 A 0 A_FireCustomMissile("HandGrenade", random(-2,2), 0, 0, 0, 0, 0)\n'
    '	    TNT1 A 0 A_TakeInventory("FiredGrenade", 1)\n'
    '		GRTH JKLM 1\n'
    '		TNT1 A 1 \n'
    '		TNT1 A 0 A_TakeInventory("TossGrenade", 1)\n'
    '		Goto Select2\n'
    '	NoGrenade:\n'
    '		TNT1 A 0\n'
    '		TNT1 A 0 A_Print("No Grenades Left.", 2)\n'
    '		Goto Ready	\n'
    '	}\n'
    '}\n'
    '\n'
    'Actor GaussCannonShot: FastProjectile\n'
    '{\n'
    '+BLOODSPLATTER \n'
    '-DONTSPLASH\n'
    '+RIPPER\n'
    'speed 190\n'
    'damage (random(40,50))\n'
    'scale .9\n'
    'RenderStyle Add\n'
    'Alpha 0.9\n'
    'radius 8\n'
    'Decal Scorch\n'
    'height 8\n'
    '+FORCERADIUSDMG\n'
    '+EXTREMEDEATH\n'
    'Decal "Scorch"\n'
    'States\n'
    '{\n'
    '\n'
    '	Spawn:\n'
    '		TNT1 A 1 BRIGHT A_SpawnItemEx("gaussheavyplasmaTracerTrail", 0,               0,              2)\n'
    '        TNT1 A 0 A_SpawnItemEx("gaussheavyplasmaTracerTrail2", (2 *momx)/-35.0, -(2 *momy)/-35.0, 2+(2 *momz)/-35.0, 0,0,0, 0, SXF_ABSOLUTEANGLE)\n'
    '        TNT1 A 0 A_SpawnItemEx("gaussheavyplasmaTracerTrail3", (4 *momx)/-35.0, -(4 *momy)/-35.0, 2+(4 *momz)/-35.0, 0,0,0, 0, SXF_ABSOLUTEANGLE)\n'
    '        TNT1 A 0 A_SpawnItemEx("gaussheavyplasmaTracerTrail4", (6 *momx)/-35.0, -(6 *momy)/-35.0, 2+(6 *momz)/-35.0, 0,0,0, 0, SXF_ABSOLUTEANGLE)\n'
    '        TNT1 A 0 A_SpawnItemEx("gaussheavyplasmaTracerTrail5", (8 *momx)/-35.0, -(8 *momy)/-35.0, 2+(8 *momz)/-35.0, 0,0,0, 0, SXF_ABSOLUTEANGLE)\n'
    '        TNT1 A 0 A_SpawnItemEx("gaussheavyplasmaTracerTrail6", (10*momx)/-35.0, -(10*momy)/-35.0, 2+(10*momz)/-35.0, 0,0,0, 0, SXF_ABSOLUTEANGLE)\n'
    '        TNT1 A 0 A_SpawnItemEx("gaussheavyplasmaTracerTrail7", (12*momx)/-35.0, -(12*momy)/-35.0, 2+(12*momz)/-35.0, 0,0,0, 0, SXF_ABSOLUTEANGLE)\n'
    '        TNT1 A 0 A_SpawnItemEx("gaussheavyplasmaTracerTrail8", (14*momx)/-35.0, -(14*momy)/-35.0, 2+(14*momz)/-35.0, 0,0,0, 0, SXF_ABSOLUTEANGLE)\n'
    '        TNT1 A 0 A_SpawnItemEx("gaussheavyplasmaTracerTrail9", (16*momx)/-35.0, -(16*momy)/-35.0, 2+(16*momz)/-35.0, 0,0,0, 0, SXF_ABSOLUTEANGLE)\n'
    '        TNT1 A 0 A_SpawnItemEx("gaussheavyplasmaTracerTrail10", (18*momx)/-35.0, -(18*momy)/-35.0, 2+(18*momz)/-35.0, 0,0,0, 0, SXF_ABSOLUTEANGLE)\n'
    '        TNT1 A 0 A_SpawnItemEx("gaussheavyplasmaTracerTrail11", (20*momx)/-35.0, -(20*momy)/-35.0, 2+(20*momz)/-35.0, 0,0,0, 0, SXF_ABSOLUTEANGLE)\n'
    '        TNT1 A 0 A_SpawnItemEx("gaussheavyplasmaTracerTrail12", (22*momx)/-35.0, -(22*momy)/-35.0, 2+(22*momz)/-35.0, 0,0,0, 0, SXF_ABSOLUTEANGLE)\n'
    '		TNT1 A 0 A_CustomMissile ("PlasmaSmoke", 1, 0, random (0, 360), 2, random (0, 160))\n'
    '		TNT1 A 0 A_CustomMissile ("BluePlasmaFireNonStatic", 2, 0, random (0, 360), 2, random (0, 180))\n'
    '		TNT1 AAA 0 A_CustomMissile ("BlueplasmaParticle", 0, 0, random (0, 360))\n'
    '		Loop\n'
    '	Death:\n'
    '		TNT1 AAAAA 0 A_SpawnItem("BlueFlare")\n'
    '		\n'
    '		TNT1 AAAAA 0 A_CustomMissile ("BluePlasmaFireNonStatic", 2, 0, random (0, 360), 2, random (0, 180))\n'
    '		TNT1 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 0 A_CustomMissile ("BlueplasmaParticle", 0, 0, random (0, 360), 2, random (0, 360))\n'
    '		TNT1 A 0 A_CustomMissile("BigRicoChet")\n'
    '        TNT1 A 0 A_SpawnItemEx ("DetectFloorCrater",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION,0)\n'
    '	    TNT1 A 0 A_SpawnItemEx ("DetectCeilCrater",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION,0)\n'
    '	    TNT1 A 0 A_SpawnItemEx ("UnderwaterExplosion",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION,0)\n'
    '		TNT1 A 0 A_PlaySound("FAREXPL", 3)\n'
    '		TNT1 A 0 A_SpawnItemEx ("RocketExplosion",0,0,13,0,0,0,0,SXF_NOCHECKPOSITION,0)\n'
    '		EXPL AAAAAAAAAAAAAAAAA 0 A_CustomMissile ("ExplosionSmokeFast22", 0, 0, random (0, 360), 2, random (0, 360))\n'
    '		BL1I ABCD 1 BRIGHT A_SpawnItem("BlueFlare")\n'
    '		TNT1 A 0 A_SpawnItemEx ("LiquidExplosionEffectSpawner",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION,0)\n'
    '		TNT1 A 0 A_Explode(200, 20)\n'
    '		Stop\n'
    '}\n'
    '}\n'
    '\n'
    'actor gaussheavyplasmaTracerTrail\n'
    '{\n'
    '    Scale 0.4\n'
    '    RenderStyle Add\n'
    '    Alpha 0.9\n'
    '    +NOINTERACTION\n'
    '    +CLIENTSIDEONLY\n'
    '    States\n'
    '    {\n'
    '    Spawn:\n'
    '        SPKB A 2 BRIGHT\n'
    '        stop\n'
    '    }\n'
    '}\n'
    '\n'
    'actor gaussheavyplasmaTracerTrail2: gaussheavyplasmaTracerTrail {    Alpha 0.85 }\n'
    'actor gaussheavyplasmaTracerTrail3: gaussheavyplasmaTracerTrail {    Alpha 0.80 }\n'
    'actor gaussheavyplasmaTracerTrail4: gaussheavyplasmaTracerTrail {    Alpha 0.75 }\n'
    'actor gaussheavyplasmaTracerTrail5: gaussheavyplasmaTracerTrail {    Alpha 0.70 }\n'
    'actor gaussheavyplasmaTracerTrail6: gaussheavyplasmaTracerTrail {    Alpha 0.65 }\n'
    'actor gaussheavyplasmaTracerTrail7: gaussheavyplasmaTracerTrail {    Alpha 0.60 }\n'
    'actor gaussheavyplasmaTracerTrail8: gaussheavyplasmaTracerTrail {    Alpha 0.55 }\n'
    'actor gaussheavyplasmaTracerTrail9: gaussheavyplasmaTracerTrail {    Alpha 0.50 }\n'
    'actor gaussheavyplasmaTracerTrail10: gaussheavyplasmaTracerTrail {    Alpha 0.45 }\n'
    'actor gaussheavyplasmaTracerTrail11: gaussheavyplasmaTracerTrail {    Alpha 0.40 }\n'
    'actor gaussheavyplasmaTracerTrail12: gaussheavyplasmaTracerTrail {    Alpha 0.35 }\n'
    'actor gaussheavyplasmaTracerTrail13: gaussheavyplasmaTracerTrail {    Alpha 0.30 }\n'
    'actor gaussheavyplasmaTracerTrail14: gaussheavyplasmaTracerTrail {    Alpha 0.25 }\n'
    'actor gaussheavyplasmaTracerTrail15: gaussheavyplasmaTracerTrail {    Alpha 0.20 }\n'
    'actor gaussheavyplasmaTracerTrail16: gaussheavyplasmaTracerTrail {    Alpha 0.15 }\n'
    'actor gaussheavyplasmaTracerTrail17: gaussheavyplasmaTracerTrail {    Alpha 0.10 }\n'
    'actor gaussheavyplasmaTracerTrail18: gaussheavyplasmaTracerTrail {    Alpha 0.05 }\n'
	}
    gui.wad_add_text_lump("DECORATE", data);
end

function BRUTALDOOM.epic()
  gui.wad_merge_sections("brutaloblige/brutaloblige.wad")
end

function BRUTALITY.decorate()

  local data =
	{
		'actor ObligeTrite : Trite 303\n'
		'{\n'
		'}\n'
		'\n'
		'actor ObligeFlemoid1 : Flemoid1 304\n'
		'{\n'
		'}\n'
		'\n'
		'actor ObligeFlemoid2 : Flemoid2 305\n'
		'{\n'
		'}\n'
		'\n'
		'actor ObligeFlemoid3 : Flemoid3 306\n'
		'{\n'
		'}\n'
		'\n'
		'actor ObligeEasyMarine : EasyMarine 307\n'
		'{\n'
		'}\n'
		'\n'
		'actor ObligeEpic2Alien : Epic2Alien 309\n'
		'{\n'
			'SeeSound "chainguy/sight"\n'
			'PainSound "chainguy/pain"\n'
			'DeathSound "chainguy/death"\n'
			'ActiveSound "chainguy/active"\n'
			'AttackSound "chainguy/attack"\n'
			'Obituary "%o never saw their attacker"\n'
			'States\n'
			'{\n'
				'See:\n'
					'TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
					'TNT1 AAAAAAAAAAAAAAAAAAA 1 A_Chase("","")\n'
					'TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
					'EPTA ABCD 1 A_Chase\n'
					'TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
					'TNT1 AAAAAAAAAAAAAAAAAAA 1 A_Chase("","")\n'
					'TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
					'EPTA ABCD 1 A_Chase\n'
					'EPTA ABCD 1 A_Chase("","")\n'
					'TNT1 AAAAAAAAAAAAAAAAAAA 1 A_Chase("","")\n'
					'EPTA ABCDABCD 1 A_Chase\n'
					'Loop\n'
				'Missile:\n'
					'EPTA E 9 A_FaceTarget\n'
					'EPTA F 4 A_FaceTarget\n'
					'EPTA G 4 BRIGHT A_CPosAttack\n'
					'EPTA E 9 A_FaceTarget\n'
					'EPTA F 4 A_FaceTarget\n'
					'EPTA G 4 BRIGHT A_CPosAttack\n'
					'EPTA E 9 A_FaceTarget\n'
					'EPTA F 4 A_FaceTarget\n'
					'EPTA G 4 BRIGHT A_CPosAttack\n'
					'EPTA E 9 A_FaceTarget\n'
					'EPTA F 4 A_FaceTarget\n'
					'EPTA G 4 BRIGHT A_CPosAttack\n'
					'Goto See\n'
				'Pain:\n'
					'EPTA H 3 A_Pain\n'
					'Goto See\n'
				'Death:\n'
					'EPTA I 5\n'
					'EPTA J 5 A_Scream\n'
					'EPTA K 5 A_NoBlocking\n'
					'EPTA L 5\n'
					'EPTA M -1\n'
					'Stop\n'
				'XDeath:\n'
					'EPTA N 5 \n'
					'EPTA O 5 A_XScream\n'
					'EPTA P 5 A_NoBlocking\n'
					'EPTA QRSTU 5\n'
					'EPTA V -1\n'
					'Stop\n'
				'Raise:\n'
					'EPTA M 5\n'
					'EPTA LKJI 5\n'
					'Goto See \n'
			'}\n'
		'}\n'
		'\n'
		'actor ObligeQuadrumpus : Quadrumpus 310\n'
		'{\n'
		'}\n'
		'\n'
		'actor ObligeSS : Nazi 311\n'
		'{\n'
		'}\n'
		'\n'
		--from pb's decorate.realm667monsters
		'actor ObligeShadow : Shadow 312\n'
		'{\n'
		'}\n'
		'\n'
		--313 is classic wolfenstein (see starterpack)
	}
    gui.wad_add_text_lump("BRUMONS", data);
end

BRUTALDOOM.music =
{
  songs =
  {
    "d_runnin", "d_runni2", "d_stalks", "d_stlks2", "d_stlks3", "d_countd", "d_count2", "d_betwee", "d_doom", "d_doom2", "d_the_da", "d_theda2", "d_theda3", "d_shawn", "d_shawn2", "d_shawn3", "d_ddtblu", "d_ddtbl2", "d_ddtbl3", "d_in_cit", "d_dead", "d_dead2", "d_romero", "d_romer2", "d_messag", "d_messg2", "d_ampie", "d_adrian", "d_tense", "d_openin", 
    --wolf
    "d_evil", "d_ultima"
  }
}

BRUTALDOOM.doom1songs = --not in the iwad but might be in doom metal etc
{
    "d_e1m1", "d_e1m2", "d_e1m3", "d_e1m4", "d_e1m5", "d_e1m6", "d_e1m7", "d_e1m8", "d_e1m9",
    "d_e2m1", "d_e2m2", "d_e2m3", "d_e2m4", "d_e2m5", "d_e2m6", "d_e2m7", "d_e2m8", "d_e2m9",
    "d_e3m1", "d_e3m2", "d_e3m3", "d_e3m4", "d_e3m5", "d_e3m6", "d_e3m7", "d_e3m8", "d_e3m9"
}

BRUTALDOOM.doom_completesongs =
{
    --tnt
    "t_runnin", "t_runni2", "t_stalks", "t_stlks2", "t_stlks3", "t_countd", "t_count2", "t_betwee", "t_doom", "t_doom2", "t_the_da", "t_theda2", "t_theda3", "t_shawn", "t_shawn2", "t_shawn3", "t_ddtblu", "t_ddtbl2", "t_ddtbl3", "t_in_cit", "t_dead", "t_dead2", "t_romero", "t_romer2", "t_messag", "t_messg2", "t_ampie", "t_adrian", "t_tense", "t_openin", "t_evil", "t_ultima"
    --Plutonia
    "p_runnin", "p_runni2", "p_stalks", "p_stlks2", "p_stlks3", "p_countd", "p_count2", "p_betwee", "p_doom", "p_doom2", "p_the_da", "p_theda2", "p_theda3", "p_shawn", "p_shawn2", "p_shawn3", "p_ddtblu", "p_ddtbl2", "p_ddtbl3", "p_in_cit", "p_dead", "p_dead2", "p_romero", "p_romer2", "p_messag", "p_messg2", "p_ampie", "p_adrian", "p_tense", "p_openin", "p_evil", "p_ultima"
}

BRUTALDOOM.zd64music =
{
	"MAPWD01", "MAPWD02", "MAPWD03", "MAPWD04", "MAPWD05", "MAPWD06", "MAPWD07", "MAPWD08", "MAPWD09", "MAPWD10", "MAPWD11", "MAPWD12",
	"MAPWD13", "MAPWD14", "MAPWD15", "MAPWD16", "MAPWD17", "MAPWD18", "MAPWD19", "MAPWD20", "MAPWD21", "MAPWD22", "MAPWD23", "MAPWD24",
	"MAPWD25", "MAPWD26", "MAPWD27", "MAPWD28", "MAPWD29", "MAPWD30", "MAPWD31", "MAPWD32"
}

BRUTALDOOM.musicpresets =
{
    "iwad", "All music in the iwad"
    "doom2",    "Doom 2 only"
    "doommetal",    "Doom Metal Vol 4"
    "idkfa",    "IDKFA"
    "generic",  "Unspecified music mod (Doom 1 and 2 tracks)"
    "doom1",    "Doom 1 music mod"
	"ZD64MUSIC", "Doom 64"
}

function BRUTALDOOM.mergesongs()
    if BRUTALDOOM.PARAMETERS.musicpreset == "doommetal" or BRUTALDOOM.PARAMETERS.musicpreset == "generic" or (BRUTALDOOM.PARAMETERS.musicpreset == "iwad" and BRUTALDOOM.PARAMETERS.iwad == "doom_complete.pk3") then
        for k,v in pairs(BRUTALDOOM.doom1songs) do table.insert(BRUTALDOOM.music.songs, v) end
    end
    if BRUTALDOOM.PARAMETERS.musicpreset == "iwad" and BRUTALDOOM.PARAMETERS.iwad == "doom_complete.pk3" then
        for k,v in pairs(BRUTALDOOM.doom_completesongs) do table.insert(BRUTALDOOM.music.songs, v) end
    end
    if BRUTALDOOM.PARAMETERS.musicpreset == "idkfa" or BRUTALDOOM.PARAMETERS.musicpreset == "doom1" then --just doom1 songs
        BRUTALDOOM.music.songs=BRUTALDOOM.doom1songs
    end
	if BRUTALDOOM.PARAMETERS.musicpreset == "ZD64MUSIC" then --just the songs in ZD64MUSIC.PK3, which are named differently.
        BRUTALDOOM.music.songs=BRUTALDOOM.zd64music
    end
    gui.printf("iwad: " .. BRUTALDOOM.PARAMETERS.iwad ..'\n')
    gui.printf("Music preset: " .. BRUTALDOOM.PARAMETERS.musicpreset ..'\n')
    gui.printf("Music: \n" .. table.tostring(BRUTALDOOM.music.songs) ..'\n')
end

function DOOMMETAL.setup(self)
    for name,opt in pairs(self.options) do
        local value = self.options[name].value
        if value == "yes" then
            BRUTALDOOM.PARAMETERS[name] = true
        elseif value == "no" then
            BRUTALDOOM.PARAMETERS[name] = false
        else
            BRUTALDOOM.PARAMETERS[name] = value
        end
    end
end

function BRUTALDOOM.gameinfo()

  local data =
  {
      '//ZDoom GAMEINFO lump for Brutal Oblige\n'
  }
        
  table.insert(data,'IWAD="' .. BRUTALDOOM.PARAMETERS.iwad .. '"\n')

  table.insert(data,'LOAD="' .. BRUTALDOOM.PARAMETERS.brutalversion .. '","bfriend1.pk3"')
--throws no error if not found so load it regardless of if that module's actually being used
  if BRUTALDOOM.PARAMETERS.starterpack == true then
      table.insert(data,',"hellonearthstarterpack.wad"')
  end
  if BRUTALDOOM.PARAMETERS.musicpreset == "doommetal" then
      table.insert(data,',"DoomMetalVol4.wad"')
  end
  if BRUTALDOOM.PARAMETERS.musicpreset == "idkfa" then
      table.insert(data,',"IDKFAv2.wad"')
  end
  if BRUTALDOOM.PARAMETERS.musicpreset == "ZD64MUSIC" then
      table.insert(data,',"ZD64MUSIC.PK3"')
  end
  
  table.insert(data,'\n')

  gui.wad_add_text_lump("GAMEINFO", data);
end

function BRUTALITY.gameinfo()

  local data =
	{
	  '//ZDoom GAMEINFO lump for Brutal Oblige\n'
	  'IWAD="Doom2.wad"\n'
	}

  table.insert(data,'LOAD="Project\ Brutality\ 2.03.pk3","hellonearthstarterpack.wad","bfriend1.pk3"')
  
  if BRUTALDOOM.PARAMETERS.doom_metal == true then
      table.insert(data,',"DoomMetalVol4.wad"')
  end
  
  table.insert(data,'\n')

  gui.wad_add_text_lump("GAMEINFO", data);
end

function BRUTALFRIENDS.setup()

  local data =
	{
		'actor ObligeBlurSphere : Blursphere 318\n'
		'{\n'
		'}\n'
                'ACTOR FriendBJ : SwitchableDecoration\n'
                '{\n'
                '	Scale 1.0\n'
                '	Health 140\n'
                '	Radius 16\n'
                '	Height 56\n'
                '	Mass 400\n'
                '	MaxTargetRange 2000\n'
                '	Speed 3\n'
                '	FastSpeed 20\n'
                '	PainChance 250\n'
                '	Species "Marines"\n'
                '	MONSTER\n'
                '	+QUICKTORETALIATE\n'
                '	+LOOKALLAROUND\n'
                '	+PUSHABLE\n'
                '	+SLIDESONWALLS\n'
                '	+FLOORCLIP\n'
                '	-FASTER\n'
                '	+MTHRUSPECIES\n'
                '	+THRUSPECIES\n'
                '	+DONTHURTSPECIES \n'
                '	+NOBLOCKMONST \n'
                '	+USESPECIAL\n'
                '	-CANNOTPUSH\n'
                '	-COUNTKILL\n'
                '	+THRUACTORS\n'
                '	Activation THINGSPEC_Activate\n'
                '	Damage 6\n'
                '	MaxStepHeight 48\n'
                '	MaxDropOffHeight 48\n'
                '	MeleeDamage 4\n'
                '	States\n'
                ' {\n'
                '	Spawn:\n'
                '		 BJBL A 1\n'
                '		 TNT1 A 0 A_GiveInventory("TargetIsAMarine")//Stops multiple sentries from firing at each other.\n'
                '		 BJBL A 1 A_Look\n'
                '		 Loop\n'
                '	ForgetTarget:\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		Goto See\n'
                '	Idle:	\n'
                '	See:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_ChangeFlag("NODROPOFF", 0)	\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 1)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		TNT1 A 0 A_ChangeFlag("MISSILEMORE", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("MISSILEEVENMORE", 1)\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		BJBL AA 1 A_Chase\n'
                '		TNT1 A 0 A_ChangeFlag("FASTER", 0)\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "FollowPLayer")//\n'
                '		BJBL BB 1 A_Chase\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		BJBL BB 1 A_Chase\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		BJBL CC 1 A_Chase\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 1)\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		BJBL CC 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		BJBL DD 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		BJBL DD 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		TNT1 A 0 A_CheckSight("ForgetTarget")\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		TNT1 A 0 A_CheckSight("FollowPLayer")\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)		\n'
                '		BJBL AA 1 A_Chase\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Waits")\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")		\n'
                '		BJBL BB 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "FollowPlayer")\n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Waits")\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")\n'
                '		BJBL CC 1 A_Chase\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "FollowPlayer")\n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Waits")\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")\n'
                '		BJBL DD 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-1)	\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "FollowPlayer")\n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Waits")\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")\n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Waits")\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "FollowPlayer")\n'
                '		Goto See\n'
                '	FollowPlayer:\n'
                '	    TNT1 A 0 A_ChangeFlag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("FASTER", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '	    TNT1 A 0 A_JumpIfCloser(150, "Waits")\n'
                '		TNT1 A 0 A_ChangeFlag("MISSILEMORE", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("MISSILEEVENMORE", 0)\n'
                '		BJBL A 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		BJBL AA 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		BJBL BB 1 A_Chase\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		BJBL BB 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		BJBL CC 1 A_Chase\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		BJBL CC 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		BJBL DD 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		BJBL DD 1 A_Chase\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		BJBL AA 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		NULL A 0 \n'
                '		BJBL BB 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		BJBL BB 1 A_Chase\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		BJBL CC 1 A_Chase\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		BJBL CC 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		BJBL DD 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		BJBL DD 1 A_Chase\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 A_Recoil(-1)\n'
                '		TNT1 A 0 A_ChangeFlag("FRIENDLY", 1)\n'
                '		TNT1 A 0 A_JumpIfTargetInLOS("See")\n'
                '		TNT1 A 0 A_ChangeFlag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")\n'
                '		Loop\n'
                '	CheckRangeToWait:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_JumpIfCloser(150, "Waits")\n'
                '		Goto FollowPLayer\n'
                '	CheckIfPlayerSee:\n'
                '		TNT1 A 0\n'
                '		BJBL AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 0 A_FastChase\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_JumpIfCloser(1000, 2)\n'
                '		Goto Pathfind\n'
                '		TNT1 AAA 0\n'
                '		Goto FollowPlayer\n'
                '	Pathfind:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_JumpIFInTargetInventory("IsPLayer", 1, 1)\n'
                '		Goto FollowPLayer\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("NOBLOCKMAP", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("NOCLIP", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("SOLID", 0)\n'
                '		TNT1 A 0 A_Noblocking\n'
                '		TNT1 A 0 A_SpawnItemEx ("FriendBJPathfinder",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION,0)\n'
                '		Stop\n'
                '	BecomeEnemy23:\n'
                '		BJBL E 1\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		Goto FollowPlayer\n'
                '	Waits:\n'
                '		BJBL E 1\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, 2)\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		Goto See\n'
                '		TNT1 A 0 A_ChangeFlag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("MISSILEMORE", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("MISSILEEVENMORE", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("SOLID", 0)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "BecomeEnemy23")\n'
                '		TNT1 A 0 A_Jump(32, "Waits2")\n'
                '		TNT1 A 0 A_Jump(32, "Waits3")\n'
                '		BJBL E 4 A_Stop\n'
                '		BJBL E 4 A_Stop\n'
                '		TNT1 A 0 A_Stop\n'
                '		TNT1 A 0 A_CheckSight("FollowPlayer")\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 1)\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		BJBL E 0 A_Look\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '		BJBL E 1 A_LookEx(0, 0, 0, 0, 0, "FollowPlayer")\n'
                '		TNT1 A 0 A_CheckSIght("FollowPlayer")\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Waits")\n'
                '		Goto FollowPlayer\n'
                '	Waits2:\n'
                '		TNT1 A 0 A_SetAngle(random(90, -90) + angle)\n'
                '		BJBL E 6 A_Stop\n'
                '		TNT1 A 0\n'
                '		BJBL E 6 A_Stop\n'
                '		TNT1 A 0 A_CheckSight("FollowPlayer")\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 1)\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		BJBL A 0 A_Look\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '		BJBL E 1 A_LookEx(0, 0, 0, 0, 0, "FollowPlayer")\n'
                '		TNT1 A 0 A_CheckSIght("FollowPlayer")\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		TNT1 A 0 A_JumpIfCloser(300, "Waits")\n'
                '		Goto FollowPLayer\n'
                '	Waits3:\n'
                '		TNT1 A 0\n'
                '		TNT1 AAA 0\n'
                '		TNT1 A 0 A_SetAngle(random(90, -90) + angle)\n'
                '		BJBL E 4 A_Stop\n'
                '		TNT1 A 0\n'
                '		BJBL E 4 A_Stop\n'
                '		TNT1 A 0 A_CheckSight("FollowPlayer")\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 1)\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		BJBL A 0 A_Look\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '		BJBL E 1 A_LookEx(0, 0, 0, 0, 0, "FollowPlayer")\n'
                '		TNT1 A 0 A_CheckSIght("FollowPlayer")\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		TNT1 A 0 A_JumpIfCloser(300, "Waits")\n'
                '		Goto FollowPLayer\n'
                '	Missile:\n'
                '        TNT1 A 0\n'
                '        TNT1 A 0 A_ChangeFlag("NODROPOFF", 1)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsACyberdemon", 1, "CheckRetreat") // Brutal Doom-friendly realistic AI.\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMastermind", 1, "CheckRetreat")//...\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsABaronOfHell", 1, "CheckRetreat")//...\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMancubus", 1, "CheckRetreat")//...\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPlayer")////Never remove this one!\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "CheckRangeToWait")\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("SOLID", 1)\n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Retreat")\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		BJBL A 1 A_Chase ("","")\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "CheckRangeToWait")	\n'
                '	ActualFireState:\n'
                '		BJBL E 6 A_FaceTarget\n'
                '		TNT1 A 0 A_PlaySound("weapons/pistol", 1)\n'
                '		TNT1 A 0 A_CustomMissile("BFMarineProjectile",32,0)\n'
                '		BJBL F 3 BRIGHT\n'
                '		BJBL E 5 A_FaceTarget\n'
                '		TNT1 A 0 A_PlaySound("weapons/pistol", 1)\n'
                '		TNT1 A 0 A_CustomMissile("BFMarineProjectile",32,0)\n'
                '		BJBL F 3 BRIGHT\n'
                '		BJBL E 5 A_FaceTarget\n'
                '		TNT1 A 0 A_PlaySound("weapons/pistol", 1)\n'
                '		TNT1 A 0 A_CustomMissile("BFMarineProjectile",32,0)\n'
                '		BJBL F 3 BRIGHT\n'
                '		Goto See\n'
                '	CheckRetreat:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_JumpIfCloser(300, "Retreat")\n'
                '		Goto ActualFireState\n'
                '	Retreat:\n'
                '		TNT1 A 0\n'
                '		BJBL A 2 A_Recoil(4)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		NULL A 0 \n'
                '		BJBL B 2 A_Recoil(4)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		NULL A 0 \n'
                '		BJBL C 2 A_Recoil(4)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		BJBL D 2 A_Recoil(4)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		Goto ActualFireState\n'
                '	Pain:\n'
                '		BJBL G 2\n'
                '		TNT1 A 0 A_PlaySound("*pain")\n'
                '		BJBL G 2 A_Pain\n'
                '		Goto See + 1\n'
                '	Active:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_CustomMissile ("OrderTitle2", 10, 0, 0, 2, 90)\n'
                '		BJBL A 10 A_FaceTarget\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("NOBLOCKMAP", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("USESPECIAL", 0)\n'
                '		TNT1 A 0 A_SpawnItemEx ("FriendBJ_Guarding",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION,0)\n'
                '		TNT1 A 1\n'
                '		TNT1 A -1\n'
                '		Stop\n'
                '	Death:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_ChangeFlag("USESPECIAL", 0) //Always add this line on every death animation, to prevent the player from resurrecting the actor by pressing use.\n'
                '		TNT1 A 0 A_PlaySound("DSPDIEHI", 3)\n'
                '		BJBL I 6 A_NoBlocking\n'
                '		BJBL JKLM 6\n'
                '		BJBL M -1\n'
                '		Stop\n'
                '	XDeath:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_ChangeFlag("USESPECIAL", 0) //Always add this line on every death animation, to prevent the player from resurrecting the actor by pressing use.\n'
                '		TNT1 A 0 A_PlaySound("DSPDIEHI", 3)\n'
                '		BJGB ABCD 6 A_NoBlocking\n'
                '		BJGB EFGHI 6\n'
                '		BJGB J -1\n'
                '		Stop\n'
                ' }\n'
                '}\n'
                'ACTOR FriendBJ_Guarding : FriendBJ\n'
                '{\n'
                '	Speed 0\n'
                '	FastSpeed 0\n'
                '	+FRIENDLY\n'
                '	Mass 500\n'
                '	States\n'
                ' {\n'
                '	Spawn:\n'
                '		 TNT1 A 0\n'
                '		 TNT1 A 0 A_GiveInventory("TargetIsAMarine", 1)\n'
                '		 BJBL E 4\n'
                '		 TNT1 A 0 A_ChangeFLag("FRIENDLY", 1)\n'
                '		 TNT1 A 0 A_GiveInventory("TargetIsAMarine")//Stops multiple sentries from firing at each other.\n'
                '		 BJBL E 4 A_Look\n'
                '		 Loop\n'
                '	See:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		BJBL EEEEEEEEE 2 A_Chase\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		Loop\n'
                '	See2:	\n'
                '		BJBL EE 2\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		Goto See\n'
                '	Missile:\n'
                '        TNT1 A 0\n'
                '        TNT1 A 0 A_ChangeFlag("NODROPOFF", 1)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsACyberdemon", 1, "CheckRetreat") // Brutal Doom-friendly realistic AI.\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMastermind", 1, "CheckRetreat")//...\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsABaronOfHell", 1, "CheckRetreat")//...\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMancubus", 1, "CheckRetreat")//...\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPlayer")////Never remove this one!\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "CheckRangeToWait")\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("SOLID", 1)\n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Retreat")\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "CheckRangeToWait")\n'
                '	ActualFireState:\n'
                '		BJBL E 2 A_FaceTarget\n'
                '		TNT1 A 0 A_PlaySound("weapons/pistol", 1)\n'
                '		TNT1 A 0 A_CustomMissile("BFMarineProjectile",32,0)\n'
                '		BJBL F 3 BRIGHT\n'
                '		BJBL E 5 A_FaceTarget\n'
                '		TNT1 A 0 A_PlaySound("weapons/pistol", 1)\n'
                '		TNT1 A 0 A_CustomMissile("BFMarineProjectile",32,0)\n'
                '		BJBL F 3 BRIGHT\n'
                '		BJBL E 5 A_FaceTarget\n'
                '		TNT1 A 0 A_PlaySound("weapons/pistol", 1)\n'
                '		TNT1 A 0 A_CustomMissile("BFMarineProjectile",32,0)\n'
                '		BJBL F 3 BRIGHT\n'
                '		Goto See\n'
                '	CheckRetreat:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_JumpIfCloser(300, "Retreat")\n'
                '		Goto ActualFireState\n'
                '	Retreat:\n'
                '		TNT1 A 0\n'
                '		BJBL A 2 A_Recoil(4)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		NULL A 0 \n'
                '		BJBL B 2 A_Recoil(4)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		NULL A 0 \n'
                '		BJBL C 2 A_Recoil(4)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		BJBL D 2 A_Recoil(4)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		Goto ActualFireState\n'
                '	Pain:\n'
                '		BJBL G 2\n'
                '		TNT1 A 0 A_PlaySound("*pain")\n'
                '		BJBL G 2 A_Pain\n'
                '		Goto See + 1\n'
                '  	Death:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_ChangeFlag("USESPECIAL", 0) //Always add this line on every death animation, to prevent the player from resurrecting the actor by pressing use.\n'
                '		TNT1 A 0 A_PlaySound("DSPDIEHI", 3)\n'
                '		BJBL I 6 A_NoBlocking\n'
                '		BJBL JKLM 6\n'
                '		BJBL M -1\n'
                '		Stop\n'
                '  	Active:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_CustomMissile ("OrderTitle1", 10, 0, 0, 2, 90)\n'
                '		BJBL A 10 A_FaceTarget\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("NOBLOCKMAP", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("USESPECIAL", 0)\n'
                '		TNT1 A 0 A_SpawnItemEx ("FriendBJ",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION,0)\n'
                '		TNT1 A 1\n'
                '		TNT1 A -1\n'
                '		Stop\n'
                ' }\n'
                '}\n'
                'ACTOR FriendBJPathfinder\n'
                '{\n'
                '	Radius 32\n'
                '	Height 56\n'
                '	Speed 20\n'
                '	Health 4000\n'
                '	PainChance 255\n'
                '	MaxTargetRange 150\n'
                '	Monster\n'
                '	damagefactor "SpawnMarine", 99999.0\n'
                '	MaxDropOffHeight 1200\n'
                '	MaxStepHeight 1200\n'
                '	-COUNTKILL\n'
                '	+NOTARGET\n'
                '	+THRUACTORS\n'
                '	+MISSILEMORE\n'
                '	+MISSILEEVENMORE\n'
                '	+FASTER\n'
                '    +DONTSPLASH\n'
                '	+SHOOTABLE\n'
                '	-FRIENDLY\n'
                '	+NOCLIP\n'
                '	+LOOKALLAROUND\n'
                '	+NOINFIGHTING\n'
                '	States\n'
                '	{\n'
                '	Spawn:\n'
                '	Pain:\n'
                '    See:\n'
                '		TNT1 A 0 A_ChangeFlag("FRIENDLY", 0)\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_GiveInventory("TargetIsAMarine", 1)\n'
                '		TNT1 AAAAA 1 A_Chase\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_GiveInventory("TargetIsAMarine", 1)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		Loop\n'
                '	Death:\n'
                '	Missile:\n'
                '	    TNT1 A 0\n'
                '		TNT1 A 1 A_FaceTarget\n'
                '	    TNT1 A 0 A_Recoil(-6)\n'
                '		TNT1 A 4\n'
                '		TNT1 A 0 A_Scream\n'
                '		TNT1 A 0 A_NoBlocking\n'
                '		TNT1 A 0 A_SpawnItemEx("FriendBJ",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION,0)\n'
                '		TNT1 A 0 A_SpawnItem("TeleportFog")\n'
                '		Stop\n'
                '	}\n'
                '}\n'
                'Actor EnemyMarine3: EasyMarine 319\n'
                '{\n'
                '//$Category "Monsters/Evil Marines"\n'
                '//$EditorSprite "NPM2A1"\n'
                'Tag "Evil Grunt (alt)"\n'
                'Translation "112:127=[64,64,64]:[0,0,0]"\n'
                'PainSound "DSIPAIN"\n'
                'DeathSound "DSIDETH"\n'
                'ActiveSound ""\n'
                'States\n'
                '{\n'
                'Spawn:\n'
                '		NPM2 A 3 A_Look\n'
                '		TNT1 A 0 A_GiveInventory("IsAnEvilMarine", 1)\n'
                '		Loop\n'
                '\n'
                'Missile:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsAnEvilMarine", 1, "WrongTarget")\n'
                '		TNT1 A 0 A_Recoil(-4)\n'
                '		TNT1 A 0 A_Jump(192, "MissileLeft", "MissileRight")\n'
                '		NPM2 E 6 A_FaceTarget\n'
                '		TNT1 A 0 A_CustomMissile("MarineMuzzle1", 36, 20, 15, 0)\n'
                '		TNT1 A 0 A_CustomMissile("OrangeLensFlareAlt", 36, 20, 15, 0)\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_SpawnItem ("RifleCaseSpawn", 0, 30,0)\n'
                '		NPM2 F 3 BRIGHT A_CustomMissile("ZombiemanTracer",35,0,0,0)\n'
                '		NPM2 E 3 A_Facetarget\n'
                '		TNT1 A 0 A_CustomMissile("MarineMuzzle1", 36, 20, 15, 0)\n'
                '		TNT1 A 0 A_CustomMissile("OrangeLensFlareAlt", 36, 20, 15, 0)\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_SpawnItem ("RifleCaseSpawn", 0, 30,0)\n'
                '		NPM2 F 3 BRIGHT A_CustomMissile("ZombiemanTracer",35,0,0,0)\n'
                '		NPM2 E 3 A_Facetarget\n'
                '		TNT1 A 0 A_CustomMissile("MarineMuzzle1", 36, 20, 15, 0)\n'
                '		TNT1 A 0 A_CustomMissile("OrangeLensFlareAlt", 36, 20, 15, 0)\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_SpawnItem ("RifleCaseSpawn", 0, 30,0)\n'
                '		NPM2 F 3 BRIGHT A_CustomMissile("ZombiemanTracer",35,0,0,0)\n'
                '		NPM2 E 6 A_Facetarget\n'
                '		Goto ChasePlayer\n'
                '		\n'
                '	MissileLeft:\n'
                '		TNT1 A 0\n'
                '		NPM2 E 3 A_FaceTarget\n'
                '		TNT1 A 0 ThrustThing(angle*256/360+192, 9, 0, 0)\n'
                '		TNT1 A 0 A_CustomMissile("MarineMuzzle1", 36, 20, 15, 0)\n'
                '		TNT1 A 0 A_CustomMissile("OrangeLensFlareAlt", 36, 20, 15, 0)\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_SpawnItem ("RifleCaseSpawn", 0, 30,0)\n'
                '		NPM2 F 3 BRIGHT A_CustomMissile("ZombiemanTracer",35,0,0,0)\n'
                '		NPM2 E 2 A_Facetarget\n'
                '		TNT1 A 0 A_CustomMissile("MarineMuzzle1", 36, 20, 15, 0)\n'
                '		TNT1 A 0 A_CustomMissile("OrangeLensFlareAlt", 36, 20, 15, 0)\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_SpawnItem ("RifleCaseSpawn", 0, 30,0)\n'
                '		NPM2 E 3 BRIGHT A_CustomMissile("ZombiemanTracer",35,0,0,0)\n'
                '		NPM2 E 2 A_Facetarget\n'
                '		TNT1 A 0 A_CustomMissile("MarineMuzzle1", 36, 20, 15, 0)\n'
                '		TNT1 A 0 A_CustomMissile("OrangeLensFlareAlt", 36, 20, 15, 0)\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_SpawnItem ("RifleCaseSpawn", 0, 30,0)\n'
                '		NPM2 E 3 BRIGHT A_CustomMissile("ZombiemanTracer",35,0,0,0)\n'
                '		NPM2 E 3 A_FaceTarget\n'
                '		TNT1 A 0 A_CustomMissile("MarineMuzzle1", 36, 20, 15, 0)\n'
                '		TNT1 A 0 A_CustomMissile("OrangeLensFlareAlt", 36, 20, 15, 0)\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_SpawnItem ("RifleCaseSpawn", 0, 30,0)\n'
                '		TNT1 A 0 ThrustThing(angle*256/360+192, 9, 0, 0)\n'
                '		NPM2 F 3 BRIGHT A_CustomMissile("ZombiemanTracer",35,0,0,0)\n'
                '		NPM2 E 2 A_Facetarget\n'
                '		TNT1 A 0 A_CustomMissile("MarineMuzzle1", 36, 20, 15, 0)\n'
                '		TNT1 A 0 A_CustomMissile("OrangeLensFlareAlt", 36, 20, 15, 0)\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_SpawnItem ("RifleCaseSpawn", 0, 30,0)\n'
                '		NPM2 E 3 BRIGHT A_CustomMissile("ZombiemanTracer",35,0,0,0)\n'
                '		NPM2 E 2 A_Facetarget\n'
                '		TNT1 A 0 A_CustomMissile("MarineMuzzle1", 36, 20, 15, 0)\n'
                '		TNT1 A 0 A_CustomMissile("OrangeLensFlareAlt", 36, 20, 15, 0)\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_SpawnItem ("RifleCaseSpawn", 0, 30,0)\n'
                '		NPM2 E 3 BRIGHT A_CustomMissile("ZombiemanTracer",35,0,0,0)\n'
                '		NPM2 F 4 A_Facetarget\n'
                '		Goto ChasePlayer\n'
                '		\n'
                '	MissileRight:\n'
                '		TNT1 A 0\n'
                '		NPM2 E 3 A_FaceTarget\n'
                '		TNT1 A 0 ThrustThing(angle*256/360+64, 9, 0, 0)\n'
                '		TNT1 A 0 A_CustomMissile("MarineMuzzle1", 36, 20, 15, 0)\n'
                '		TNT1 A 0 A_CustomMissile("OrangeLensFlareAlt", 36, 20, 15, 0)\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_SpawnItem ("RifleCaseSpawn", 0, 30,0)\n'
                '		NPM2 F 3 BRIGHT A_CustomMissile("ZombiemanTracer",35,0,0,0)\n'
                '		NPM2 E 2 A_Facetarget\n'
                '		TNT1 A 0 A_CustomMissile("MarineMuzzle1", 36, 20, 15, 0)\n'
                '		TNT1 A 0 A_CustomMissile("OrangeLensFlareAlt", 36, 20, 15, 0)\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_SpawnItem ("RifleCaseSpawn", 0, 30,0)\n'
                '		NPM2 E 3 BRIGHT A_CustomMissile("ZombiemanTracer",35,0,0,0)\n'
                '		NPM2 E 2 A_Facetarget\n'
                '		TNT1 A 0 A_CustomMissile("MarineMuzzle1", 36, 20, 15, 0)\n'
                '		TNT1 A 0 A_CustomMissile("OrangeLensFlareAlt", 36, 20, 15, 0)\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_SpawnItem ("RifleCaseSpawn", 0, 30,0)\n'
                '		NPM2 E 3 BRIGHT A_CustomMissile("ZombiemanTracer",35,0,0,0)\n'
                '		NPM2 E 3 A_FaceTarget\n'
                '		TNT1 A 0 A_CustomMissile("MarineMuzzle1", 36, 20, 15, 0)\n'
                '		TNT1 A 0 A_CustomMissile("OrangeLensFlareAlt", 36, 20, 15, 0)\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_SpawnItem ("RifleCaseSpawn", 0, 30,0)\n'
                '		TNT1 A 0 ThrustThing(angle*256/360+64, 9, 0, 0)\n'
                '		NPM2 F 3 BRIGHT A_CustomMissile("ZombiemanTracer",35,0,0,0)\n'
                '		NPM2 E 2 A_Facetarget\n'
                '		TNT1 A 0 A_CustomMissile("MarineMuzzle1", 36, 20, 15, 0)\n'
                '		TNT1 A 0 A_CustomMissile("OrangeLensFlareAlt", 36, 20, 15, 0)\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_SpawnItem ("RifleCaseSpawn", 0, 30,0)\n'
                '		NPM2 E 3 BRIGHT A_CustomMissile("ZombiemanTracer",35,0,0,0)\n'
                '		NPM2 E 2 A_Facetarget\n'
                '		TNT1 A 0 A_CustomMissile("MarineMuzzle1", 36, 20, 15, 0)\n'
                '		TNT1 A 0 A_CustomMissile("OrangeLensFlareAlt", 36, 20, 15, 0)\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_SpawnItem ("RifleCaseSpawn", 0, 30,0)\n'
                '		NPM2 E 3 BRIGHT A_CustomMissile("ZombiemanTracer",35,0,0,0)\n'
                '		NPM2 F 4 A_Facetarget\n'
                '		Goto ChasePlayer	\n'
                '		\n'
                '	Pain:\n'
                '		NPM2 G 3 A_Pain\n'
                '		NPM2 G 3\n'
                '		Goto ChasePlayer\n'
                '       Death.Cutless:\n'
                '       Death:\n'
                '                TNT1 A 0\n'
                '                TNT1 A 0 A_PlaySound("DSIDETH", 3)\n'
                '                NPM2 I 6 A_NoBlocking\n'
                '                NPM2 JKLM 6\n'
                '                NPM2 M -1\n'
                '                Stop\n'
                '       Death.Bullet:\n'
                '               TNT1 A 0 A_CustomMissile ("MuchBlood", 50, 0, random (0, 360), 2, random (0, 160))\n'
                '               NPM2 H 10 A_PlaySound("DSIDETH", 3)\n'
                '               NPM2 I 10 A_NoBlocking\n'
                '               NPM2 J 10 \n'
                '               TNT1 A 0 A_SpawnItem("RemoveMarine")\n'
                '               NPM2 KLM 10\n'
                '               TNT1 A 0 A_SpawnItem ("MediumBloodSpot")\n'
                '               NPM2 N -1\n'
                '               Stop\n'
                'See:\n'
                'ChasePlayer:\n'
                '		NPM2 AAAA 1 A_Chase//("","")\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 BBBB 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 CCCC 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 DDDD 1 A_Chase\n'
                '		\n'
                '		NPM2 AAAA 1 A_Chase//("","")\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 BBBB 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 CCCC 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 DDDD 1 A_Chase\n'
                '		\n'
                '		NPM2 AAAA 1 A_Chase//("","")\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 BBBB 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 CCCC 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 DDDD 1 A_Chase\n'
                '		\n'
                '		NPM2 AAAA 1 A_Chase//("","")\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 BBBB 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 CCCC 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 DDDD 1 A_Chase\n'
                '		\n'
                '		NPM2 AAAA 1 A_Chase//("","")\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 BBBB 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 CCCC 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 DDDD 1 A_Chase\n'
                '		\n'
                '		NPM2 AAAA 1 A_Chase//("","")\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 BBBB 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 CCCC 1 A_Chase\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		\n'
                '		TNT1 A 0 A_ChangeFlag("FRIENDLY", 1)\n'
                '		NPM2 DDDD 1 A_Chase\n'
                '		TNT1 A 0 A_ChangeFlag("FRIENDLY", 0)\n'
                '		Loop\n'
                'WrongTarget:\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		TNT1 A 0 A_ChangeFlag("FRIENDLY", 0)\n'
                '		NPM2 AAAABBBBCCCCDDDDAAABBBBCCCCDDDDAAABBBBCCCCDDDDAAABBBBCCCCDDDDAAABBBBCCCCDDDDAAABBBBCCCCDDDD 1 A_Chase\n'
                '		Goto ChasePlayer\n'
                'Idle:\n'
                '		NPM2 AAAAAAA 5 A_Look\n'
                '		TNT1 A 0 A_Jump(32, 3)\n'
                '		TNT1 A 0 A_SetAngle(angle - 40)\n'
                '		NPM2 AA 5 A_Look\n'
                '		TNT1 A 0 A_SetAngle(angle + 40)\n'
                '		NPM2 A 5 A_Look\n'
                '		TNT1 A 0 A_Jump(32, 3)\n'
                '		TNT1 A 0 A_SetAngle(angle + 40)\n'
                '		NPM2 AAAA 5 A_Look\n'
                '		TNT1 A 0 A_SetAngle(angle - 40)\n'
                '		NPM2 AAA 5 A_Look\n'
                '		\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 BBBB 2 A_Wander\n'
                '		TNT1 A 0 A_Look\n'
                '		\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 CCCC 2 A_Wander\n'
                '		TNT1 A 0 A_Look\n'
                '		\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 DDDD 2 A_Wander\n'
                '		TNT1 A 0 A_Look\n'
                '		\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 AAAA 2 A_Wander\n'
                '		TNT1 A 0 A_Look\n'
                '		\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 BBBB 2 A_Wander\n'
                '		TNT1 A 0 A_Look\n'
                '		\n'
                '		TNT1 A 0 A_Recoil(-2)\n'
                '		NPM2 CCCC 2 A_Wander\n'
                '		TNT1 A 0 A_Look\n'
                '		Loop\n'
                '		\n'
                '	Steady:\n'
                '		NPM2 A 5 A_Look\n'
                '		Loop\n'
                '}\n'
                '}\n'
                '\n'
                'actor BrutalFriendWolfenstein : RandomSpawner\n'
                '{\n'
                '    DropItem "FriendMarine1"\n'
                '    DropItem "FriendMarine2"\n'
                '    DropItem "FriendMarine3"\n'
                '    DropItem "FriendMarine4"\n'
                '    DropItem "FriendMarine5"\n'
                '    DropItem "FriendBJ"//replaces the dog\n'
                '    DropItem "Sentrybot"\n'
                '}\n'
                '\n'
                'ACTOR BrutalFriendTeleporterDroppersOblige : BrutalFriendTeleporterDroppers replaces BrutalFriendTeleporterDroppers \n'
                '{\n'
                    'States\n'
                    '{\n'
                        'Death:\n'
                        'TLPR A 1\n'
                        'TLPR A 15\n'
                        'TNT1 A 0 A_CheckProximity("WolfFriends","GermanDog",32767,1,CPXF_NOZ | CPXF_COUNTDEAD)//32767 is the largest zdoom allows\n'
                        'TNT1 A 0 A_CheckProximity("WolfFriends","ObligeSS",32767,1,CPXF_NOZ | CPXF_COUNTDEAD)\n'
                        'TNT1 A 0 A_CheckProximity("WolfFriends","classicwolf",32767,1,CPXF_NOZ | CPXF_COUNTDEAD)\n'
                        'TNT1 A 0 A_SpawnItem("BrutalFriend",0,5)\n'
                        'TNT1 A 0 A_SpawnItem("TeleportFog",0,5)\n'
                        'TLPR A 10\n'
                        'Stop\n'
                        'WolfFriends:\n'
                        'TNT1 A 0 A_SpawnItem("BrutalFriendWolfenstein",0,5)\n'
                        'TNT1 A 0 A_SpawnItem("TeleportFog",0,5)\n'
                        'TLPR A 10\n'
                        'Stop\n'
                    '}\n'
                '}\n'
                '\n'
                'ACTOR FriendHissyFixed : SwitchableDecoration replaces FriendHissy\n'
                '{\n'
                '	Scale 1.0\n'
                '	Health 140\n'
                '	Radius 16\n'
                '	Height 56\n'
                '	Mass 400\n'
                '	MaxTargetRange 2000\n'
                '	Speed 9\n'
                '	FastSpeed 20\n'
                '	PainChance 250\n'
                '	Species "Marines"\n'
                '	+FLOATBOB\n'
                '	MONSTER\n'
                '	+QUICKTORETALIATE\n'
                '	+LOOKALLAROUND\n'
                '	+PUSHABLE\n'
                '	+SLIDESONWALLS\n'
                '	+FLOORCLIP\n'
                '	-FASTER\n'
                '	+MTHRUSPECIES\n'
                '	+THRUSPECIES\n'
                '	+DONTHURTSPECIES \n'
                '	+NOBLOCKMONST \n'
                '	+USESPECIAL\n'
                '	-CANNOTPUSH\n'
                '	-COUNTKILL\n'
                '	+FLOAT\n'
                '	+NOGRAVITY\n'
                '	+THRUACTORS\n'
                '	Activation THINGSPEC_Activate\n'
                '	Damage 6\n'
                '	MaxStepHeight 48\n'
                '	MaxDropOffHeight 48\n'
                '	MeleeDamage 4\n'
                '	States\n'
                ' {\n'
                ' \n'
                '\n'
                '	Spawn:\n'
                '		 HISS A 1\n'
                '		 TNT1 A 0 A_GiveInventory("TargetIsAMarine")//Stops multiple sentries from firing at each other.\n'
                '		 HISS A 1 A_Look\n'
                '		 Loop\n'
                '		 \n'
                '	\n'
                '	ForgetTarget:\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		Goto See\n'
                '		\n'
                '		\n'
                '		\n'
                '	Idle:	\n'
                '	See:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_ChangeFlag("NODROPOFF", 0)	\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 1)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		\n'
                '		\n'
                '		\n'
                '		TNT1 A 0 A_ChangeFlag("MISSILEMORE", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("MISSILEEVENMORE", 1)\n'
                '		TNT1 A 0 \n'
                '		\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		HISS AA 1 A_Chase\n'
                '		TNT1 A 0 A_ChangeFlag("FASTER", 0)\n'
                '		TNT1 A 0 \n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "FollowPLayer")//\n'
                '		HISS AA 1 A_Chase\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 \n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		HISS AA 1 A_Chase\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 \n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		HISS AA 1 A_Chase\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 1)\n'
                '		TNT1 A 0 \n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		HISS AA 1 A_Chase\n'
                '		TNT1 A 0 \n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		HISS AA 1 A_Chase\n'
                '		\n'
                '		TNT1 A 0 \n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		HISS AA 1 A_Chase\n'
                '		TNT1 A 0 \n'
                '		TNT1 A 0 A_CheckSight("ForgetTarget")\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPLayer")//\n'
                '		TNT1 A 0 A_CheckSight("FollowPLayer")\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '		\n'
                '		HISS AA 1 A_Chase\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 \n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Waits")\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")\n'
                '		\n'
                '		HISS AA 1 A_Chase\n'
                '		TNT1 A 0 \n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "FollowPlayer")\n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Waits")\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")\n'
                '		\n'
                '		HISS AA 1 A_Chase\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 \n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "FollowPlayer")\n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Waits")\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")\n'
                '		\n'
                '		HISS AA 1 A_Chase\n'
                '		TNT1 A 0 \n'
                '		\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "FollowPlayer")\n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Waits")\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")\n'
                '		\n'
                '		\n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Waits")\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "FollowPlayer")\n'
                '		Goto See\n'
                '		\n'
                '		\n'
                '		\n'
                '	FollowPlayer:\n'
                '	    TNT1 A 0 A_ChangeFlag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("FASTER", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '	    TNT1 A 0 A_JumpIfCloser(150, "Waits")\n'
                '		TNT1 A 0 A_ChangeFlag("MISSILEMORE", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("MISSILEEVENMORE", 0)\n'
                '		HISS A 1 A_Chase\n'
                '		\n'
                '		TNT1 A 0 \n'
                '		TNT1 A 0 \n'
                '		HISS AA 1 A_Chase\n'
                '		TNT1 A 0 \n'
                '		HISS AA 1 A_Chase\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 \n'
                '		HISS AA 1 A_Chase\n'
                '		TNT1 A 0 \n'
                '		HISS AA 1 A_Chase\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 \n'
                '		HISS AA 1 A_Chase\n'
                '		TNT1 A 0 \n'
                '		HISS AA 1 A_Chase\n'
                '		\n'
                '		TNT1 A 0 \n'
                '		HISS AA 1 A_Chase\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")\n'
                '		TNT1 A 0 \n'
                '		\n'
                '		HISS AA 1 A_Chase\n'
                '		TNT1 A 0 \n'
                '		NULL A 0 \n'
                '		HISS AA 1 A_Chase\n'
                '		TNT1 A 0 \n'
                '		HISS AA 1 A_Chase\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 \n'
                '		HISS AA 1 A_Chase\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")\n'
                '		TNT1 A 0 \n'
                '		HISS AA 1 A_Chase\n'
                '		\n'
                '		TNT1 A 0 \n'
                '		HISS AA 1 A_Chase\n'
                '		TNT1 A 0 \n'
                '		HISS AA 1 A_Chase\n'
                '		NULL A 0 \n'
                '		TNT1 A 0 \n'
                '		\n'
                '		TNT1 A 0 A_ChangeFlag("FRIENDLY", 1)\n'
                '		TNT1 A 0 A_JumpIfTargetInLOS("See")\n'
                '		TNT1 A 0 A_ChangeFlag("FRIENDLY", 0)\n'
                '		\n'
                '		\n'
                '		TNT1 A 0 A_CheckSight("CheckIfPlayerSee")\n'
                '		Loop\n'
                '	\n'
                '	CheckRangeToWait:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_JumpIfCloser(150, "Waits")\n'
                '		Goto FollowPLayer\n'
                '	\n'
                '	CheckIfPlayerSee:\n'
                '		TNT1 A 0\n'
                '		HISS AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 0 A_FastChase\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		////TNT1 A 0 Thing_Hate(94, 0, 0)\n'
                '		TNT1 A 0 A_JumpIfCloser(1000, 2)\n'
                '		Goto Pathfind\n'
                '		TNT1 AAA 0\n'
                '		Goto FollowPlayer\n'
                '	\n'
                '	\n'
                '	\n'
                '	Pathfind:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_JumpIFInTargetInventory("IsPLayer", 1, 1)\n'
                '		Goto FollowPLayer\n'
                '		//TNT1 A 1 A_Chase("", "")\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("NOBLOCKMAP", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("NOCLIP", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("SOLID", 0)\n'
                '		TNT1 A 0 A_Noblocking\n'
                '		TNT1 A 0 A_SpawnItemEx ("FriendHissyPathfinder",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION,0)\n'
                '		Stop\n'
                '	\n'
                '	BecomeEnemy23:\n'
                '		HISS A 1\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		Goto FollowPlayer\n'
                '	\n'
                '	Waits:\n'
                '		HISS A 1\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, 2)\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		Goto See\n'
                '		TNT1 A 0 A_ChangeFlag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("MISSILEMORE", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("MISSILEEVENMORE", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("SOLID", 0)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "BecomeEnemy23")\n'
                '		TNT1 A 0 A_Jump(32, "Waits2")\n'
                '		TNT1 A 0 A_Jump(32, "Waits3")\n'
                '		\n'
                '		HISS A 4 A_Stop\n'
                '		HISS A 4 A_Stop\n'
                '		TNT1 A 0 A_Stop\n'
                '		TNT1 A 0 A_CheckSight("FollowPlayer")\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 1)\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		HISS A 0 A_Look\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '		HISS A 1 A_LookEx(0, 0, 0, 0, 0, "FollowPlayer")\n'
                '		TNT1 A 0 A_CheckSIght("FollowPlayer")\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Waits")\n'
                '		Goto FollowPlayer\n'
                '	\n'
                '	Waits2:\n'
                '		TNT1 A 0 A_SetAngle(random(90, -90) + angle)\n'
                '		HISS A 6 A_Stop\n'
                '		TNT1 A 0 //A_PlaySound("MRNWT", 2)\n'
                '		HISS A 6 A_Stop\n'
                '		TNT1 A 0 A_CheckSight("FollowPlayer")\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 1)\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		HISS A 0 A_Look\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '		HISS A 1 A_LookEx(0, 0, 0, 0, 0, "FollowPlayer")\n'
                '		TNT1 A 0 A_CheckSIght("FollowPlayer")\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		TNT1 A 0 A_JumpIfCloser(300, "Waits")\n'
                '		Goto FollowPLayer\n'
                '	\n'
                '	Waits3:\n'
                '		TNT1 A 0\n'
                '		//TNT1 A 0 A_JumpIfInTargetInventory("Clip2", 40, 3)\n'
                '		//Goto GiveAmmo\n'
                '		TNT1 AAA 0\n'
                '		TNT1 A 0 A_SetAngle(random(90, -90) + angle)\n'
                '		HISS A 4 A_Stop\n'
                '		TNT1 A 0 //A_PlaySound("MRNWC", 2)\n'
                '		HISS A 4 A_Stop\n'
                '		HISS DED 1 A_Stop\n'
                '		TNT1 A 0 A_CheckSight("FollowPlayer")\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 1)\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		HISS A 0 A_Look\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 0)\n'
                '		HISS A 1 A_LookEx(0, 0, 0, 0, 0, "FollowPlayer")\n'
                '		TNT1 A 0 A_CheckSIght("FollowPlayer")\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		TNT1 A 0 A_JumpIfCloser(300, "Waits")\n'
                '		Goto FollowPLayer\n'
                '		\n'
                '	//Disabled\n'
                '	GiveAmmo:\n'
                '		TNT1 A 0\n'
                '		MR7S A 10 A_FaceTarget\n'
                '		TNT1 A 0 //A_PlaySound("MRNGI1")\n'
                '		MR8S CD 15\n'
                '		TNT1 A 0 A_GiveToTarget("Clip2", 50)\n'
                '		//TNT1 A 0 A_SpawnItemEx("Stimpack", 40, 0)\n'
                '		Goto Waits	\n'
                '\n'
                '	Missile:\n'
                '        TNT1 A 0\n'
                '        TNT1 A 0 A_ChangeFlag("NODROPOFF", 1)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsACyberdemon", 1, "CheckRetreat") // Brutal Doom-friendly realistic AI.\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMastermind", 1, "CheckRetreat")//...\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsABaronOfHell", 1, "CheckRetreat")//...\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMancubus", 1, "CheckRetreat")//...\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPlayer")////Never remove this one!\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "CheckRangeToWait")\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("SOLID", 1)\n'
                '		\n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Retreat")\n'
                '\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		HISS A 1 A_Chase ("","")\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "CheckRangeToWait")\n'
                '		\n'
                '	ActualFireState:\n'
                '		HISS B 4 A_FaceTarget\n'
                '		TNT1 A 0 A_CustomMissile("HissyFireball",6,0)\n'
                '		HISS CB 4 A_Facetarget\n'
                '		Goto See\n'
                ' \n'
                '	CheckRetreat:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_JumpIfCloser(300, "Retreat")\n'
                '		Goto ActualFireState\n'
                '	\n'
                '	Retreat:\n'
                '		TNT1 A 0\n'
                '		\n'
                '		HISS A 2 A_Recoil(1)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		NULL A 0 \n'
                '		HISS B 2 A_Recoil(1)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		NULL A 0 \n'
                '		HISS C 2 A_Recoil(1)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		\n'
                '		HISS D 2 A_Recoil(1)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		Goto ActualFireState\n'
                '		\n'
                '\n'
                '	Pain:\n'
                '		HISS D 2\n'
                '		TNT1 A 0 A_PlaySound("BabyCaco/pain", 4)\n'
                '		HISS E 2 A_Pain\n'
                '		Goto See + 1\n'
                '  	\n'
                '	Active:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_CustomMissile ("OrderTitle2", 10, 0, 0, 2, 90)\n'
                '		TNT1 A 0 A_PlaySound("BabyCaco/Sight", 4)\n'
                '		HISS BCBA 4 A_FaceTarget\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("NOBLOCKMAP", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("USESPECIAL", 0)\n'
                '		TNT1 A 0 A_SpawnItemEx ("FriendHissy_Guarding",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION,0)\n'
                '		TNT1 A 1\n'
                '		TNT1 A -1\n'
                '		Stop\n'
                '	\n'
                '	Death:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_ChangeFlag("USESPECIAL", 0) //Always add this line on every death animation, to prevent the player from resurrecting the actor by pressing use.\n'
                '		TNT1 A 0 A_ChangeFlag("NOGRAVITY", 0)\n'
                '		HISS E 6 A_NoBlocking\n'
                '		TNT1 A 0 A_SetFloorClip\n'
                '		TNT1 A 0 A_ChangeFlag("FLOATBOB", 0)\n'
                '		TNT1 A 0 A_PlaySound("BabyCaco/death", 4)\n'
                '		HISS FGHIJ 6\n'
                '		HISS K -1\n'
                '		Stop\n'
                ' }\n'
                '}\n'
                '\n'
                '\n'
                '\n'
                'ACTOR FriendHissy_GuardingFixed : FriendHissy replaces FriendHissy_Guarding\n'
                '{\n'
                '	Speed 0\n'
                '	FastSpeed 0\n'
                '	+FRIENDLY\n'
                '	Mass 500\n'
                '	States\n'
                ' {\n'
                ' \n'
                '\n'
                '	Spawn:\n'
                '         TNT1 A 0\n'
                '		 TNT1 A 0 A_GiveInventory("TargetIsAMarine", 1)\n'
                '		 HISS A 4\n'
                '		 TNT1 A 0 A_ChangeFLag("FRIENDLY", 1)\n'
                '		 TNT1 A 0 A_GiveInventory("TargetIsAMarine")//Stops multiple sentries from firing at each other.\n'
                '		 HISS A 4 A_Look\n'
                '		 Loop\n'
                '		 \n'
                '	\n'
                '	\n'
                '	See:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		HISS AAAAAAAAAAAAAAAAAAAAAAAAAAAAADED 1 A_Chase\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		Loop\n'
                '\n'
                '	See2:	\n'
                '		HISS A 2\n'
                '		TNT1 A 0 A_ClearTarget\n'
                '		Goto See\n'
                '		\n'
                '		Missile:\n'
                '        TNT1 A 0\n'
                '        TNT1 A 0 A_ChangeFlag("NODROPOFF", 1)\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsACyberdemon", 1, "CheckRetreat") // Brutal Doom-friendly realistic AI.\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMastermind", 1, "CheckRetreat")//...\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsABaronOfHell", 1, "CheckRetreat")//...\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMancubus", 1, "CheckRetreat")//...\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("TargetIsAMarine", 1, "FollowPlayer")////Never remove this one!\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "CheckRangeToWait")\n'
                '		TNT1 A 0 A_ChangeFlag("SHOOTABLE", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("SOLID", 1)\n'
                '		\n'
                '		TNT1 A 0 A_JumpIfCloser(200, "Retreat")\n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("IsPlayer", 1, "CheckRangeToWait")\n'
                '		\n'
                '	ActualFireState:\n'
                '		HISS B 4 A_FaceTarget\n'
                '		TNT1 A 0 A_CustomMissile("HissyFireball",6,0)\n'
                '		HISS CB 4 A_Facetarget\n'
                '		Goto See\n'
                ' \n'
                '	CheckRetreat:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_JumpIfCloser(300, "Retreat")\n'
                '		Goto ActualFireState\n'
                '	\n'
                '	Retreat:\n'
                '		TNT1 A 0\n'
                '		\n'
                '		HISS A 2 A_Recoil(1)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		NULL A 0 \n'
                '		HISS B 2 A_Recoil(1)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		NULL A 0 \n'
                '		HISS C 2 A_Recoil(1)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		\n'
                '		HISS D 2 A_Recoil(1)\n'
                '		TNT1 A 0 A_FaceTarget\n'
                '		Goto ActualFireState\n'
                '		\n'
                '\n'
                '	Pain:\n'
                '		HISS D 2\n'
                '		TNT1 A 0 A_PlaySound("BabyCaco/pain", 4)\n'
                '		HISS E 2 A_Pain\n'
                '		Goto See + 1\n'
                '  	\n'
                '\n'
                '	Death:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_ChangeFlag("USESPECIAL", 0) //Always add this line on every death animation, to prevent the player from resurrecting the actor by pressing use.\n'
                '		TNT1 A 0 A_ChangeFlag("NOGRAVITY", 0)\n'
                '		HISS E 6 A_NoBlocking\n'
                '		TNT1 A 0 A_SetFloorClip\n'
                '		TNT1 A 0 A_ChangeFlag("FLOATBOB", 0)\n'
                '		TNT1 A 0 A_PlaySound("BabyCaco/death", 4)\n'
                '		HISS FGHIJ 6\n'
                '		HISS K -1\n'
                '		Stop\n'
                '  	\n'
                '	Active:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_PlaySound("BabyCaco/pain", 4)\n'
                '		TNT1 A 0 A_CustomMissile ("OrderTitle1", 10, 0, 0, 2, 90)\n'
                '		HISS BCBA 4 A_FaceTarget\n'
                '		TNT1 A 0 A_ChangeFLag("FRIENDLY", 0)\n'
                '		TNT1 A 0 A_ChangeFlag("NOBLOCKMAP", 1)\n'
                '		TNT1 A 0 A_ChangeFlag("USESPECIAL", 0)\n'
                '		TNT1 A 0 A_SpawnItemEx ("FriendHissy",0,0,0,0,0,0,0,SXF_NOCHECKPOSITION,0)\n'
                '		TNT1 A 1\n'
                '		TNT1 A -1\n'
                '		Stop\n'
                ' }\n'
                '}\n'
                '\n'
	}
    gui.wad_add_text_lump("DECORATE", data);
end

function BRUTALDOOM.setsecretexits()
  --GAME.SECRET_EXITS.MAP08 = false --works to set secret exit
  if secretexit1 == 1 then GAME.SECRET_EXITS.BOM01 = true end --there must be a better way but I don't know it
  if secretexit1 == 2 then GAME.SECRET_EXITS.BOM02 = true end
  if secretexit1 == 3 then GAME.SECRET_EXITS.BOM03 = true end
  if secretexit1 == 4 then GAME.SECRET_EXITS.BOM04 = true end
  if secretexit1 == 5 then GAME.SECRET_EXITS.BOM05 = true end
  if secretexit1 == 6 then GAME.SECRET_EXITS.BOM06 = true end
  if secretexit1 == 7 then GAME.SECRET_EXITS.BOM07 = true end
  if secretexit1 == 8 then GAME.SECRET_EXITS.BOM08 = true end
  if secretexit1 == 9 then GAME.SECRET_EXITS.BOM09 = true end
  if secretexit1 == 10 then GAME.SECRET_EXITS.BOM10 = true end
  if secretexit2 == 11 then GAME.SECRET_EXITS.BOM11 = true end
  if secretexit2 == 12 then GAME.SECRET_EXITS.BOM12 = true end
  if secretexit2 == 13 then GAME.SECRET_EXITS.BOM13 = true end
  if secretexit2 == 14 then GAME.SECRET_EXITS.BOM14 = true end
  if secretexit2 == 15 then GAME.SECRET_EXITS.BOM15 = true end
  if secretexit2 == 16 then GAME.SECRET_EXITS.BOM16 = true end
  if secretexit2 == 17 then GAME.SECRET_EXITS.BOM17 = true end
  if secretexit2 == 18 then GAME.SECRET_EXITS.BOM18 = true end
  if secretexit2 == 19 then GAME.SECRET_EXITS.BOM19 = true end
  if secretexit3 == 20 then GAME.SECRET_EXITS.BOM20 = true end
  if secretexit3 == 21 then GAME.SECRET_EXITS.BOM21 = true end
  if secretexit3 == 22 then GAME.SECRET_EXITS.BOM22 = true end
  if secretexit3 == 23 then GAME.SECRET_EXITS.BOM23 = true end
  if secretexit3 == 24 then GAME.SECRET_EXITS.BOM24 = true end
  if secretexit3 == 25 then GAME.SECRET_EXITS.BOM25 = true end
  if secretexit3 == 26 then GAME.SECRET_EXITS.BOM26 = true end
  if secretexit3 == 27 then GAME.SECRET_EXITS.BOM27 = true end
  if secretexit3 == 28 then GAME.SECRET_EXITS.BOM28 = true end
  if secretexit3 == 29 then GAME.SECRET_EXITS.BOM29 = true end
  gui.printf('Secret exit table:\n' .. table.tostring(GAME.SECRET_EXITS) .. '\n')
end

function BRUTALDOOM.get_levels()
    gui.printf("brutaldoom.get_levels code is running\n")
    local MAP_LEN_TAB = { few=4, episode=11, game=32 }

  local MAP_NUM = MAP_LEN_TAB[OB_CONFIG.length] or 1

  local EP_NUM = 1
  if MAP_NUM > 11 then EP_NUM = 2 end
  if MAP_NUM > 30 then EP_NUM = 3 end

  -- create episode info...

  for ep_index = 1,3 do
    local ep_info = GAME.EPISODES["episode" .. ep_index]
    assert(ep_info)

    local EPI = table.copy(ep_info)

    EPI.levels = { }

    table.insert(GAME.episodes, EPI)
  end

  -- create level info...

  for map = 1,MAP_NUM do
    -- determine episode from map number
    local ep_index
    local ep_along

    local game_along = map / MAP_NUM

    if map > 30 then
      ep_index = 3 ; ep_along = 0.5 ; game_along = 0.5
    elseif map > 20 then
      ep_index = 3 ; ep_along = (map - 20) / 10
    elseif map > 11 then
      ep_index = 2 ; ep_along = (map - 11) / 9
    else
      ep_index = 1 ; ep_along = map / 11
    end

    if OB_CONFIG.length == "single" then
      game_along = rand.pick({ 0.2, 0.3, 0.4, 0.7 })
      ep_along = game_along

    elseif OB_CONFIG.length == "few" then
      ep_along = game_along
    end

    assert(ep_along <= 1.0)
    assert(game_along <= 1.0)

    local EPI = GAME.episodes[ep_index]
    assert(EPI)

    local LEV =
    {
      episode = EPI

      name  = string.format("BOM%02d", map)
      patch = string.format("BOP%02d", map-1)

      ep_along = ep_along
      game_along = game_along
    }

    table.insert( EPI.levels, LEV)
    table.insert(GAME.levels, LEV)

    --LEV.secret_exit = GAME.SECRET_EXITS[LEV.name]
    if GAME.SECRET_EXITS[LEV.name] then
        LEV.secret_exit = true
    end

    -- secret levels
    if map == 31 then
      LEV.theme_name = "wolf"
      LEV.name_class = "URBAN"
      LEV.is_secret = true
    end
    if map == 32 then
      LEV.theme_name = "satanshankerchief"
      LEV.name_class = "TECH"
      LEV.is_secret = true
    end

    -- prebuilt levels
    local pb_name = LEV.name
    
    LEV.prebuilt = GAME.PREBUILT_LEVELS[pb_name]

    if LEV.prebuilt then
      LEV.name_class = LEV.prebuilt.name_class or "BOSS"
    end

    if MAP_NUM == 1 or (map % 10) == 3 then
      LEV.demo_lump = string.format("DEMO%d", ep_index)
    end
  end
end

function BRUTALDOOM.texturesetup()
  local data =
  {
      'Texture SKELPOSTER, 64, 64\n'
      '{\n'
	  'Patch O_BLACK, 0, 0\n'
	  'Patch O_BLACK, 48, 0\n'
	  'Patch SKELJ1, 7, 2\n'
      'Graphic BO_DOOM, 0, 33\n'
      '}\n'
	'Texture "CXCRATE1", 64, 128\n'
    '{\n'
    '	Patch "CCRATEL1", 0, 0\n'
    '	Patch "CCRATER1", 32, 0\n'
    '	Patch "CCRATEL1", 0, 64\n'
    '	Patch "CCRATER1", 32, 64\n'
    '}\n'
    '\n'
    'Texture "CXCRATE2", 64, 128\n'
    '{\n'
    '	Patch "DCRATEL1", 0, 0\n'
    '	Patch "DCRATER1", 32, 0\n'
    '	Patch "DCRATEL1", 0, 64\n'
    '	Patch "DCRATER1", 32, 64\n'
    '}\n'
    '\n'
    'Texture "CXCRATE3", 64, 128\n'
    '{\n'
    '	Patch "DCRATEL1", 0, 0\n'
    '	Patch "DCRATER1", 32, 0\n'
    '	Patch "CCRATEL1", 0, 64\n'
    '	Patch "CCRATER1", 32, 64\n'
    '}\n'
    '\n'
    'Texture "CXCRATEL", 64, 128\n'
    '{\n'
    '	Patch "DCRATEL1", 0, 0\n'
    '	Patch "DCRATER1", 32, 0\n'
    '	Patch "CCRATEL1", 0, 64\n'
    '	Patch "CCRATER1", 32, 64\n'
    '}\n'
    '\n'
    'Texture "CXCRATET", 64, 16\n'
    '{\n'
    '	Patch "VDCRATE1", 0, 0\n'
    '	Patch "VDCRATE1", 16, 0\n'
    '	Patch "VDCRATE1", 32, 0\n'
    '	Patch "VDCRATE1", 48, 0\n'
    '}\n'
    '\n'
    'Texture "CXCRATEW", 128, 128\n'
    '{\n'
    '	Patch "CCRATEL1", 0, 64\n'
    '	Patch "CCRATEM1", 40, 64\n'
    '	Patch "CCRATEM1", 32, 64\n'
    '	Patch "CCRATEM1", 48, 64\n'
    '	Patch "CCRATEM1", 56, 64\n'
    '	Patch "CCRATER1", 96, 64\n'
    '	Patch "CCRATEM1", 88, 64\n'
    '	Patch "CCRATEM1", 80, 64\n'
    '	Patch "CCRATEM1", 72, 64\n'
    '	Patch "CCRATEM1", 64, 64\n'
    '	Patch "DCRATEL1", 0, 0\n'
    '	Patch "DCRATER1", 96, 0\n'
    '	Patch "DCRATEM1", 48, 0\n'
    '	Patch "DCRATEM1", 40, 0\n'
    '	Patch "DCRATEM1", 32, 0\n'
    '	Patch "DCRATEM1", 72, 0\n'
    '	Patch "DCRATEM1", 64, 0\n'
    '	Patch "DCRATEM1", 56, 0\n'
    '	Patch "DCRATEM1", 80, 0\n'
    '	Patch "DCRATEM1", 88, 0\n'
    '}\n'
	  
  }
  local doom1data =
  {
	'texture SP_DUDE6, 64, 128\n'
	'{\n'
		'Patch WALL48_2, 0, 0\n'
		'Graphic BOSSJ0, 6, 32\n'
	'}\n'
	'texture SKINTEK2, 64, 128\n'
	'{\n'
	   'XScale 1.0\n'
	   'YScale 1.0\n'
	   'Patch GTGREN01, 0, 0\n'
	'}\n'
  }
  local tntdata =
  {
    '//Freedoom TNT patch equivalents\n'
    'texture STWALL, 128, 128\n'
    '{\n'
    'Patch FRSTWALL, 0, 0\n'
    '}\n'
    'texture STONEW1, 128, 128\n'
    '{\n'
    'Patch FRSTONEW, 0, 0\n'
    '}\n'
    'texture STONEW5, 128, 128\n'
    '{\n'
    'Patch FRSTONEW, 0, 0\n'
    '}\n'
    'Texture METALDR, 128, 128\n'
    '{\n'
    '	Patch WALL47_1, 0, 0\n'
    '	Patch WALL47_1, 64, 0\n'
    '	Patch WALL42_3, 21, 0\n'
    '	Patch WALL42_3, 85, 0\n'
    '	Patch W111_3, 0, 0\n'
    '	Patch W111_3, 0, 64\n'
    '	Patch W111_3, 64, 0\n'
    '	Patch W111_3, 64, 64\n'
    '	Patch SW2_1, 52, 37\n'
    '}\n'
    'Texture SMSTONE6, 128, 128\n'
    '{\n'
    '	Patch FRSTONEW, 0, 0\n'
    '	Patch W107_1, 0, 0\n'
    '}\n'
    'Texture BIGWALL, 128, 128\n'
    '{\n'
    '	Patch FRBIGWAL, 0, 0\n'
    '}\n'
    'Texture MURAL1, 128, 128\n'
    '{\n'
    '	Patch FMURAL1, 0, 0\n'
    '}\n'
    'Texture MURAL2, 128, 128\n'
    '{\n'
    '	Patch FMURAL2, 0, 0\n'
    '}\n'
    'Texture BIGMURAL, 256, 128\n'
    '{\n'
    '	Patch FBIGMURL, 0, 0\n'
    '}\n'
    'Texture CAVERN1, 128, 128\n'
    '{\n'
    '	Patch FRCAVE1, 0, 0\n'
    '}\n'
    'Texture CAVERN4, 128, 128\n'
    '{\n'
    '	Patch FRCAVE4, 0, 0\n'
    '}\n'
    'Texture CAVERN5, 64, 128\n'
    '{\n'
    '	Patch FRCAVE5, 0, 0\n'
    '}\n'
    'Texture CAVERN6, 128, 128\n'
    '{\n'
    '	Patch FRCAVE6, 0, 0\n'
    '}\n'
    'Texture CAVERN7, 128, 128\n'
    '{\n'
    '	Patch FRCAVE7, 0, 0\n'
    '}\n'
    'Texture ALTAQUA, 128, 128\n'
    '{\n'
    '	Patch FRAQUA, 0, 0\n'
    '}\n'
    'Texture DOKGRIR, 128, 128\n'
    '{\n'
    '        Patch FDOKGRIR, 0, 0\n'
    '}\n'
    'Texture DOKODO1B, 64, 128\n'
    '{\n'
    '        Patch FRKODO1B, 0, 0\n'
    '}\n'
    'Texture DOKODO2B, 64, 128\n'
    '{\n'
    '        Patch FRKODO1B, 0, 0\n'
    '}\n'
	'Texture LONGWALL, 256, 128\n'
	'{\n'
	'	Patch FLNGWALL, 0, 0\n'
	'}\n'
  }
  local plutoniadata =
  {
      '//Freedoom Plutonia patch equivalents\n'
      'Texture "A-CAMO1", 128, 128\n'
        '{\n'
        'Patch FRCAM1, 0, 0\n'
        '}\n'
        'Texture "A-CAMO2", 256, 128\n'
        '{\n'
        'Patch FRCAM1, 0, 0\n'
        'Patch FRCAM1, 128, 0\n'
        'Patch W107_1, 0, 0\n'
        '}\n'
        'Texture "A-CAMO3", 256, 128\n'
        '{\n'
        'Patch FRCAM1, 0, 0\n'
        'Patch FRCAM1, 128, 0\n'
        'Patch W106_1, 0, 0\n'
        '}\n'
        'Texture "A-CAMO4", 128, 128\n'
        '{\n'
        'Patch FRCAM4, 0, 0\n'
        '}\n'
        'Texture "A-CAMO5", 128, 128\n'
        '{\n'
        'Patch FRCAM5, 0, 0\n'
        '}\n'
        'Texture "A-BROWN4", 128, 128\n'
        '{\n'
        '	Patch BROWNF, 0, 0\n'
        '	Patch W111_2, 0, 0\n'
        '	Patch W111_3, 64, 64\n'
        '	Patch W111_2, 0, 64\n'
        '	Patch W111_3, 64, 0\n'
        '	Patch BOSFA0, 47, 49\n'
        '}\n'
  }
  if BRUTALDOOM.PARAMETERS.iwad != "heretic.wad" then
	  if BRUTALDOOM.PARAMETERS.iwad != "Tnt.wad" and BRUTALDOOM.PARAMETERS.iwad != "doom_complete.pk3" then
		  combine(data,tntdata)
	  end
	  if BRUTALDOOM.PARAMETERS.iwad != "doom_complete.pk3" then
		  combine(data,doom1data)
	  end
	  if BRUTALDOOM.PARAMETERS.iwad != "Plutonia.wad" and BRUTALDOOM.PARAMETERS.iwad != "doom_complete.pk3" then
		  combine(data,plutoniadata)
	  end
  else
      heretic_freetexture();
  end
    gui.wad_add_text_lump("TEXTURES", data);
    
    local decaldata = 
    {
        'decal Skel_Poster\n'
        '{\n'
        '    pic SKELPOSTER\n'
        '}\n'
    }
    gui.wad_add_text_lump("DECALDEF", decaldata);
end

BRUTALDOOM.MAPINFO = { }

function BRUTALDOOM.create_mapinfo()
    gui.printf("Mapinfo code is starting\n");
    
local castcall =
[[
Intermission Brutal_FinalIntermission
    {
    	Image
    	{
    		// This is only here to initialize the background and the music
    		Background = "$bgcastcall"
    		Time = -1
    		Music = "$MUSIC_EVIL"
    	}
    	Link = BrutalDoomCast
    }
Intermission BrutalDoomCast
    {
    	Cast
    	{
    		CastClass = "Zombieman"
    		CastName = "$CC_ZOMBIE"
    		AttackSound = "Missile", 1, "grunt/attack"
    	}
    	Cast
    	{
    		CastClass = "ShotgunGuy"
    		CastName = "$CC_SHOTGUN"
    		AttackSound = "Missile", 1, "shotguy/attack"
    	}
    	Cast
    	{
    		CastClass = "ChaingunGuy"
    		CastName = "$CC_HEAVY"
    		AttackSound = "Missile", 1, "chainguy/attack"
    		AttackSound = "Missile", 2, "chainguy/attack"
    		AttackSound = "Missile", 3, "chainguy/attack"
    	}
    	Cast
    	{
    		CastClass = "DoomImp"
    		CastName = "$CC_IMP"
    		AttackSound = "Missile", 2, "imp/attack"
    	}
    	Cast
    	{
    		CastClass = "ObligeDarkImp"
    		CastName = "Dark Imp"
    		AttackSound = "Missile", 2, "imp/attack"
    	}
    	Cast
    	{
    		CastClass = "Demon"
    		CastName = "$CC_DEMON"
    		AttackSound = "Melee", 1, "demon/melee"
    	}
    	Cast
    	{
    		CastClass = "LostSoul"
    		CastName = "$CC_LOST"
    		AttackSound = "Missile", 1, "skull/melee"
    	}
    	Cast
    	{
    		CastClass = "Cacodemon"
    		CastName = "$CC_CACO"
    		AttackSound = "Missile", 1, "caco/attack"
    	}
    	Cast
    	{
    		CastClass = "ObligeEasyMarine"
    		CastName = "Evil Grunt"
    		AttackSound = "Missile", 1, "grunt/attack"
    	}
        Cast
    	{
    		CastClass = "EvilMarine"
    		CastName = "Evil Marine"
    		AttackSound = "Missile", 1, "PLSM9"
    	}
    	Cast
    	{
    		CastClass = "HellKnight"
    		CastName = "$CC_HELL"
    		AttackSound = "Missile", 1, "baron/attack"
    	}
    	Cast
    	{
    		CastClass = "BaronOfHell"
    		CastName = "$CC_BARON"
    		AttackSound = "Missile", 1, "baron/attack"
    	}
    	Cast
    	{
    		CastClass = "ObligeBelphegor"
    		CastName = "Belphegor"
    		AttackSound = "Missile", 1, "baron/attack"
    	}
    	Cast
    	{
    		CastClass = "Arachnotron"
    		CastName = "$CC_ARACH"
    		AttackSound = "Missile", 1, "baby/attack"
    	}
    	Cast
    	{
    		CastClass = "PainElemental"
    		CastName = "$CC_PAIN"
    		AttackSound = "Missile", 2, "skull/melee"
    	}
    	Cast
    	{
    		CastClass = "Revenant"
    		CastName = "$CC_REVEN"
    		AttackSound = "Missile", 1, "skeleton/attack"
    		AttackSound = "Melee", 1, "skeleton/swing"
    		AttackSound = "Melee", 3, "skeleton/melee"
    	}
    	Cast
    	{
    		CastClass = "Fatso"
    		CastName = "$CC_MANCU"
    		AttackSound = "Missile", 1, "fatso/attack"
    		AttackSound = "Missile", 4, "fatso/attack"
    		AttackSound = "Missile", 7, "fatso/attack"
    	}
    	Cast
    	{
    		CastClass = "Archvile"
    		CastName = "$CC_ARCH"
    		AttackSound = "Missile", 1, "vile/start"
    	}
    	Cast
    	{
    		CastClass = "SpiderMastermind"
    		CastName = "$CC_SPIDER"
    		AttackSound = "Missile", 1, "spider/attack"
    		AttackSound = "Missile", 2, "spider/attack"
    	}
    	Cast
    	{
    		CastClass = "ObligeJuggernaut"
    		CastName = "Juggernaut"
    		AttackSound = "Missile", 1, "weapons/rocklf"
    		AttackSound = "Missile", 3, "weapons/rocklf"
    		AttackSound = "Missile", 5, "weapons/rocklf"
    	}
        Cast
    	{
    		CastClass = "Cyberdemon"
    		CastName = "$CC_CYBER"
    		AttackSound = "Missile", 1, "weapons/rocklf"
    		AttackSound = "Missile", 3, "weapons/rocklf"
    		AttackSound = "Missile", 5, "weapons/rocklf"
    	}
    	Cast
    	{
    		CastClass = "DoomPlayer"
    		CastName = "$CC_HERO"
    		AttackSound = "Missile", 0, "weapons/sshotf"
    	}
    	Link = BrutalDoomCast	// restart cast call
    }
]]
    
  gui.printf("Mapinfo code is running\n");
  local data =
  {
    "//\n"
    "// MAPINFO LUMP created by OBLIGE\n"
    "//\n"
    "//Secret exits are in maps " .. tostring(secretexit1) .. ', ' .. tostring(secretexit2) .. ' and ' .. tostring(secretexit3) .. '\n'
    "clearepisodes\n\n"
    'episode bom01\n'
    '{\n'
    'name = "Brutal Oblige"\n'
    '}\n\n'
    'map E2M8 "Tower of Babel" //brutality\n'
    '{\n'
    'next = "BOM0' .. tostring(secretexit1 + 1) .. '"\n'
    'sky1 = "SKY3"\n'
    'EnterPic = "INTERPIC"//changeifdoomcomplete\n'
    'ExitPic = "INTERPIC"//changeifdoomcomplete\n'
    'cluster = 10\n'
    'music = "d_messag"//changeifdoommetal\n'
    'SpecialAction = "ObligeCyberdemonLord", "Exit_Normal", 0\n'
    'SpecialAction = "ObligeInfernal", "Exit_Normal", 0\n'
    'SpecialAction = "ObligeCyberdemonBoss", "Exit_Normal", 0\n'
    'SpecialAction = "CyberdemonBoss", "Exit_Normal", 0\n'
    '}\n'
    'map E3M8 "Dis" //brutality\n'
    '{\n'
    'next = "BOM' .. tostring(secretexit3 + 1) .. '"\n'
    'sky1 = "SKY3"\n'
    'EnterPic = "INTERPIC"//changeifdoomcomplete\n'
    'ExitPic = "INTERPIC"//changeifdoomcomplete\n'
    'cluster = 10\n'
    'music = "d_openin"//changeifdoommetal\n'
    'SpecialAction = "CyberdemonLordMinor", "Exit_Normal", 0\n'
    'SpecialAction = "ObligeCyberdemonLordMinor", "Exit_Normal", 0\n'
    '}\n'
    --brutality has the naming correct whilst brutal has this bollocks
    'map E5M8 "Tower of Babel" //brutalv20b\n'
    '{\n'
    'next = "BOM0' .. tostring(secretexit1 + 1) .. '"\n'
    'sky1 = "SKY3"\n'
    'EnterPic = "INTERPIC"//changeifdoomcomplete\n'
    'ExitPic = "INTERPIC"//changeifdoomcomplete\n'
    'cluster = 10\n'
    'music = "d_messag"//changeifdoommetal\n'
    'SpecialAction = "ObligeCyberdemonBoss", "Exit_Normal", 0\n'
    'SpecialAction = "CyberdemonBoss", "Exit_Normal", 0\n'
    'SpecialAction = "ObligeInfernal", "Exit_Normal", 0\n'
    'SpecialAction = "ObligeCyberdemonLord", "Exit_Normal", 0\n'
    '}\n'
    'map E3M10 "Dis" //brutalv20b\n'
    '{\n'
    'next = "BOM' .. tostring(secretexit3 + 1) .. '"\n'
    'sky1 = "SKY3"\n'
    'EnterPic = "INTERPIC"//changeifdoomcomplete\n'
    'ExitPic = "INTERPIC"//changeifdoomcompletes\n'
    'cluster = 10\n'
    'music = "d_openin"//changeifdoommetal\n'
    'SpecialAction = "CyberdemonLordMinor", "Exit_Normal", 0\n'
    'SpecialAction = "ObligeSuperMastermind", "Exit_Normal", 0\n'
    'SpecialAction = "SuperMastermind", "Exit_Normal", 0\n'
    'SpecialAction = "ObligeCyberdemonLordMinor", "Exit_Normal", 0\n'
    '}\n'
  }

  --- music ---
  local epi_list = BRUTALDOOM.music
  local dest = { }

  each _,src in epi_list do
    dest = table.copy(src)
    
    -- this shuffle algorithm ensures first entry is never the same
    --once again I can't quite work out the code so I have left this even though I only need half of it
    for i = 1, (#dest) do
      local k = rand.irange(i + 1, #dest)
      dest[i], dest[k] = dest[k], dest[i]
    end
  end
    --after this dest[1-#src] are the music tracks
    dest[31] = "d_evil" --map 31 always wolf themed

  local firstmap = 1
  local mapnum = 1

  --- level names ---
  --L.name is MAP01 etc, L.descritption is the nice name
  --L.theme_name gives the theme
  each L in GAME.levels do
    local prefix = PARAM.bex_map_prefix

    if L.description and prefix then --keep the prefix stuff from the bex incase something else relies on it
      local id

      if string.sub(L.name, 1, 1) == 'E' then
        -- Doom I : ExMy
        id = "bom" .. L.name

      else
        local pos = 4
        if string.sub(L.name, pos, pos) == '0' then
          pos = pos + 1
        end

        -- Doom II / Final Doom : HUSTR_%d
        id = "bom" .. string.sub(L.name, pos)
      end

      local nextmap = 'next = "' .. L.name ..'"\n'

      local sky1 = 'sky1 = "RSKY1' --default sky. Final " deliberately ommitted so a B can be added before it, see the roll for extra sky bit.
      local enterpic = '"INTERPIC"' --default intermissionpic
      if L.theme_name == "hell" then
        sky1 = 'sky1 = "RSKY3'
      elseif L.theme_name == "urban" then
        sky1 = 'sky1 = "RSKY2'
      elseif L.theme_name == "satanshankerchief" then
	local n = rand.irange(1,3)
        sky1 = 'sky1 = "CHEXSKY' .. n
        enterpic = '"CHEXINT"'
      end
      
      --roll for extra sky
      if BRUTALDOOM.PARAMETERS.skygenerator == true and rand.irange(1,2) == 2 and L.theme_name != "satanshankerchief" then
          sky1 = sky1 .. 'B'
      end

      sky1 = sky1 .. '"\n' --put in the newline here for convinience
      enterpic = enterpic .. '\n'

      local text = L.name .. ' "' .. L.description ..'"'; --the mapinfo key

      --say that this map comes after the last map
      if firstmap == 0 then
	if mapnum != 31 and mapnum != 32 and mapnum != 33 then --yes I could just do <31 but it might be possible to make Oblige do more than 32 maps in which case this will still work. Number is 1 higher because this is inserted at the start of the next map.
          table.insert(data, nextmap)
        else
	  if mapnum != 32 and mapnum != 33 then
            table.insert(data, 'next = "EndGame3"\n')
	  end
	end
        if mapnum >=11 and mapnum < 21 then--mapnum == 17 then --map 16 has the secret exit to wolf levels. Number is 1 higher because this is inserted at the start of the next map.
          table.insert(data, 'secretnext = "BOM31"\n')
        end
        if mapnum < 11 then --give map 8 a secret exit to tower of bable (included in the brutal and brutality pk3s)
	  if boss1 == "cyberlordmajor" then --if big CyberLord at babel then make that the second boss battle 
	    if OB_CONFIG.game == "brutality" then
              table.insert(data, 'secretnext = "E3M8"\n')
	    elseif OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E3M10"\n')
	    end
	  else
	    if OB_CONFIG.game == "brutality" then
              table.insert(data, 'secretnext = "E2M8"\n')
	    elseif OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E5M8"\n')
	    end
	  end
        end
        if mapnum >= 21 and mapnum < 30 then --give map 24 a secret exit to spider mastermind battle (included in the brutal and brutality pk3s)
	  if boss1 == "cyberlordmajor" then --if big CyberLord at babel then make this the first boss battle 
	    if OB_CONFIG.game == "brutality" then
              table.insert(data, 'secretnext = "E2M8"\n')
	    elseif OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E5M8"\n')
	    end
	  else
	    if OB_CONFIG.game == "brutality" then
              table.insert(data, 'secretnext = "E3M8"\n')
	    elseif OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E3M10"\n')
	    end
	  end
        end
        if mapnum == 32 then --first secret level (wolf)
          table.insert(data, 'next = "BOM' .. tostring(secretexit2 + 1) .. '"\n')
          table.insert(data, 'secretnext = "BOM32"\n')
        end
        table.insert(data, '\n}\n') --close last map's definition
      else
        firstmap = 0
      end

      --open definition for map
      table.insert(data, string.format("%s %s\n{\n", "map", text))
      --enter map information
      table.insert(data, sky1)
      table.insert(data, 'EnterPic = ' .. enterpic)
      table.insert(data, 'ExitPic = ' .. enterpic)
      table.insert(data, 'cluster = 10\n')
      table.insert(data, 'music = "' .. dest[mapnum] .. '"\n')
      mapnum = mapnum + 1
    end
  end -- for L

  if mapnum == 33 then --second secret level (chex)
    table.insert(data, 'next = "BOM' .. tostring(secretexit2 + 1) .. '"\n')
  else
    table.insert(data, 'next = EndSequence, "Brutal_FinalIntermission"\n') --last map ends the game unless it is a secret level (ie anything more or less than full game)
  end
  table.insert(data, "\n}\n"); --close final map definition
  
  --insert final intermission
  table.insert(data, castcall)

--make sure there are no 0s in stupid places
for i = 1, (#data) do --for every value in data
  data[i] = string.gsub(data[i], '"BOM010"','"BOM10"')
  data[i] = string.gsub(data[i], '"BOM011"','"BOM11"')
  data[i] = string.gsub(data[i], '"BOM012"','"BOM12"')
  data[i] = string.gsub(data[i], '"BOM013"','"BOM13"')
  data[i] = string.gsub(data[i], '"BOM014"','"BOM14"')
  data[i] = string.gsub(data[i], '"BOM015"','"BOM15"')
  data[i] = string.gsub(data[i], '"BOM016"','"BOM16"')
  data[i] = string.gsub(data[i], '"BOM017"','"BOM17"')
  data[i] = string.gsub(data[i], '"BOM018"','"BOM18"')
  data[i] = string.gsub(data[i], '"BOM019"','"BOM19"')
  data[i] = string.gsub(data[i], '"BOM020"','"BOM20"')
  data[i] = string.gsub(data[i], '"BOM021"','"BOM21"')
  data[i] = string.gsub(data[i], '"BOM022"','"BOM22"')
  data[i] = string.gsub(data[i], '"BOM023"','"BOM23"')
  data[i] = string.gsub(data[i], '"BOM024"','"BOM24"')
  data[i] = string.gsub(data[i], '"BOM025"','"BOM25"')
  data[i] = string.gsub(data[i], '"BOM026"','"BOM26"')
  data[i] = string.gsub(data[i], '"BOM027"','"BOM27"')
  data[i] = string.gsub(data[i], '"BOM028"','"BOM28"')
  data[i] = string.gsub(data[i], '"BOM029"','"BOM29"')
  data[i] = string.gsub(data[i], '"BOM030"','"BOM30"')
  data[i] = string.gsub(data[i], '"BOM031"','"BOM31"')
  data[i] = string.gsub(data[i], '"BOM032"','"BOM32"')
  data[i] = string.gsub(data[i], '"BOM1"','"BOM01"')
  data[i] = string.gsub(data[i], '"BOM2"','"BOM02"')
  data[i] = string.gsub(data[i], '"BOM3"','"BOM03"')
  data[i] = string.gsub(data[i], '"BOM4"','"BOM04"')
  data[i] = string.gsub(data[i], '"BOM5"','"BOM05"')
  data[i] = string.gsub(data[i], '"BOM6"','"BOM06"')
  data[i] = string.gsub(data[i], '"BOM7"','"BOM07"')
  data[i] = string.gsub(data[i], '"BOM8"','"BOM08"')
  data[i] = string.gsub(data[i], '"BOM9"','"BOM09"')
  --if using doom metal E2M8 and E3M8 can use the doom1 music
  if BRUTALDOOM.PARAMETERS.musicpreset == "doommetal" or BRUTALDOOM.PARAMETERS.musicpreset == "generic" then
      data[i] = string.gsub(data[i], '"d_messag"//changeifdoommetal','"d_e2m8"')
      data[i] = string.gsub(data[i], '"d_openin"//changeifdoommetal','"d_e3m8"')
  end
  if BRUTALDOOM.PARAMETERS.iwad == "doom_complete.pk3" then
      data[i] = string.gsub(data[i], '"INTERPIC"//changeifdoomcomplete','"INTER_E4"')
      if BRUTALDOOM.PARAMETERS.musicpreset == "iwad" then
          data[i] = string.gsub(data[i], '"d_messag"//changeifdoommetal','"d_e2m8"')
          data[i] = string.gsub(data[i], '"d_openin"//changeifdoommetal','"d_e3m8"')
      end
  end
end

if BRUTALDOOM.PARAMETERS.starterpack == true then
    gui.wad_add_text_lump("BASEMI", data);
else
    gui.wad_add_text_lump("MAPINFO", data);
end

end

function BRUTALDOOM.all_done()
  BRUTALDOOM.decorate();
  BRUTALDOOM4.caco();
  BRUTALDOOM4.decorateweapons();
  BRUTALDOOM.flem_nukage();
  DOOM.all_done();
  BRUTALDOOM.epic();
  BRUTALDOOM.gameinfo();
  BRUTALDOOM.mixhanky();
  BRUTALDOOM.texturesetup();
  BRUTALDOOM.mergesongs();
  if BRUTALDOOM.PARAMETERS.skygenerator == true then
      BRUTALDOOM.generate_skies();
  end
  if BRUTALDOOM.PARAMETERS.iwad == 'freedoom2.wad' then
      BRUTALDOOM.freedoom_language();
  end
  if BRUTALDOOM.PARAMETERS.iwad == "heretic.wad" then
	heretic_monstersetup();
  end
  BRUTALDOOM.create_mapinfo();
end

function BRUTALITY.all_done()
  BRUTALITY.decorate();
  BRUTALDOOM4.caco();
  BRUTALDOOM4.decorateweapons();
  BRUTALDOOM.flem_nukage();
  DOOM.all_done();
  BRUTALDOOM.epic();
  BRUTALITY.gameinfo();
  BRUTALDOOM.mixhanky();
  BRUTALDOOM.texturesetup();
  BRUTALDOOM.setsecretexits();
  if doom_metal == true then
      DOOMMETAL.mergesongs();
  end
  if skygenerator == true then
      BRUTALDOOM.generate_skies();
  end
  BRUTALDOOM.create_mapinfo();
end

function BRUTALDOOM.mixhanky()
    if OB_CONFIG.length == 32 then --if a full game then only map32 can be chex themed.
        OB_THEMES["satanshankerchief"].mixed_prob=0
    end
end

function BRUTALDOOM.freedoom_language()
    --overwrites the freedoom dehacked which turns Imp to serpent etc
    local data =
    {
        '[STRINGS]\n\n'
        'OB_STEALTHBABY = %o thought %g saw an arachnotron.\n'
        'OB_STEALTHVILE = %o thought %g saw an archvile.\n'
        'OB_STEALTHBARON = %o thought %g saw a Baron of Hell.\n'
        'OB_STEALTHCACO = %o thought %g saw a cacodemon.\n'
        'OB_STEALTHCHAINGUY = %o thought %g saw a chaingunner.\n'
        'OB_STEALTHDEMON = %o thought %g saw a demon.\n'
        'OB_STEALTHKNIGHT = %o thought %g saw a Hell Knight.\n'
        'OB_STEALTHIMP = %o thought %g saw an imp.\n'
        'OB_STEALTHFATSO = %o thought %g saw a mancubus.\n'
        'OB_STEALTHUNDEAD = %o thought %g saw a revenant.\n'
        'OB_STEALTHSHOTGUY = %o thought %g saw a sergeant.\n'
        'OB_STEALTHZOMBIE = %o thought %g saw a zombieman.\n'
        'OB_UNDEADHIT = %o was punched by a revenant.\n'
        'OB_IMPHIT = %o was slashed by an imp.\n'
        'OB_CACOHIT = %o got too close to a cacodemon.\n'
        'OB_DEMONHIT = %o was bit by a demon.\n'
        'OB_SPECTREHIT = %o was eaten by a spectre.\n'
        'OB_BARONHIT = %o was ripped open by a Baron of Hell.\n'
        'OB_KNIGHTHIT = %o was gutted by a Hell Knight.\n'
        'OB_ZOMBIE = %o was killed by a zombieman.\n'
        'OB_SHOTGUY = %o was shot by a sergeant.\n'
        'OB_VILE = %o was incinerated by an archvile.\n'
        "OB_UNDEAD = %o couldn't evade a revenant's fireball.\n"
        'OB_FATSO = %o was squashed by a mancubus.\n'
        'OB_CHAINGUY = %o was perforated by a chaingunner.\n'
        'OB_SKULL = %o was spooked by a lost soul.\n'
        'OB_IMP = %o was burned by an imp.\n'
        'OB_CACO = %o was smitten by a cacodemon.\n'
        'OB_BARON = %o was bruised by a Baron of Hell.\n'
        'OB_KNIGHT = %o was splayed by a Hell Knight.\n'
        'OB_SPIDER = %o stood in awe of the spider demon.\n'
        'OB_BABY = %o let an arachnotron get %h.\n'
        'OB_CYBORG = %o was splattered by a cyberdemon.\n'
        'OB_WOLFSS = %o met a Nazi.\n'
        'CC_ZOMBIE = ZOMBIEMAN\n'
        'CC_SHOTGUN = SHOTGUN GUY\n'
        'CC_HEAVY = HEAVY WEAPON DUDE\n'
        'CC_IMP = IMP\n'
        'CC_DEMON = DEMON\n'
        'CC_LOST = LOST SOUL\n'
        'CC_CACO = CACODEMON\n'
        'CC_HELL = HELL KNIGHT\n'
        'CC_BARON = BARON OF HELL\n'
        'CC_ARACH = ARACHNOTRON\n'
        'CC_PAIN = PAIN ELEMENTAL\n'
        'CC_REVEN = REVENANT\n'
        'CC_MANCU = MANCUBUS\n'
        'CC_ARCH = ARCH-VILE\n'
        'CC_SPIDER = THE SPIDER MASTERMIND\n'
        'CC_CYBER = THE CYBERDEMON\n'
        'CC_HERO = OUR HERO\n'
    }
    gui.wad_add_text_lump("DEHACKED", data);
end
----------------------------------------------------------------
BRUTALDOOM.WEAPONS =
{
	HandGrenade =
	{
	    id=299
	    pref=20
	    --add_prob=20
	    --start_prob=10
	    rate=1
	    damage=70
	    splash={60,45,30,30,20,10}
	    attack="missile"
	    ammo="grenade"
	    per=1
	    rarity=2
	    give={ {ammo="grenade",count=1} }
	}
	GrenadeLauncher =
	{
	    id=298
	    level = 3
    	    pref = 30
    	    add_prob = 25
	    --start_prob=10
	    rate=1
	    damage=100
	    splash={60,45,30,30,20,10}
	    attack="missile"
	    ammo="rocket"
	    per=1
	    rarity=2
	    give={ {ammo="rocket",count=6} }
	}
	railgun =
	{
	    id=297
	    level = 5
    	    pref = 30
    	    add_prob = 15
	    --start_prob=10
	    rate=1
	    damage=1000
	    attack="missile"
	    ammo="cell"
	    per=1
	    rarity=2
	    give={ {ammo="cell",count=1} }
	}
        bfg10k =
	  {
	    id = 296
	    level = 8
	    pref = 15
	    add_prob = 20
	    mp_prob = 6
	    attack = "missile"
	    rate = 0.65  -- tweaked value, normally 0.8
	    damage = 300
	    splash = {70,70,70,70, 70,70,70,70, 70,70,70,70}
	    ammo = "cell"
	    per = 40
	    give = { {ammo="cell",count=40} }
	    bonus_ammo = 40
	  }
        pistol =
        {
            id = 320
            level = 1
            add_prob = 5
            pref = 5
            attack = "hitscan"
            rate = 1.8
            damage = 10
            ammo = "bullet"
            give = { {ammo="bullet",count=15} }
            per = 1
        }
        mg42 =
	{
	    id=321
	    level = 9
    	    pref = 1
    	    add_prob = 2
	    start_prob=0
	    rate=1
	    damage=1000
	    attack="hitscan"
	    ammo="clip" --not really but no existing ammo type
	    per=1
	    give={ {ammo="clip",count=600} }
	}
        --[[oldskoolplasma =
        {
            id = 322
            level = 6 --regular plasma rifle is 5
            pref = 30
            add_prob = 15
            attack = "missile"
            rate = 11
            damage = 20
            ammo = "cell"
            per = 1
            give = { {ammo="cell",count=40} }
            bonus_ammo = 40
        }]]--
}

BRUTALDOOM4.WEAPONS =
{
    D4Machinegun =
    {
        id = 314
        level = 3
        pref = 50
        add_prob = 30
        start_prob = 5
        attack = "hitscan"
        rate = 9.0 --chaingun is 8.5
        damage = 10
        ammo = "bullet"
        per = 1
        give = { {ammo="bullet",count=20} }
        bonus_ammo = 50
    }
    D4UpgradeStation = --treating this as a weapon works well enough
  {
    id = 315
    level = 4
    pref = 50
    add_prob = 35
    start_prob = 0
    attack = "hitscan"
    rate = 8.5
    damage = 10
    ammo = "bullet"
    per = 1
    give = { {ammo="bullet",count=20} }
    bonus_ammo = 10
  }
  D4GaussCannon =
  {
      id = 317
      level = 8
      pref = 10
      add_prob = 25
      mp_prob = 6
      attack = "missile"
      rate = 1
      damage = 50
      splash = { 50,20,5 }
      ammo = "cell"
      per = 15
      give = { {ammo="cell",count=50} }
      bonus_ammo = 40
  }
}


BRUTALDOOM.NICE_ITEMS =
{
  goggles = REMOVE_ME --seem to be broken in v20b and were never that useful in oblige maps anyway
}

BRUTALFRIENDS.NICE_ITEMS =
{
    invis = REMOVE_ME
    replacementinvis =
  {
    id = 318
    kind = "powerup"
    add_prob = 5
    secret_prob = 50 --vanilla is 70
    time_limit = 100
  }
  FriendTeleportBeacon =
  {
    id = 2024
    kind = "other"
    add_prob = 5
    secret_prob = 110
  }
}

BRUTALDOOM.PICKUPS =
{
  -- AMMO --

  grenade =
  {
    id = 300
    kind = "ammo"
    add_prob = 1
    give = { {ammo="grenade",count=5} } --actually it only gives 1 but this was the only way to stop Oblige flooding maps with them
  }

  grenade_box =
  {
    id = 301
    kind = "ammo"
    rank = 5
    --add_prob = 10 --left out because it looks like a regular grenade and makes the player a bit overpowered
    give = { {ammo="grenade",count=10} }
  }

  
  Skel_Poster =
  {
      id = 323
      r = 36
      h = 128
      kind = "health"  --not ideal but it works
      rank = 1
      add_prob = 20
      give = { {health=10} }
      --theme = "nukem"
      theme_prob = 200
  }
}


BRUTALDOOM.PLAYER_MODEL =
{
    doomer =
    {
        stats   = { health=0, bullet=0, shell=0, rocket=0, cell=0 }
        weapons = { fist=1, pistol=1, HandGrenade=1 }
    }
}

function BRUTALDOOM.setup()
    
BRUTALDOOM.setsecretexits();
    
local pistolpickupmessage = {
    "You got the Pistol! Woop-de-fucking-do!",
    "You got a tiny pistol! It'll look great next to your assault rifle!",
    "You got the Pistol! Hoo-fucking-ray!",
    "They say guns don't kill people, looking at this thing, I believe them",
    "The pen is mightier than the sword. And the sword is better than this.",
    "A standard issue UAC Pistol. Proof, if any more were needed, that the UAC are bastards who hate you.",
    "What the fuck is this?! And I don't mean that in a maybe it will be good if you find three secret keys way...",
    "Picked up a pistol that you really don't need!",
    "Picked up 15 bullets. Unfortunately they're inside this shitty pistol."
}
    
local data =
	{
		'//Brutal Doom additions\n'
		'#include "BRUMONS" \n'
		'//weapons\n\n'
		'actor HandGrenadesOblige : HandGrenades 299\n'
		'{\n'
                '//$Category "Weapons"\n'
                '//$EditorSprite "GRNDH0"\n'
                'Tag "Hand Grenades"\n'
		'}\n'
		'\n'
		'actor GrenadeAmmoOblige : GrenadeAmmo 300\n'
		'{\n'
                '//$Category "Ammunition"\n'
                '//$EditorSprite "GRNDH0"\n'
                'Tag "Grenade"\n'
		'}\n'
		'\n'
		'actor GrenadeBoxOblige : GrenadeBox 301\n'
		'{\n'
                '//$Category "Ammunition"\n'
                '//$EditorSprite "GRNDH0"\n'
                'Tag "Grenade Box"\n'
		'}\n'
		'\n'
		'actor GrenadeLauncherOblige : GrenadeLauncher 298\n'
		'{\n'
                '//$Category "Weapons"\n'
                '//$EditorSprite "GLAPA0"\n'
                'Tag "Grenade Launcher"\n'
		'Inventory.PickupMessage "You got the grenade launcher!"\n'
		'Weapon.SlotNumber 5\n'
                'States\n'
                '{\n', 
                generickickstate,
                '\n}\n'
		'\n}\n'
		'\n'
		'actor RailGunOblige : RailGun 297\n'
		'{\n'
                '//$Category "Weapons"\n'
                '//$EditorSprite "SRCGA0"\n'
                'Tag "Rail Gun"\n'
		'Weapon.SlotNumber 6\n'
                'States\n'
                '{\n'
                ,generickickstate,
                '\n}\n'
		'}\n'
		'\n'
		'actor BFG10KOblige : BFG10K 296\n'
		'{\n'
                '//$Category "Weapons"\n'
                '//$EditorSprite "bfg2A0"\n'
                'Tag "BFG10k"\n'
                'Weapon.SlotNumber 7\n'
                'States\n'
                '{\n'
                ,generickickstate,
                '\n}\n'
		'}\n'
		'\n'
                'ACTOR BrutalPistolOblige : Weapon 320\n'
                '{\n'
                '//$Category "Weapons"\n'
                'Tag "Shitty Pistol"\n'
                '	Weapon.AmmoUse1 0\n'
                '	Weapon.AmmoGive1 0\n'
                '	Weapon.AmmoUse2 0\n'
                '	Weapon.AmmoGive2 15\n'
                '	Weapon.AmmoType1 "Clip2"\n'
                '	Weapon.AmmoType2 "BDPistolAmmo"\n'
                '	Obituary "%k shot %o down with a pistol."\n'
                '       Weapon.SlotNumber 2\n'
                '    AttackSound "None"\n'
                '    Inventory.PickupSound "CLIPIN"\n'
                '	Inventory.Pickupmessage "',pistolpickupmessage[math.random(1,#pistolpickupmessage)],'"\n'
                '	+WEAPON.WIMPY_WEAPON\n'
                '    +WEAPON.NOAUTOAIM\n'
                '    +WEAPON.NOAUTOFIRE\n'
                '	+WEAPON.CHEATNOTWEAPON\n'
                '    +FORCEXYBILLBOARD\n'
                '	Scale 0.9\n'
                '	States\n'
                '	{\n'
                '       Steady:\n'
                '       TNT1 A 1\n'
                '       Goto Ready\n'
                '	PickUp:\n'
                '	TNT1 A 0\n'
                '	TNT1 A 0 A_Playsound("PICKUPONELINER")\n'
                '	TNT1 A 0\n'
                '	Stop\n'
                '	\n'
                '	\n'
                '	Flash:\n'
                '	TNT1 A 0\n'
                '	TNT1 A 0 A_JumpIfInventory("FlashlightAction", 1, "CheckFlashlight")\n'
                '	TNT1 A 1\n'
                '	TNT1 A 0 A_JumpIfInventory("IsFlashlightOn", 1, "FlashOn")\n'
                '	Goto Flash\n'
                '	FlashOn:\n'
                '	TNT1 A 0 A_FireCustomMissile("FlashlightProjectile", 0, 0, 0, 0, 0, 0)\n'
                '	TNT1 A 0 A_FireCustomMissile("FlashlightSource", 0, 0, 0, 0, 0, 0)\n'
                '	Goto Flash \n'
                '	CheckFlashLight:\n'
                '	TNT1 A 1\n'
                '	TNT1 A 0 A_TakeInventory("FlashlightAction")\n'
                '	TNT1 A 0 A_JumpIfInventory("IsFlashlightOn", 1, "TurnOffFlashlight")\n'
                '	TNT1 A 0 A_GiveInventory("IsFlashlightOn", 1)\n'
                '	Goto Flash\n'
                '	TurnOffFlashlight:\n'
                '	TNT1 A 0 A_TakeInventory("IsFlashlightOn", 1)\n'
                '	Goto Flash\n'
                '	\n'
                '	Ready:\n'
                '        //TNT1 A 1 A_JumpIfInventory("GoFatality", 1, "Steady")\n'
                '        TNT1 A 0 A_PlaySound("CLIPIN")\n'
                '        PISS AB 1\n'
                '        TNT1 AAAAAAAA 0\n'
                '        TNT1 A 0 //A_JumpIfInventory("BDPistolAmmo",1,2)\n'
                '        //Goto Reload\n'
                '        TNT1 AAAA 0\n'
                '\n'
                '        TNT1 A 0 A_JumpIfInventory("Kicking",1,"DoKick")\n'
                '        TNT1 A 0 A_JumpIfInventory("Taunting",1,"Taunt")\n'
                '		TNT1 A 0 A_JumpIfInventory("Salute1", 1, "Salute")\n'
                '		TNT1 A 0 A_JumpIfInventory("Salute2", 1, "Salute")\n'
                '        TNT1 A 0 A_JumpIfInventory("Reloading",1,"Reload")\n'
                '		TNT1 A 0 A_JumpIfInventory("TossGrenade",1,"TossGrenade")\n'
                '		PISG A 1 A_WeaponReady\n'
                '		TNT1 A 0 A_GunFlash\n'
                '		Goto Ready+9\n'
                '	Deselect:\n'
                '        PISS BA 1\n'
                '		TNT1 AAAAAAAAAAAAAAAAAA 0 A_Lower\n'
                '		TNT1 A 0 A_TakeInventory("TossGrenade", 1)\n'
                '		TNT1 A 1 A_Lower\n'
                '		Wait\n'
                '	Select:\n'
                '	\n'
                '	TNT1 A 0 A_Takeinventory("FistsSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("SawSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("ShotgunSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("SSGSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("MinigunSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("PlasmaGunSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("RocketLauncherSelected",1)\n'
                '    TNT1 A 0 A_Takeinventory("GrenadeLauncherSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("BFGSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("BFG10kSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("RailGunSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("SubMachineGunSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("RevenantLauncherSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("LostSoulSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("FlameCannonSelected",1)\n'
                '	TNT1 A 0 A_Takeinventory("HasBarrel",1)\n'
                '	\n'
                '		TNT1 A 0 A_Raise\n'
                '		Wait\n'
                '    Fire:\n'
                '        TNT1 A 0 A_JumpIfInventory("BDPistolAmmo",1,2)\n'
                '        Goto Reload\n'
                '        TNT1 AAAA 0\n'
                '        TNT1 A 0 A_PlaySound("weapons/rifle")\n'
                '		TNT1 A 0 A_FireCustomMissile("YellowFlareSpawn",0,0,0,0)\n'
                '		PISF A 1 BRIGHT A_FireBullets (2, 2, -1, 11, "HitPuff")\n'
                '        RIFF A 0 A_FireCustomMissile("Tracer", random(-2,2), 0, -1, 0)\n'
                '		TNT1 A 0 A_FireCustomMissile("ShakeYourAssMinor", 0, 0, 0, 0)\n'
                '		TNT1 A 0 A_Takeinventory("BDPistolAmmo",1)\n'
                '        PISF B 1\n'
                '		TNT1 A 0 A_FireCustomMissile("RifleCaseSpawn",5,0,8,-9)\n'
                '		PISF C 1 A_WeaponReady(1)\n'
                '		PISG A 7 A_WeaponReady(1)\n'
                '		Goto Ready+6\n'
                '		\n'
                '	NoAmmo:\n'
                '	PISG A 1\n'
                '	Goto Ready+10\n'
                '	\n'
                '    Reload:\n'
                '		PISG A 1 A_WeaponReady\n'
                '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
                '		TNT1 A 0 A_Takeinventory("ADSmode",1)\n'
                '		TNT1 A 0 A_JumpIfInventory("BDPistolAmmo",15,26)\n'
                '\n'
                '        TNT1 A 0 A_JumpIfInventory("Clip2",1,3)\n'
                '        Goto NoAmmo\n'
                '        TNT1 AAA 0\n'
                '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
                '        TNT1 A 0 A_ZoomFactor(1.0)\n'
                '        TNT1 A 0 A_PlaySound("Reload")\n'
                '		TNT1 A 0 A_GiveInventory ("Pumping", 1)\n'
                '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
                '		RIFR C 0 A_FireCustomMissile("EmptyClip2Spawn",-5,0,8,-4)\n'
                '        PISR A 6 \n'
                '        PISR BCDEFG 3\n'
                '		\n'
                '		TNT1 AAAAAAAAAAAAAAAAAAAAAAAAAAA 0\n'
                '		TNT1 A 0 A_JumpIfInventory("BDPistolAmmo",15,15)\n'
                '		TNT1 A 0 A_JumpIfInventory("Clip2",1,3)\n'
                '		Goto Ready+6\n'
                '        TNT1 AAAAAA 0\n'
                '		TNT1 A 0 A_Giveinventory("BDPistolAmmo",1)\n'
                '		TNT1 A 0 A_Takeinventory("Clip2",1)\n'
                '		Goto Reload+28\n'
                '		\n'
                '		TNT1 AAAAAAAAAA 0\n'
                '		TNT1 A 0 A_Takeinventory("Reloading",1)\n'
                '        Goto Ready+6\n'
                '		TNT1 AAAA 0\n'
                '				TNT1 A 0 A_Takeinventory("Reloading",1)\n'
                '        Goto Ready+6\n'
                ' 	Spawn:\n'
                '		PIST A -1\n'
                '		Stop\n'
                '	Taunt:\n'
                '		TNT1 A 0 A_Takeinventory("Zoomed",1)\n'
                '        TNT1 A 0 A_ZoomFactor(1.0)\n'
                '		TNT1 A 0 A_Takeinventory("Taunting",1)\n'
                '		TNT1 A 0 A_JumpIfInventory("RealismMode", 1, "CheckGrab")\n'
                '        TNT1 A 10\n'
                '		FUCK A 1\n'
                '		TNT1 A 0 BRIGHT A_FireCustomMissile("Taunter", 0, 0, -1, 0)\n'
                '		TNT1 A 0 BRIGHT A_FireCustomMissile("Taunter", -9, 0, -1, 0)\n'
                '		TNT1 A 0 BRIGHT A_FireCustomMissile("Taunter", 9, 0, -1, 0)\n'
                '        FUCK B 1 A_PlaySound("FUCK", 2)\n'
                '        FUCK CD 1 A_AlertMonsters\n'
                '		FUCK E 15 A_Takeinventory("Taunting",1)\n'
                '        FUCK DCBA 1\n'
                '        TNT1 A 10\n'
                '		Goto Ready\n'
                '	Salute:\n'
                '	    TNT1 A 0 SetPlayerProperty(0,1,0)\n'
                '		TNT1 A 0 A_ALertMonsters\n'
                '		SALU ABCDEDCDEDCDEDCBA 4\n'
                '		TNT1 A 0 A_TakeInventory("Salute1",1)\n'
                '		TNT1 A 0 A_TakeInventory("Salute2",1)\n'
                '		TNT1 A 0 SetPlayerProperty(0,0,0)\n'
                '		Goto Ready\n'
                '		\n'
                '	CheckGrab:\n'
                '	    TNT1 A 0 \n'
                '		TNT1 A 0 A_JumpIfTargetInLOS("CheckDistanceGrab")\n'
                '		Goto Ready+6\n'
                '	CheckDistanceGrab:\n'
                '	    TNT1 A 0 \n'
                '		TNT1 A 0 A_JumpIfCloser(100, "Grab")\n'
                '		Goto Ready+6\n'
                '	CheckIfCanGrab:\n'
                '	    TNT1 A 0 \n'
                '		TNT1 A 0 A_JumpIfInTargetInventory("CanGrab", 1, "Grab")\n'
                '		Goto Ready+6	\n'
                '	Grab:\n'
                '	    PKUP ABC 2\n'
                '		TNT1 A 0 A_CustomMissile("PickupProjectile")\n'
                '		PKUP DEF 2\n'
                '		Goto Ready\n'
                '	TossGrenade:	\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_TakeInventory("TossGrenade", 1)\n'
                '		TNT1 A 0 A_JumpIfInventory("GrenadeAmmo", 1, 1)\n'
                '		Goto NoGrenade\n'
                '		GRTH ABCD 1\n'
                '		TNT1 A 0 A_GiveInventory("FiredGrenade", 1)\n'
                '		TNT1 A 0 A_PLaySound ("GRNPIN")\n'
                '		GRTH EEFG 1\n'
                '		TNT1 A 0 A_PLaySound ("GRNTOSS")\n'
                '		GRTH HI 1\n'
                '		TNT1 A 0 A_TakeInventory("GrenadeAmmo", 1)\n'
                '		TNT1 A 0 A_FireCustomMissile("HandGrenade", random(-2,2), 0, 0, 0, 0, 0)\n'
                '	    TNT1 A 0 A_TakeInventory("FiredGrenade", 1)\n'
                '		GRTH JKLM 1\n'
                '		TNT1 A 1 \n'
                '		TNT1 A 0 A_TakeInventory("TossGrenade", 1)\n'
                '		Goto Ready	\n'
                '	NoGrenade:\n'
                '		TNT1 A 0\n'
                '		TNT1 A 0 A_Print("No Grenades Left.")\n'
                '		Goto REady+6	\n'
                ,generickickstate,
                '	}\n'
                '}\n'
                'actor MG42Oblige : HitlersBuzzsaw 321\n'
		'{\n'
                '//$Category "Weapons"\n'
                'Tag "MG42"\n'
                'Weapon.SlotNumber 4\n'
		'}\n'
                '\n'
                'actor OldSkoolPlasmaRifle : ClassicPlasmaRifle\n'
                '{\n'
                '   states\n'
                '   {\n'
                '   Steady:\n'
                '   Ready:\n'
                '        TNT1 A 0 A_JumpIfInventory("TossGrenade",1,"TossGrenade")\n'
                '        TNT1 A 0 A_JumpIfInventory("Kicking",1,"DoKick")\n'
                '        3LSG A 1 A_WeaponReady\n'
                '        Loop\n'
                '   Select:\n'
                '        TNT1 A 0 A_Giveinventory("HasPlasmaWeapon",1)\n'
                '        3LSG A 1 A_Raise\n'
                '        Loop\n'
                '    Deselect:\n'
                '        TNT1 A 0 A_Takeinventory("HasPlasmaWeapon",1)\n'
                '        3LSG A 1 A_Lower\n'
                '        Loop\n',
                generickickstate,
                genericgrenadestate,
                '   Fire:\n'
                '    TNT1 A 0 A_FireCustomMissile("OldSkoolPlasmaBall", 0, 1, 0, -10)\n'
                '    3LSF EF 1 BRIGHT\n'
                '    3KPL A 1\n'
                '    TNT1 A 0 A_Refire\n'
                '    3KPL ABCDEFF 1\n'
                '    3KPL G 6\n'
                '    3KPL FFEDCBA 1\n'
                '    Goto Ready\n'
                '   }\n'
                '}\n'
                '\n'
                'actor OldSkoolPlasmaBall : ClassicPlasmaBall\n'
                '{\n'
                    'Decal "SmallerScorch"\n'
                '}\n'
                'actor LethalZorch : ClassicPlasmaBall\n'
                '{\n'
                'Translation "192:207=16:31"\n'
                'Decal "SmallerScorch"\n'
                'States\n'
                '{\n'
                '	Spawn2:\n'
                '		PLSS ABAB 1 Bright A_SpawnItem("RedFlareSmall")\n'
                '		Loop\n'
                '	Death:\n'
                '	    TNT1 A 0\n'
                '		TNT1 A 0 A_CustomMissile ("zorchfire", 0, 0, random (0, 360), 2, random (0, 360))\n'
                '		TNT1 AAAAA 0 A_CustomMissile ("zorchparticle", 0, 0, random (0, 360), 2, random (0, 360))\n'
                '		PLSE ABC 2 BRIGHT A_SpawnItem("RedFlare")\n'
                '		PLSE DE 2 Bright A_SpawnItem("RedFlareSmall")\n'
                '		Stop\n'
                '}\n'
                '}\n'
                'actor zorchfire : BluePlasmaFire\n'
                '{\n'
                'Translation "192:207=16:31"\n'
                '}\n'
                'actor zorchparticle : BluePlasmaParticle\n'
                '{\n'
                'Translation "192:207=16:31"\n'
                '}\n'
                '\n'
                'Actor UnrestrictedZorcher : OldSkoolPlasmaRifle\n'
                '{\n'
                'Inventory.Pickupmessage "Set zorchers to kill! (Slot 6)"\n'
                'States\n'
                '	{\n'
                '	Ready:\n'
                '		ZORC A 1 A_WeaponReady\n'
                '		Loop\n'
                '	Deselect:\n'
                '                TNT1 A 0 A_Takeinventory("HasPlasmaWeapon",1)\n'
                '		ZORC A 1 A_Lower\n'
                '		Loop\n'
                '	Select:\n'
                '                TNT1 A 0 A_Giveinventory("HasPlasmaWeapon",1)\n'
                '		ZORC A 1 A_Raise\n'
                '		Loop\n'
                '	Fire:\n'
                '		TNT1 A 0 A_FireCustomMissile("LethalZorch", 0, 1, 0, -10)\n'
                '		ZORC CD 1 BRIGHT\n'
                '		ZORC CD 1\n'
                '		TNT1 A 0 A_Refire\n'
                '		ZORC CDAB 1\n'
                '		ZORC AB 6\n'
                '		ZORC A 1\n'
                '		Goto Ready\n'
                '	Spawn:\n'
                '		ZORP A -1\n'
                '		Stop\n'
                '	}\n'
                '}\n'
                '\n'
                'actor zorcheronground 322\n'
                '{\n'
                '//$Category "Weapons"\n'
                '//$EditorSprite "ZORPA0"\n'
                'Tag "93 series Plasma Rifle/Unrestricted Zorcher"\n'
                'States\n'
                '{\n'
                    'Spawn:\n'
                    'TNT1 A 0 A_CheckProximity("Chexspawn","ObligeFlemoid1",32767,1,CPXF_NOZ | CPXF_COUNTDEAD)\n'
                    'TNT1 A 0 A_CheckProximity("Chexspawn","ObligeFlemoid2",32767,1,CPXF_NOZ | CPXF_COUNTDEAD)\n'
                    'TNT1 A 0 A_CheckProximity("Chexspawn","ObligeFlemoid3",32767,1,CPXF_NOZ | CPXF_COUNTDEAD)\n'
                    'TNT1 A 0 A_CheckProximity("Chexspawn","ObligeQuadrumpus",32767,1,CPXF_NOZ | CPXF_COUNTDEAD)\n'
                    'TNT1 A 1\n'
                    'TNT1 A 0 A_SpawnItem("OldSkoolPlasmaRifle",0,0)\n'
                    'stop\n'
                    'Chexspawn:\n'
                    'TNT1 A 0 A_SpawnItem("UnrestrictedZorcher",0,0)\n'
                    'stop\n'
                '}\n'
                '}\n'
                '\n'
                'actor SkelPosterDecal\n'
		'{\n'
		  'Radius 2\n'
		  'Height 2\n'
		  'Damage 0\n'
		  'Speed 100\n'
		  'Decal Skel_Poster\n'
		  'Projectile\n'
		  '+RIPPER\n'
		  '+BLOODLESSIMPACT\n'
		  'States\n'
		  '{\n'
		  'Spawn:\n'
		    'TNT1 A 1\n'
		    'goto Death\n' --only lasting 1 tic give it enough time to hit a nearby wall but not enough to cross a room (and hit a pillar)
		  'Death:\n'
		    'TNT1 A 1\n'
		    'stop\n'
		  '}\n'
		'}\n'
		'actor SkelPosterPainter 323\n'
		'{\n'
		  '//$Category decals\n'
		  'Radius 36\n'
		  'Height 2\n'
		  '+NOINTERACTION\n'
		  '+NOGRAVITY\n'
		  'States\n'
		  '{\n'
		  'Spawn:\n'
			'TNT1 A 0 A_SpawnItem("Stimpack",0,0)\n'
			'TNT1 A 0 A_JumpIf(ceilingz-floorz<height,"End")\n'
			'TNT1 A 0 A_Jump(256,"Angle1","Angle2","Angle3","Angle4")\n'
			'Goto Paint\n'
		  'Angle1:\n'
		    	'TNT1 A 0 A_SetAngle(0)\n'
		    	'Goto Paint\n'
		  'Angle2:\n'
		    	'TNT1 A 0 A_SetAngle(90)\n'
		    	'Goto Paint\n'
		  'Angle3:\n'
		    	'TNT1 A 0 A_SetAngle(180)\n'
		    	'Goto Paint\n'
		  'Angle4:\n'
		    	'TNT1 A 0 A_SetAngle(270)\n'
		    	'Goto Paint\n'
		  'Paint:\n'
		    	'TNT1 A 1 A_SpawnItemEx ("SkelPosterDecal", 0, 0, 75, 100, 0, 0, 0, 0, 0)\n'
		    	'Goto End\n'
		  'End:\n'
			'TNT1 A -1\n'
		    	'Stop\n'
		  '}\n'
		'}\n'
		'ACTOR ChexBlueCard : CustomInventory 331\n'
		'{\n'
		'  Inventory.PickupMessage "$GOTBLUECARD"\n'
		'  States\n'
		'  {\n'
		'  Spawn:\n'
		'    BCKY A 10\n'
		'    BCKY B 10 Bright\n'
		'    Loop\n'
		'   Pickup:\n'
		'	 TNT1 A 0 A_GiveInventory("BlueCard", 1)\n'
		'	 Stop\n'
		'  }\n'
		'}\n'
		'ACTOR ChexRedCard : CustomInventory 332\n'
		'{\n'
		'  Inventory.PickupMessage "$GOTREDCARD"\n'
		'  States\n'
		'  {\n'
		'  Spawn:\n'
		'    RCKY A 10\n'
		'    RCKY B 10 Bright\n'
		'    Loop\n'
		'   Pickup:\n'
		'	 TNT1 A 0 A_GiveInventory("RedCard", 1)\n'
		'	 Stop\n'
		'  }\n'
		'}\n'
		'ACTOR ChexYellowCard : CustomInventory 333\n'
		'{\n'
		'  Inventory.PickupMessage "$GOTYELWCARD"\n'
		'  States\n'
		'  {\n'
		'  Spawn:\n'
		'    YCKY A 10\n'
		'    YCKY B 10 Bright\n'
		'    Loop\n'
		'   Pickup:\n'
		'	 TNT1 A 0 A_GiveInventory("YellowCard", 1)\n'
		'	 Stop\n'
		'  }\n'
		'}\n'
	}
    gui.wad_add_text_lump("DECORATE", data);

local confdata =
	{
	'setslot 1 Chain_Saw ClassicModernSaw Melee_Attacks ClassicFist ClassicSaw\n'
	'setslot 2 DualRifles Rifle  BrutalPistol ClassicPistol MP40 BrutalPistolOblige\n'
	'setslot 3 Shot_Gun SSG ClassicShotgun ClassicSSG\n'
	'setslot 4 MiniGun ClassicChaingun HitlersBuzzsaw MG42Oblige D4Machinegun\n'
	'setslot 5 GrenadeLauncher Rocket_Launcher ClassicRocketLauncher GrenadeLauncherOblige\n'
	'setslot 6 RailGun DualPlasmaRifles Plasma_Gun ClassicPlasmaRifle OldSkoolPlasmaRifle RailGunOblige UnrestrictedZorcher\n'
	'setslot 7 BFG10k BIG_FUCKING_GUN VanillaBFG9000 BFG10KOblige D4GaussCannon\n'
	'setslot 8 HellishMissileLauncher\n'
	'setslot 9 FlameCannon\n'
	'setslot 0 HandGrenades HandGrenadesOblige\n'

	}
    gui.wad_add_text_lump("KEYCONF", confdata);

end

function BRUTALITY.setup()

local data =
	{
		'//Brutality additions\n'
		'#include "BRUMONS" \n'
		'//weapons\n\n'
		'actor NilHandGrenadesOblige : PistolAmmo 299\n'
		'{\n'
		'}\n'
		'\n'
		'actor GrenadeAmmoOblige : LauncherAmmoSpawner 300\n'
		'{\n'
		'}\n'
		'\n'
		'actor NilGrenadeBoxOblige : PistolAmmo 301\n'
		'{\n'
		'}\n'
		'\n'
		'actor GrenadeLauncherOblige : LauncherWeaponSpawner 298\n'
		'{\n'
		'}\n'
		'\n'
		'actor RailGunOblige : PlasmaWeaponSpawner 297\n'
		'{\n'
		'}\n'
		'\n'
		'actor BFG10KOblige : BFGWeaponSpawner 296\n'
		'{\n'
		'}\n'
		'\n'
                'actor NilBrutalPistolOblige : PistolAmmo 320\n'
		'{\n'
		'}\n'
		'\n'
                'actor Clip2 : PistolAmmo\n'
		'{\n'
		'}\n'
		'\n'
                'actor NilD4MachinegunOblige : ChaingunWeaponSpawner 314\n'
		'{\n'
		'}\n'
		'\n'
	}
      gui.wad_add_text_lump("DECORATE", data);
end

function BRUTALDOOM.flem_nukage()
	gui.wad_merge_sections("brutaloblige/flem.wad")
	local flemdata =
	{
	'flat SNOT1\n'
		'pic SNOT1 tics 5\n'
		'pic SNOT2 tics 5\n'
		'pic SNOT3 tics 5\n'
	'flat SNOT4\n'
		'pic SNOT4 tics 4\n'
		'pic SNOT5 tics 4\n'
		'pic SNOT6 tics 4\n'
		'pic SNOT7 tics 4\n'
	'texture SNTFL1\n'
		'pic SNTFL1 tics 4\n'
		'pic SNTFL2 tics 4\n'
		'pic SNTFL3 tics 4\n'
	'// CQ3 Animated Sky\n'
	'texture CHEXSKY3\n'
		'pic CHEXSKY3 tics 3\n'
		'pic CJSKY3B tics 3\n'
		'pic CJSKY3C tics 3\n'
		'pic CJSKY3D tics 3\n'
		'pic CJSKY3E tics 3\n'
		'pic CJSKY3F tics 3\n'
		'pic CJSKY3G tics 3\n'
		'pic CJSKY3H tics 3\n'
	}
gui.wad_add_text_lump("ANIMDEFS", flemdata);
	flemdata =
	{
		'splash 	Flem\n'
		'{\n'
		 'smallclass 	nukageSplashBase\n'
		 'smallclip		6\n'
		 'baseclass		nukageSplashBase\n'
		 'chunkclass	    sludgechunk\n'
		 'chunkxvelshift	8\n'
		 'chunkyvelshift	8\n'
		 'chunkzvelshift	6\n'
		 'chunkbasezvel	2\n'
		 'sound		world/lavasizzle\n'
		 'NoAlert\n'
		'}\n'
		'\n'
		'terrain	 Flem\n'
		'{\n'
		 'splash 	Flem\n'
		 'footclip	 6\n'
		 'liquid\n'
		'}\n'
		'\n'
		'floor SNOT1 Flem\n'
		'floor SNOT2 Flem\n'
		'floor SNOT3 Flem\n'
		'floor SNOT4 Flem\n'
		'floor SNOT5 Flem\n'
		'floor SNOT6 Flem\n'
		'floor SNOT7 Flem\n'
	}
gui.wad_add_text_lump("TERRAIN", flemdata);
end

OB_GAMES["brutaldoom"] =
{
  label = "Brutal Doom"

  extends = "doom2"

  format = "doom"

  engine = { boom=0, gzdoom=1, zandronum=0 }

  tables =
  {
    BRUTALDOOM
    BRUTALDOOM4
  }

  hooks =
  {
    setup       = BRUTALDOOM.setup
    get_levels  = BRUTALDOOM.get_levels
    all_done	= BRUTALDOOM.all_done
  }
}

OB_GAMES["brutality"] =
{
  label = "Project Brutality"

  extends = "brutaldoom"

  format = "doom"

  tables =
  {
    BRUTALITY
  }

  hooks =
  {
    setup = BRUTALITY.setup
    all_done = BRUTALITY.all_done
  }
}

OB_MODULES["brutaldoom"] =
{
  label = "Brutal Doom"

  game = { doom1=1, doom2=1 }

  engine = { boom=0 } --hides it from the list (as ticking it or not makes no difference). A bit of a hack but it works.
}
  
OB_MODULES["brutalfriends"] =
{
  label = "Brutal Friends"

  game = { brutaldoom=1 }
  playmode = { sp=1, coop=1 }
  
  hooks =
  {
    setup = BRUTALFRIENDS.setup
  }

  tables =
  {
    BRUTALFRIENDS
  }
}

OB_MODULES["brutaltweaks"] =
{
  label = "Brutal Doom Tweaks"

  game = { brutaldoom=1, brutal64=1 }
  playmode = { sp=1, coop=1 }
  
  tables =
  {
      DOOMMETAL
  }
  
  hooks =
  {
    setup = DOOMMETAL.setup
  }
  options =
  {
      iwad =
      {
          label="iwad"
          choices=BRUTALDOOM.IWADS
          tooltip="Sets which iwad to load Brutal Doom with"
      }
      musicpreset =
      {
          label="Music"
          choices=BRUTALDOOM.musicpresets
      }
      skygenerator =
      {
          label="Additional Skies"
          choices=BRUTALDOOM.YES_NO
          tooltip="Generates an extra sky texture for each theme. The will be a 50/50 split between levels of that theme which use the original and those which use this new texture."
      }
  }
}


---Sky Generator---
BRUTALDOOM.sky_colormaps =
{
  -- star colors --

  STARS =
  {
    8, 7, 6, 5,
    111, 109, 107, 104, 101,
    98, 95, 91, 87, 83, 4
  }

  -- cloud colors --

  GREY_CLOUDS =
  {
    106, 104, 102, 100,
    98, 96, 94, 92, 90,
    88, 86, 84, 82, 80
  }

  DARK_CLOUDS =
  {
    7, 6, 5,
    110, 109, 108, 107, 106,
    105, 104, 103, 102, 101
  }

  BLUE_CLOUDS =
  {
    245, 245, 244, 244, 243, 242, 241,
    240, 206, 205, 204, 204, 203, 203
  }

  HELL_CLOUDS =
  {
    188, 185, 184, 183, 182, 181, 180,
    179, 178, 177, 176, 175, 174, 173
  }

  ORANGE_CLOUDS =
  {
    234, 232, 222, 220, 218, 216, 214, 211
  }

  HELLISH_CLOUDS =
  {
    0, 0, 0, 0, 0, 47, 191, 190, 191, 47, 0, 0
  }

  BROWN_CLOUDS =
  {
     2, 1,
     79, 78, 77, 76, 75, 74, 73,
     72, 71, 70, 69, 67, 66, 65
  }

  BROWNISH_CLOUDS =
  {
    239, 238, 237, 236, 143, 142, 141,
    140, 139, 138, 137, 136, 135, 134,
    133, 130, 129, 128
  }

  YELLOW_CLOUDS =
  {
    167, 166, 165, 164, 163, 162,
    161, 160, 228, 227, 225
  }

  GREEN_CLOUDS =
  {
    127, 126, 125, 124, 123, 122, 121,
    120, 119, 118, 117, 115, 113, 112
  }

  JADE_CLOUDS =
  {
    12, 11, 10, 9,
    159, 158, 157, 156, 155, 154, 153, 152
  }

  DARKRED_CLOUDS =
  {
     47, 46, 45, 44, 43, 42, 41, 40, 39, 37, 36, 34
  }

  PEACH_CLOUDS =
  {
     68, 66, 64, 62, 60, 58, 57
  }

  WHITE_CLOUDS =
  {
     99, 98, 97, 96, 95, 94, 93,
     92, 91, 90, 89, 88, 87, 86,
     85, 84, 83, 81
  }

  SKY_CLOUDS =
  {
    194, 195, 196, 197, 199, 201
  }

  PURPLE_CLOUDS =
  {
    254, 253, 252, 251, 250, 251, 252, 253, 254
  }

  RAINBOW_CLOUDS =
  {
    191, 186, 181, 176,
    231, 161, 164, 167,
    242, 207, 204, 199,
    115, 119, 123, 127
  }

  BLACK_N_WHITE =
  {
    0, 4, 0, 4, 0, 4, 0, 4
  }

  -- hill colors --

  BLACK_HILLS =
  {
    0, 0, 0
  }

  BROWN_HILLS =
  {
    0, 2, 1, 79, 77, 75, 73, 70, 67, 64
  }

  TAN_HILLS =
  {
    239, 237, 143, 140, 136, 132, 128
  }

  GREEN_HILLS =
  {
    0, 7,
    127, 126, 125, 124, 123,
    122, 120, 118, 116, 113
  }

  DARKGREEN_HILLS =
  {
    0, 7, 127, 126, 125, 124
  }

  HELL_HILLS =
  {
    0, 6, 47, 45, 43, 41, 39, 37, 35, 33
  }

  DARKBROWN_HILLS =
  {
    8, 7, 2, 1, 79, 78, 77, 76, 75
  }

  GREENISH_HILLS =
  {
    0, 7, 12, 11, 10, 9, 15, 14, 13,
    159, 158, 157, 156, 155, 154
  }
}


BRUTALDOOM.sky_themes =
{
  urban =
  {
    clouds =
    {
      SKY_CLOUDS = 150
      BLUE_CLOUDS = 80
      WHITE_CLOUDS = 80
      GREY_CLOUDS = 80
      DARK_CLOUDS = 50

      BROWN_CLOUDS = 40
      BROWNISH_CLOUDS = 40
      PEACH_CLOUDS = 40
      GREEN_CLOUDS = 20
      JADE_CLOUDS = 20
    }

    hills =
    {
      TAN_HILLS = 30
      BROWN_HILLS = 50
      DARKBROWN_HILLS = 50
      GREENISH_HILLS = 30
      BLACK_HILLS = 5
    }

    dark_hills =
    {
      DARKGREEN_HILLS = 50
      DARKBROWN_HILLS = 50
    }
  }


  hell =
  {
    clouds =
    {
      HELL_CLOUDS = 70
      HELLISH_CLOUDS = 70
      DARKRED_CLOUDS = 50
      YELLOW_CLOUDS = 30
      ORANGE_CLOUDS = 30
    }

    hills =
    {
      HELL_HILLS = 50
      BROWN_HILLS = 50
      DARKBROWN_HILLS = 50
      BLACK_HILLS = 50
    }

    dark_hills =
    {
      HELL_HILLS = 50
      DARKBROWN_HILLS = 20
    }
  }


  psycho =
  {
    clouds =
    {
      PURPLE_CLOUDS  = 90
      YELLOW_CLOUDS  = 70
      HELLISH_CLOUDS = 20
      RAINBOW_CLOUDS = 10

      GREEN_CLOUDS = 70
      BLUE_CLOUDS  = 70
      WHITE_CLOUDS = 30
      GREY_CLOUDS  = 30
    }

    hills =
    {
      BLUE_CLOUDS = 50
      GREEN_HILLS = 50
      RAINBOW_CLOUDS = 50
      PURPLE_CLOUDS = 30
      YELLOW_CLOUDS = 30
      ORANGE_CLOUDS = 30
      WHITE_CLOUDS = 30
      HELLISH_CLOUDS = 20
    }

    -- no dark_hills
  }
}


function BRUTALDOOM.generate_skies()

  -- select episode for the starry starry night
  local starry_ep = rand.irange(1, # GAME.episodes)

  if rand.odds(37) then
    starry_ep = -7
  end

  -- determine themes for each episode
  local theme_list = { "urban", "urban", "hell", "hell" }

  -- when user has picked a specific theme, honor it
  if OB_CONFIG.theme == "hell" then
    theme_list[1] = "hell"
    theme_list[2] = "hell"
  elseif OB_CONFIG.theme == "urban" then
    theme_list[3] = "urban"
    theme_list[4] = "urban"
  elseif OB_CONFIG.theme == "tech" then
    theme_list[3] = "urban"
  end

  rand.shuffle(theme_list)

  -- copy all theme tables [so we can safely modify them]
  local all_themes = table.deep_copy(BRUTALDOOM.sky_themes)


  gui.printf("\nBrutal Sky generator:\n");

  each EPI in GAME.episodes do
    assert(EPI.sky_patch)
    assert(_index <= #theme_list)

    local seed = int(gui.random() * 1000000)

    local squish = rand.index_by_probs({ 1, 4, 2 })

    local is_starry = (_index == starry_ep)


    local theme_name = theme_list[_index]

    if OB_CONFIG.theme == "original" then
      if EPI.theme == "hell" or EPI.theme == "flesh" then
        theme_name = "hell"
      else
        theme_name = "urban"
      end

    elseif OB_CONFIG.theme == "psycho" then
      theme_name = "psycho"
    end

    local theme = all_themes[theme_name]

    assert(theme)
    assert(theme.clouds)
    assert(theme.hills)

    local hill_tab = theme.hills


    gui.fsky_create(256, 128, 0)

    if is_starry then

      --- Stars ---

      local name = "STARS"

      local colormap = BRUTALDOOM.sky_colormaps[name]
      if not colormap then
        error("Brutal Sky Generator: unknown colormap: " .. tostring(name))
      end

      gui.printf("  %d = %s\n", _index, name)

      gui.set_colormap(1, colormap)
      gui.fsky_add_stars({ seed=seed, colmap=1 })

      if theme.dark_hills then
        hill_tab = theme.dark_hills
      end

      EPI.dark_prob = 100  -- always, for flyingdeath

    else
      --- Clouds ---

      local name = rand.key_by_probs(theme.clouds)
      -- don't use same one again
      theme.clouds[name] = nil

      local colormap = BRUTALDOOM.sky_colormaps[name]
      if not colormap then
        error("Brutal Sky Generator: unknown colormap: " .. tostring(name))
      end

      gui.printf("  %d = %s\n", _index, name)

      gui.set_colormap(1, colormap)
      gui.fsky_add_clouds({ seed=seed, colmap=1, squish=squish })

      EPI.dark_prob = 10
    end


    if rand.odds(80) then

      --- Hills ---

      local name = rand.key_by_probs(hill_tab)
      -- don't use same one again
      hill_tab[name] = hill_tab[name] / 1000

      local colormap = BRUTALDOOM.sky_colormaps[name]
      if not colormap then
        error("Brutal Sky Generator: unknown colormap: " .. tostring(name))
      end

      gui.printf("    + %s\n", name)

      gui.set_colormap(2, colormap)
      gui.fsky_add_hills({ seed=seed+1, colmap=2, max_h=0.6 })
    end

    gui.fsky_write(EPI.sky_patch .. 'B')

    if EPI.sky_patch2 then gui.fsky_write(EPI.sky_patch2 .. 'B') end
    if EPI.sky_patch3 then gui.fsky_write(EPI.sky_patch3 .. 'B') end
    if EPI.sky_patch4 then gui.fsky_write(EPI.sky_patch4 .. 'B') end
  end

  gui.printf("\n")
end



-----------------------------------------------------------------------------
        --STARTERPACK--
-----------------------------------------------------------------------------

--Banners etc----------------------------------------------------------
function STARTERPACK.decorate()

  local data =
	{
		'actor NukemDecal1\n'
		'{\n'
		  'Radius 2\n'
		  'Height 2\n'
		  'Damage 0\n'
		  'Speed 100\n'
		  'Decal NUKEM\n'
		  'Projectile\n'
		  '+RIPPER\n'
		  '+BLOODLESSIMPACT\n'
		  'States\n'
		  '{\n'
		  'Spawn:\n'
		    'TNT1 A 1\n'
		    'goto Death\n' --only lasting 1 tic give it enough time to hit a nearby wall but not enough to cross a room (and hit a pillar)
		  'Death:\n'
		    'TNT1 A 1\n'
		    'stop\n'
		  '}\n'
		'}\n'
		'actor NukemPainter 12400\n'
		'{\n'
		  '//$Category decals\n'
		  'Radius 36\n'
		  'Height 2\n'
		  '+NOINTERACTION\n'
		  '+NOGRAVITY\n'
		  'States\n'
		  '{\n'
		  'Spawn:\n'
			'TNT1 A 0\n'
			'TNT1 A 0 A_JumpIf(ceilingz-floorz<height,"End")\n'
			'TNT1 A 0 A_Jump(256,"Angle1","Angle2","Angle3","Angle4")\n'
			'Goto Paint\n'
		  'Angle1:\n'
		    	'TNT1 A 0 A_SetAngle(0)\n'
		    	'Goto Paint\n'
		  'Angle2:\n'
		    	'TNT1 A 0 A_SetAngle(90)\n'
		    	'Goto Paint\n'
		  'Angle3:\n'
		    	'TNT1 A 0 A_SetAngle(180)\n'
		    	'Goto Paint\n'
		  'Angle4:\n'
		    	'TNT1 A 0 A_SetAngle(270)\n'
		    	'Goto Paint\n'
		  'Paint:\n'
		    	'TNT1 A 1 A_SpawnItemEx ("NukemDecal1", 0, 0, 40, 100, 0, 0, 0, 0, 0)\n'
		    	'Goto End\n'
		  'End:\n'
			'TNT1 A -1\n'
		    	'Stop\n'
		  '}\n'
		'}\n'
		'actor GrafDecal : NukemDecal1\n'
		'{\n'
			'Decal GRAFFITI\n'
		'}\n'
		'actor GraffitiPainter : NukemPainter 12401\n'
		'{\n'
		  'States\n' --had to do all the states otherwise it did the nukem posters. Don't know why.
		  '{\n'
		  'Spawn:\n'
			'TNT1 A 0\n'
			'TNT1 A 0 A_JumpIf(ceilingz-floorz<height,"End")\n'
			'TNT1 A 0 A_Jump(256,"Angle1","Angle2","Angle3","Angle4")\n'
			'Goto Paint\n'
		  'Angle1:\n'
		    	'TNT1 A 0 A_SetAngle(0)\n'
		    	'Goto Paint\n'
		  'Angle2:\n'
		    	'TNT1 A 0 A_SetAngle(90)\n'
		    	'Goto Paint\n'
		  'Angle3:\n'
		    	'TNT1 A 0 A_SetAngle(180)\n'
		    	'Goto Paint\n'
		  'Angle4:\n'
		    	'TNT1 A 0 A_SetAngle(270)\n'
		    	'Goto Paint\n'
		  'Paint:\n'
		    	'TNT1 A 1 A_SpawnItemEx ("GrafDecal", 0, 0, random(0,40), 100, 0, 0, 0, 0, 0)\n'
		    	'Goto End\n'
		  'End:\n'
			'TNT1 A -1\n'
		    	'Stop\n'
		  '}\n'
		'}\n'
		'actor WolfDecal : NukemDecal1\n'
		'{\n'
			'Decal WOLF\n'
		'}\n'
		'actor WolfPainter : NukemPainter 12402\n'
		'{\n'
		  'States\n'
		  '{\n'
		  'Spawn:\n'
			'TNT1 A 0\n'
			'TNT1 A 0 A_JumpIf(ceilingz-floorz<height,"End")\n'
			'TNT1 A 0 A_Jump(256,"Angle1","Angle2","Angle3","Angle4")\n'
			'Goto Paint\n'
		  'Angle1:\n'
		    	'TNT1 A 0 A_SetAngle(0)\n'
		    	'Goto Paint\n'
		  'Angle2:\n'
		    	'TNT1 A 0 A_SetAngle(90)\n'
		    	'Goto Paint\n'
		  'Angle3:\n'
		    	'TNT1 A 0 A_SetAngle(180)\n'
		    	'Goto Paint\n'
		  'Angle4:\n'
		    	'TNT1 A 0 A_SetAngle(270)\n'
		    	'Goto Paint\n'
		  'Paint:\n'
		    	'TNT1 A 1 A_SpawnItemEx ("WolfDecal", 0, 0, 132, 100, 0, 0, 0, 0, 0)\n'
		    	'Goto End\n'
		  'End:\n'
			'TNT1 A -1\n'
		    	'Stop\n'
		  '}\n'
		'}\n'
        'actor ObligeGermanDog : GermanDog Replaces GermanDog\n'
        '{\n'
        '-CANUSEWALLS\n'
        '}\n'
	}


--chose the bosses
   local r = rand.irange(1,3)
   if r == 2 then
	boss1 = "infernal"
   elseif r == 3 then
	boss1 = "cyberlordmajor"
   end
   r = rand.irange(1,2)
   if r == 2 and boss1 != "cyberlordmajor" then
	boss2 = "cyberlordminor"
   end

   if boss1 == "infernal" then
	table.insert(data, 'ACTOR ObligeInfernal : Infernal replaces CyberdemonBoss\n{\n}\n')
   elseif boss1 == "cyberlordmajor" then
	table.insert(data, 'ACTOR ObligeCyberdemonLord : CyberdemonLord replaces CyberdemonBoss\n{\n}\n')
   end
   if boss2 == "cyberlordminor" then
	table.insert(data, 'ACTOR ObligeCyberdemonLordMinor : CyberdemonLordMinor replaces SuperMasterMind\n{\n}\n')
   end

    gui.wad_add_text_lump("DECORATE", data);
    
    local decaldata =
    {
	'decal NUKEM1\n'
	'{\n'
	'pic DNZPOS30\n'
	'}\n'
	'decal NUKEM2\n'
	'{\n'
	'pic DNZPOS04\n'
	'}\n'
	'decal NUKEM3\n'
	'{\n'
	'pic DNZPOS02\n'
	'}\n'
	'decal NUKEM4\n'
	'{\n'
	'pic DNZPOS03\n'
	'}\n'
	'decal NUKEM5\n'
	'{\n'
	'pic DNZPOS29\n'
	'}\n'
	'decal NUKEM6\n'
	'{\n'
	'pic DNZPOS05\n'
	'}\n'
	'decalgroup NUKEM\n'
	'{\n'
	'NUKEM1	2\n'
	'NUKEM2	2\n'
	'NUKEM3	2\n'
	'NUKEM4	2\n'
	'NUKEM5	1\n'
	'NUKEM6	1\n'
	'}\n'
	--in no particular order....
	'decal GRAFFITI1\n'
	'{\n'
	'pic DNPIX1\n'
	'}\n'
	'decal GRAFFITI2\n'
	'{\n'
	'pic DNPIX2\n'
	'}\n'
	'decal GRAFFITI3\n'
	'{\n'
	'pic DNPIX3\n'
	'}\n'
	'decal GRAFFITI4\n'
	'{\n'
	'pic DNPIX4\n'
	'}\n'
	'decal GRAFFITI5\n'
	'{\n'
	'pic DNPIX5\n'
	'randomflipx\n'
	'}\n'
	'decal GRAFFITI6\n'
	'{\n'
	'pic DNPIX5\n'
	'shade "ff 00 00"\n'
	'}\n'
	'decal GRAFFITI7\n'
	'{\n'
	'pic DNPIX5\n'
	'randomflipx\n'
	'x-scale 0.25\n'
	'y-scale 0.25\n'
	'}\n'
	'decal GRAFFITI8\n'
	'{\n'
	'pic DNPIX5\n'
	'randomflipx\n'
	'x-scale 1.25\n'
	'y-scale 1.25\n'
	'}\n'
	'decal GRAFFITI9\n'
	'{\n'
	'pic DNPIX1\n'
	'x-scale 1.5\n'
	'y-scale 1.5\n'
	'}\n'
	'decal GRAFFITI10\n'
	'{\n'
	'pic DNPIX1\n'
	'x-scale 0.75\n'
	'y-scale 0.75\n'
	'}\n'
	'decal GRAFFITI11\n'
	'{\n'
	'pic DNPIX11\n'
	'shade "ff 00 00"\n'
	'x-scale 1.25\n'
	'y-scale 1.25\n'
	'}\n'
	'decalgroup GRAFFITI\n'
	'{\n'
	'GRAFFITI1	1\n'
	'GRAFFITI2	1\n'
	'GRAFFITI3	1\n'
	'GRAFFITI4	1\n'
	'GRAFFITI5	1\n'
	'GRAFFITI6	1\n'
	'GRAFFITI7	1\n'
	'GRAFFITI8	1\n'
	'GRAFFITI9	1\n'
	'GRAFFITI10	1\n'
	'GRAFFITI11	1\n'
	'}\n'
	--wolfenstein
	'decal WOLF1\n'
	'{\n'
	'pic ZZNAZIA\n'
	'}\n'
	'decal WOLF2\n'
	'{\n'
	'pic ZZNAZIB\n'
	'}\n'
	'decal WOLF3\n'
	'{\n'
	'pic ZZNAZIC\n'
	'}\n'
	'decal WOLF4\n'
	'{\n'
	'pic ZZNAZID\n'
	'}\n'
	'decal WOLF5\n'
	'{\n'
	'pic ZZNAZIE\n'
	'}\n'
	'decal WOLF6\n'
	'{\n'
	'pic ZZNAZIF\n'
	'}\n'
	'decalgroup WOLF\n'
	'{\n'
	'WOLF1	1\n'
	'WOLF2	1\n'
	'WOLF3	1\n'
	'}\n'
    }
    gui.wad_add_text_lump("DECALDEF", decaldata);
end

STARTERPACK.PICKUPS =
{
	  nukembanners =
	  {
	    	id = 12400
		r = 36
		h = 128
	    	kind = "health"  --not ideal but it works
	    	rank = 1
	    	add_prob = 0
	    	give = { {health=1} } --so it doesn't screw the player by not having any actual health packs
		theme = "nukem"
		theme_prob = 50--50 --because I'm rubbish at lua add_prob must always be zero and enter the desired prob as theme_prob if you want it theme specific 
	  }
	  graffiti =
	  {
	    	id = 12401
		r = 36
		h = 128
	    	kind = "health"  --not ideal but it works
	    	rank = 1
	    	add_prob = 0
	    	give = { {health=1} } --so it doesn't screw the player by not having any actual health packs
		theme = "nukem"
		theme_prob = 200
	  }
}

STARTERPACK.EXTRASTUFF =
{
	  trashcan1 =
	  {
	    	id = 1312
		r = 8
		h = 16
	    	add_prob = 50
		theme = "urban"
		theme_prob = 50
	  }
	  trashbag =
	  {
	    	id = 1315
		r = 12
		h = 16
	    	add_prob = 200
		theme = "urban"
		theme_prob = 75
	  }
	  extinguisher =
	  {
	    	id = 1281
		r = 12
		h = 16
	    	add_prob = 50
		theme = "urban"
		theme_prob = 50
	  }
}

--function STARTERPACK.bannersetup()
--  gui.printf("starterpack banner setup starts here\n")
--  if OB_CONFIG.theme == STARTERPACK.PICKUPS.nukembanners.theme then
--    gui.printf("theme matches\n")
--    GAME.PICKUPS["nukembanners"].add_prob=50
--  end
--  if OB_CONFIG.theme == STARTERPACK.PICKUPS.graffiti.theme then
--    gui.printf("theme matches\n")
--    GAME.PICKUPS["graffiti"].add_prob=200
--  end
--  if OB_CONFIG.theme == STARTERPACK.PICKUPS.wolfbanners.theme then
--    gui.printf("wolf theme matches\n")
--    GAME.PICKUPS["wolfbanners"].add_prob=50
--  end
--end

function STARTERPACK.bannersetup()
    gui.printf("Theme is " .. table.tostring(THEME) .. "\n");
    for _,P in pairs(GAME.PICKUPS) do
        if P.theme == THEME then
            gui.printf("theme matches\n")
            P.add_prob = P.theme_prob
        end
    end
end

function STARTERPACK.texturesetup()
  local data =
  {
	'texture SP_DUDE6, 64, 128\n'
	'{\n'
		'Patch WALL48_2, 0, 0\n'
		'Graphic CRANK, 2, -155\n'
		'Graphic CRANK, 20, -155\n'
		'Graphic BOSSJ0, 6, 32\n'
	'}\n'
	'texture SKINTEK2, 64, 128\n'
	'{\n'
	   'XScale 1.0\n'
	   'YScale 1.0\n'
	   'Patch GTGREN01, 0, 0\n'
	'}\n'
	'texture WLFBANNR, 512, 128\n'
	'{\n'
		'Patch WOLF1, 0, 0\n'
		'Patch WOLF1, 128, 0\n'
		'Patch ZZNAZIB, 128, 0\n'
		'Patch WOLF1, 256, 0\n'
		'Patch WOLF1, 384, 0\n'
		'Patch ZZNAZIC, 384, 0\n'
		'Patch WOLF1, 0, 128\n'
	'}\n'
    'texture O_BRUTAL, 128, 32\n'
	'{\n'
		'Patch BLACK, 0, 0\n'
                'Patch BLACK, 64, 0\n'
		'Graphic TEST, 12, 8\n'
	'}\n'
	'Texture "DNPSTER1", 88, 88\n'
	'{\n'
	'	XScale 0.700\n'
	'	YScale 0.700\n'
	'	Offset -1, -1\n'
	'	Patch "BRICK12", 0, 0\n'
	'	Patch "BRICK12", 64, 0\n'
	'	Patch "DNZPOS02", 8, 0\n'
	'}\n'
	'Texture "DNPSTER2", 88, 88\n'
	'{\n'
	'	XScale 0.700\n'
	'	YScale 0.700\n'
	'	Offset -1, -1\n'
	'	Patch "BRICK12", 0, 0\n'
	'	Patch "BRICK12", 64, 0\n'
	'	Patch "DNZPOS03", 8, 0\n'
	'}\n'
	'Texture "DNPSTER3", 88, 88\n'
	'{\n'
	'	XScale 0.700\n'
	'	YScale 0.700\n'
	'	Offset -1, -1\n'
	'	Patch "BRICK12", 0, 0\n'
	'	Patch "BRICK12", 64, 0\n'
	'	Patch "DNZPOS04", 8, 0\n'
	'}\n'
  }
    gui.wad_add_text_lump("TEXTURES", data);
end

--Monsters------------------------------
STARTERPACK.MONSTERS = 
{
  GermanDog =
  {
    id = 4395
    r = 12
    h = 28 
    level = 2
    theme = "wolf"
    prob = 60
    health = 80
    damage = 1
    attack = "melee"
    min_weapon = 1
    room_size = "any"
  }
  HeavyMachinegun =
  {
    id = 2567
    r = 20
    h = 56 
    level = 6
    prob = 5
    health = 60
    damage = 50
    attack = "hitscan"
    min_weapon = 4
    room_size = "large"
    cage_factor = 0
  }
}

--MAPINFO
STARTERPACK.music =
{
  songs =
  {
  --tech
    "D_RUNNIN", "$MUSIC_STALKS", "$MUSIC_COUNTD", "$MUSIC_BETWEE", "$MUSIC_DOOM",
    "$MUSIC_THE_DA", "$MUSIC_SHAWN",  "$MUSIC_DDTBLU", "$MUSIC_IN_CIT", "$MUSIC_DEAD",
  --urban
    "$MUSIC_STLKS2", "$MUSIC_THEDA2", "$MUSIC_DOOM2", "$MUSIC_RUNNI2", "$MUSIC_DDTBL2",
    "$MUSIC_DEAD2",  "$MUSIC_STLKS3", "D_ROMERO",
  --hell
    "D_SHAWN2", "D_MESSAG", "D_COUNT2", "D_DDTBL3", "$MUSIC_AMPIE",  "$MUSIC_THEDA3", "$MUSIC_ADRIAN",
    "$MUSIC_MESSG2", "D_ROMER2", "D_TENSE",  "D_SHAWN3",
  --other
    "STALKER"
  }
}

local function cyberlordexits() --switches positions of babel and dis (and back again) if big cyberlord boss at babel
 if boss1 == "cyberlordmajor" then
  local temp=secretexit1
  secretexit1=secretexit3
  secretexit3=temp	
 end
end

function STARTERPACK.create_mapinfo()
  
  gui.printf("Starterpack Mapinfo code is running\n")
  cyberlordexits()
  local data =
  {
    "//\n"
    "// MAPINFO LUMP created by OBLIGE\n"
    "//\n"
    'include BASEMI\n'
  }
  cyberlordexits()
--rename boss maps based on which boss is there
  for i = 1, (#data) do --for every value in data
   if boss1 == "infernal" then
	data[i] = string.gsub(data[i], '"Tower of Babel"','"The Fires of Babel"')
   elseif boss1 == "cyberlordmajor" then
	data[i] = string.gsub(data[i], '"Tower of Babel"','"The Tower"')	
   end
   if boss2 == "cyberlordminor" then
	data[i] = string.gsub(data[i], '"Dis"','"Distruction"')	
   end
  end

  --- music ---
  local epi_list = STARTERPACK.music
  local dest = { }

  each _,src in epi_list do
    dest = table.copy(src)
    
    -- this shuffle algorithm ensures first entry is never the same
    --once again I can't quite work out the code so I have left this even though I only need half of it
    for i = 1, (#dest-2) do
      local k = rand.irange(i + 1, #dest)
      dest[i], dest[k] = dest[k], dest[i]
    end
  end
    --after this dest[1-#src] are the music tracks
  dest[30] = "$MUSIC_OPENIN" --the epic boss battle music
  dest[31] = "DUTY" --map 31 always wolf themed
  dest[32] = "STALKER"

  local firstmap = 1
  local mapnum = 1

  --- level names ---
  --L.name is MAP01 etc, L.descritption is the nice name
  --L.theme_name gives the theme
  each L in GAME.levels do
    local prefix = PARAM.bex_map_prefix

    if L.description and prefix then --keep the prefix stuff from the bex incase something else relies on it
      local id

      if string.sub(L.name, 1, 1) == 'E' then
        -- Doom I : ExMy
        id = "map" .. L.name

      else
        local pos = 4
        if string.sub(L.name, pos, pos) == '0' then
          pos = pos + 1
        end

        -- Doom II / Final Doom : HUSTR_%d
        id = "BOM" .. string.sub(L.name, pos)
      end

      local nextmap = 'next = "' .. L.name ..'"\n'

      local sky1 = 'sky1 = "SKY1"' --default sky
      local enterpic = '"INTER1"' --default intermissionpic
      if L.theme_name == "hell" then
	local n = rand.irange(1,2)
	if n == 1 then
          sky1 = 'sky1 = "FIRESK00"'
        else
          sky1 = 'sky1 = "SKY3"'
	end
        enterpic = '"INTER3"'
      elseif L.theme_name == "wolf" then
        sky1 = 'sky1 = "SKY2WOLF"'
        enterpic = '"WOLF1"'
      elseif L.theme_name == "nukem" then
        sky1 = 'sky1 = "SKY2NI"'
        enterpic = '"DNTRIM12"'
      elseif L.theme_name == "urban" then
	local n = rand.irange(1,6)
	if n == 1 then
          sky1 = 'sky1 = "SKY2"'
	elseif n == 2 then
          sky1 = 'sky1 = "SKY2MID"'
	elseif n == 3 then
          sky1 = 'sky1 = "SKY2NO"'
	elseif n == 4 then
          sky1 = 'sky1 = "SKY2RED"'
	elseif n == 5 then
          sky1 = 'sky1 = "SKY2YELO"'
	elseif n == 6 then
          sky1 = 'sky1 = "SKY2MO"'
	end
        enterpic = '"INTER2"'
      elseif L.theme_name == "satanshankerchief" then
	local n = rand.irange(1,2) --animated CHEXSKY3 is broken for some reason
        sky1 = 'sky1 = "CHEXSKY' .. n .. '"'
        enterpic = '"CHEXINT"'
      end

      sky1 = sky1 .. '\n' --put in the newline here for convinience
      enterpic = enterpic .. '\n'

      local text = L.name .. ' "' .. L.description ..'"'; --the mapinfo key

      --say that this map comes after the last map
      if firstmap == 0 then
	if mapnum != 31 and mapnum != 32 and mapnum != 33 then --yes I could just do <31 but it might be possible to make Oblige do more than 32 maps in which case this will still work. Number is 1 higher because this is inserted at the start of the next map.
          table.insert(data, nextmap)
        else
	  if mapnum != 32 and mapnum != 33 then
            table.insert(data, 'next = "EndGame3"\n')
	  end
	end
        if mapnum >=11 and mapnum < 21 then--mapnum == 17 then --map 16 has the secret exit to wolf levels. Number is 1 higher because this is inserted at the start of the next map.
          table.insert(data, 'secretnext = "BOM31"\n')
        end
        if mapnum < 11 then --give map 8 a secret exit to tower of bable (included in the brutal and brutality pk3s)
	  if boss1 == "cyberlordmajor" then --if big CyberLord at babel then make that the second boss battle 
	    if OB_CONFIG.game == "brutality" then
              table.insert(data, 'secretnext = "E3M8"\n')
	    elseif OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E3M10"\n')
	    end
	  else
	    if OB_CONFIG.game == "brutality" then
              table.insert(data, 'secretnext = "E2M8"\n')
	    elseif OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E5M8"\n')
	    end
	  end
        end
        if mapnum >= 21 and mapnum < 30 then --give map 24 a secret exit to spider mastermind battle (included in the brutal and brutality pk3s)
	  if boss1 == "cyberlordmajor" then --if big CyberLord at babel then make this the first boss battle 
	    if OB_CONFIG.game == "brutality" then
              table.insert(data, 'secretnext = "E2M8"\n')
	    elseif OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E5M8"\n')
	    end
	  else
	    if OB_CONFIG.game == "brutality" then
              table.insert(data, 'secretnext = "E3M8"\n')
	    elseif OB_CONFIG.game == "brutaldoom" then
              table.insert(data, 'secretnext = "E3M10"\n')
	    end
	  end
        end
        if mapnum == 32 then --first secret level (wolf)
          table.insert(data, 'next = "BOM' .. tostring(secretexit2 + 1) .. '"\n')
          table.insert(data, 'secretnext = "BOM32"\n')
        end
        table.insert(data, '\n}\n') --close last map's definition
      else
        firstmap = 0
      end

      --open definition for map
      table.insert(data, string.format("%s %s\n{\n", "map", text))
      --enter map information
      table.insert(data, sky1)
      table.insert(data, 'EnterPic = ' .. enterpic)
      table.insert(data, 'ExitPic = ' .. enterpic)
      if mapnum==31 then
        table.insert(data, 'cluster = 65\n')  -- so you get the enterpic
      elseif mapnum==32 then
        table.insert(data, 'cluster = 66\n')  
      else
        table.insert(data, 'cluster = 10\n')
      end
      table.insert(data, 'music = "' .. dest[mapnum] .. '"\n')
      mapnum = mapnum + 1
    end
  end -- for L

  if mapnum == 33 then --second secret level (chex)
    table.insert(data, 'next = "BOM' .. tostring(secretexit2 + 1) .. '"\n')
  else
    table.insert(data, 'next = "EndGame3"\n') --last map ends the game unless it is a secret level (ie anything more or less than full game)
  end
  table.insert(data, "\n}\n"); --close final map definition
  
  local chexclusterdef = [[
        clusterdef 66
        flat SNOT1
        music D_READ
        entertext "You don't know how you got there
        in the first place but it doesn't matter,
        You have escaped castle Wolfenstein!

        You feel pretty rough though. All that
        running around in the snow seems to have
        given you one hell of a cold..."
      ]]

--make sure there are no 0s in stupid places
for i = 1, (#data) do --for every value in data
  data[i] = string.gsub(data[i], '"BOM010"','"BOM10"')
  data[i] = string.gsub(data[i], '"BOM011"','"BOM11"')
  data[i] = string.gsub(data[i], '"BOM012"','"BOM12"')
  data[i] = string.gsub(data[i], '"BOM013"','"BOM13"')
  data[i] = string.gsub(data[i], '"BOM014"','"BOM14"')
  data[i] = string.gsub(data[i], '"BOM015"','"BOM15"')
  data[i] = string.gsub(data[i], '"BOM016"','"BOM16"')
  data[i] = string.gsub(data[i], '"BOM017"','"BOM17"')
  data[i] = string.gsub(data[i], '"BOM018"','"BOM18"')
  data[i] = string.gsub(data[i], '"BOM019"','"BOM19"')
  data[i] = string.gsub(data[i], '"BOM020"','"BOM20"')
  data[i] = string.gsub(data[i], '"BOM021"','"BOM21"')
  data[i] = string.gsub(data[i], '"BOM022"','"BOM22"')
  data[i] = string.gsub(data[i], '"BOM023"','"BOM23"')
  data[i] = string.gsub(data[i], '"BOM024"','"BOM24"')
  data[i] = string.gsub(data[i], '"BOM025"','"BOM25"')
  data[i] = string.gsub(data[i], '"BOM026"','"BOM26"')
  data[i] = string.gsub(data[i], '"BOM027"','"BOM27"')
  data[i] = string.gsub(data[i], '"BOM028"','"BOM28"')
  data[i] = string.gsub(data[i], '"BOM029"','"BOM29"')
  data[i] = string.gsub(data[i], '"BOM030"','"BOM30"')
  data[i] = string.gsub(data[i], '"BOM031"','"BOM31"')
  data[i] = string.gsub(data[i], '"BOM032"','"BOM32"')
  data[i] = string.gsub(data[i], '"BOM1"','"BOM01"')
  data[i] = string.gsub(data[i], '"BOM2"','"BOM02"')
  data[i] = string.gsub(data[i], '"BOM3"','"BOM03"')
  data[i] = string.gsub(data[i], '"BOM4"','"BOM04"')
  data[i] = string.gsub(data[i], '"BOM5"','"BOM05"')
  data[i] = string.gsub(data[i], '"BOM6"','"BOM06"')
  data[i] = string.gsub(data[i], '"BOM7"','"BOM07"')
  data[i] = string.gsub(data[i], '"BOM8"','"BOM08"')
  data[i] = string.gsub(data[i], '"BOM9"','"BOM09"')
end

  gui.wad_add_text_lump("MAPINFO", data);
end

function STARTERPACK.setup()
  --STARTERPACK.bannersetup();
  --STARTERPACK.setsecretexits();
  BRUTALDOOM.PARAMETERS.starterpack = true;
end

function STARTERPACK.all_done()
  STARTERPACK.decorate();
  STARTERPACK.create_mapinfo();
  STARTERPACK.texturesetup();
end

--level setup

STARTERPACK.PREBUILT_LEVELS = --always remove the prebuilt so no conflict with mapinfo lump (map07 special etc)
{
  MAP07  = REMOVE_ME
  GOTCHA = REMOVE_ME
  GALLOW = REMOVE_ME

  MAP30 = --final boss
  {
    { prob=50, file="doom2_boss/icon1.wad", map="MAP30" }
    { prob=50, file="doom2_boss/icon2.wad", map="MAP30" }
    { prob=50, file="doom2_boss/icon3.wad", map="MAP01" }
    { prob=50, file="doom2_boss/icon3.wad", map="MAP02" }
    { prob=50, file="doom2_boss/icon3.wad", map="MAP03" }
  }
}

--table to string function for debugging starts
function table.val_to_str ( v )
  if "string" == type( v ) then
    v = string.gsub( v, "\n", "\\n" )
    if string.match( string.gsub(v,"[^'\"]",""), '^"+$' ) then
      return "'" .. v .. "'"
    end
    return '"' .. string.gsub(v,'"', '\\"' ) .. '"'
  else
    return "table" == type( v ) and table.tostring( v ) or
      tostring( v )
  end
end

function table.key_to_str ( k )
  if "string" == type( k ) and string.match( k, "^[_%a][_%a%d]*$" ) then
    return k
  else
    return "[" .. table.val_to_str( k ) .. "]"
  end
end

function table.tostring( tbl )
  local result, done = {}, {}
  for k, v in ipairs( tbl ) do
    table.insert( result, table.val_to_str( v ) )
    done[ k ] = true
  end
  for k, v in pairs( tbl ) do
    if not done[ k ] then
      table.insert( result,
        table.key_to_str( k ) .. "=" .. table.val_to_str( v ) )
    end
  end
  return "{" .. table.concat( result, "," ) .. "}"
end
--table to string function for debugging ends

OB_MODULES["brutal_starterpack"] =
{
  label = "Brutal Doom Starter Pack"

  game = { brutaldoom=1 }
  playmode = { sp=1, coop=1 }
  
  hooks =
  {
    setup = STARTERPACK.setup
    all_done = STARTERPACK.all_done
  }

  tables =
  {
    STARTERPACK
  }
}

STARTERPACK.CONTROL_CHOICES =
{
  "default", "DEFAULT",
  "none",    "None at all",
  "scarce",  "Scarce",
  "less",    "Less",
  "plenty",  "Plenty",
  "more",    "More",
  "heaps",   "Heaps",
  "insane",  "INSANE",
}

STARTERPACK.CONTROL_PROBS =
{
  none   = 0
  scarce = 2
  less   = 15
  plenty = 50
  more   = 120
  heaps  = 300
  insane = 2000
}

function STARTERPACK.control_setup()
  for name,opt in pairs(self.options) do
    local M = GAME.MONSTERS[name]

    if M and opt.value != "default" then
      local prob = STARTERPACK.CONTROL_PROBS[opt.value]

      M.replaces = nil
      M.prob = prob
      M.crazy_prob = prob

      if prob >  80 then M.density = 1.0 ; M.skip_prob = 30 end
      if prob > 180 then M.skip_prob = 0 end
    end
  end -- for opt
end


OB_MODULES["starterpack_wolfenstein_control"] =
{
  label = "Wolfenstein Monster Control"

  game = { brutaldoom=1, brutality=1 }

  --mod = "brutal_starterpack"

  hooks =
  {
    control_setup = STARTERPACK.control_setup
  }

  options =
  {
    ClassicSS =
    {
        label="Classic Wolfenstein SS",
        choices=STARTERPACK.CONTROL_CHOICES
        tooltip="The SS guard as he appears in vanilla Doom 2 and,you know, Wolfenstein."
    }
    BrutalSS =
    {
        label="Brutal Wolfenstein SS",
        choices=STARTERPACK.CONTROL_CHOICES
        tooltip="The SS guard as he appears in Brutal Doom."
    }
    GermanDog =
    {
        label="Dog",
        choices=STARTERPACK.CONTROL_CHOICES
        tooltip="A dog. Obviously. Requires the starterpack."
    }
  }
}

OB_MODULES["starterpack_monster_control"] =
{
  label = "Starterpack Monster Control"

  game = { brutaldoom=1, brutality=1 }

  mod = "brutal_starterpack"

  hooks =
  {
    control_setup = STARTERPACK.control_setup
  }

  options =
  {
    HeavyMachinegun =
    {
        label="Heavy Machinegunner",
        choices=STARTERPACK.CONTROL_CHOICES
        tooltip="A mounted machinegun. Very powerful and can be placed very unfairly."
    }
  }
}


--------------------------------------------
        --More functions--
--------------------------------------------

function merge(t1, t2)
    for k, v in pairs(t2) do
        if (type(v) == "table") and (type(t1[k] or false) == "table") then
            merge(t1[k], t2[k])
        else
            t1[k] = v
        end
    end
    return t1
end

function combine(t1, t2)
    for k,v in pairs(t2) do table.insert(t1, v) end
end
