BRUTALDOOM.WEAPONS =
{
    --Some regular Doom weapons are fully replaced by their brutal counterparts for better modelling--
    pistol=REMOVE_ME
    chain=REMOVE_ME
    
    --Some weapons without a spawn id are included. This is so we can add them as dropped items for the monsters.--
    --eg the Mp40 is never placed in maps but is dropped by brutal_ss. It needs an entry here so Oblige can model this.--
	HandGrenade =
	{
	    id=299
	    pref=1
	    add_prob=0
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
	    give={ {ammo="cell",count=50} }
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
    bdpistol =
    {
        id = 320
        level = DOOM.WEAPONS.pistol.level
        add_prob = DOOM.WEAPONS.pistol.add_prob
        pref = DOOM.WEAPONS.pistol.pref
        attack = "hitscan"
        rate = DOOM.WEAPONS.pistol.rate
        damage = DOOM.WEAPONS.pistol.damage
        ammo = "clip1"
        give = { {ammo="clip1",count=10} }
        per = 1
    }
    Smg =
    {
        id = 339
        level = 1
        pref = 70
        upgrades = "bdpistol"
        add_prob = 45
        attack = "hitscan"
        rate = 6.5
        accuracy = 90
        damage = 8
        ammo = "clip1"
        per = 1
        give = { {ammo="clip1",count=40} }
    }
    AssaultRifle =
    {
        level = 1.5
        pref = 70
        attack = "hitscan"
        rate = 5.0
        accuracy = 85
        damage = 10
        ammo = "bullet"
        per = 1
        give = { {ammo="bullet",count=10} }
        bonus_ammo = 50
    }
    Minigun =
    {
        id = 2002
        level = 1.5
        pref = 70
        upgrades = "AssaultRifle"
        add_prob = 40
        attack = "hitscan"
        rate = 8.5
        accuracy = 80
        damage = 10
        ammo = "bullet"
        per = 1
        give = { {ammo="bullet",count=20} }
        bonus_ammo = 50
    }
    Mp40 =
    {
        level = 1
        pref = 70
        upgrades = "bdpistol"
        attack = "hitscan"
        rate = 5.5
        accuracy = 90
        damage = 8
        ammo = "clip1"
        per = 1
        give = { {ammo="clip1",count=20} }
    }
    Axe =
    {
        upgrades = "fist"
        attack = "melee"
        rate = 1.5
        damage = 52 --actually random(50,55)
    }
}

BRUTALDOOM.AMMOS =
{
	grenade = { start_bonus = 1  }
    clip1 = { start_bonus = 15 }
}
