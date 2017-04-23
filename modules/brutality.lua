gui.import("functions/filereading")

BRUTALITY.MONSTERS =
{
	--remove the no longer needed brutal monsters
	Belphegor = REMOVE_ME
	DarkImp = REMOVE_ME
	Juggernaut = REMOVE_ME
	
	--remove individual brutal monsters now handled by spawners
	D4caco = REMOVE_ME
	ClassicSS = REMOVE_ME

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
		'actor classicwolf : WolfensteinSS 313\n'
		'{\n'
                '//$Category "Monsters/Wolfenstein"\n'
                '//$EditorSprite "SSWVA1"\n'
                'Tag "Vanilla Wolfenstein 3D SS"\n'
		'}\n'
	}
    gui.wad_add_text_lump("BRUMONS", data);
	gui.wad_insert_file("brutaloblige/zscript/zscript","ZSCRIPT");
end

function BRUTALITY.gameinfo()

  local data =
	{
	  '//ZDoom GAMEINFO lump for Brutal Oblige\n'
	}

  table.insert(data,'IWAD="' .. BRUTALDOOM.PARAMETERS.iwad .. '"\n')

  table.insert(data,'LOAD="' .. BRUTALDOOM.PARAMETERS.brutalityversion .. '","bfriend1.pk3"')
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

function BRUTALITY.setup()

local data =
	{
		'//Brutality additions\n'
		'#include "BRUMONS" \n'
		'#include "PBMBSPN" \n'
		'#include "PBENSPN" \n'
		'#include "PBIMSPN" \n'
		'#include "PBBDSPN" \n'
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
		'actor NilD4UpgradeBotOblige : ChaingunWeaponSpawner 315\n'
		'{\n'
		'}\n'
		'\n'
		'actor NilD4GaussCannonOblige : LauncherWeaponSpawner 317\n'
		'{\n'
		'}\n'
		'\n'
		'actor NilBuzzsawOblige : ChaingunWeaponSpawner 321\n'
		'{\n'
		'}\n'
		'\n'
		'actor NilPosterOblige : PistolAmmo 323\n'
		'{\n'
		'}\n'
		'\n',
		chexkeys
	}
      gui.wad_add_text_lump("DECORATE", data);
	  gui.wad_insert_file("brutaloblige/decorates/brutality/rawmeatball.dec","PBMBSPN");
	  gui.wad_insert_file("brutaloblige/decorates/brutality/evilnazispawner.dec","PBENSPN");
	  gui.wad_insert_file("brutaloblige/decorates/brutality/impspawner.dec","PBIMSPN");
	  gui.wad_insert_file("brutaloblige/decorates/brutality/bulldemonspawner.dec","PBBDSPN");
end