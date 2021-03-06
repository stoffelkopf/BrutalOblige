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
        upgrades = "bfg"
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
    AssaultShotgun =
    {
        id = 340
        level = 2
        pref = 30
        add_prob = 35
        attack = "hitscan"
        rate = 5.0
        accuracy = 70
        damage = 70
        ammo = "shell"
        per = 1
        give = { {ammo="shell",count=10} }
    }
    Unmaker =
    {
        id = 341
        level = 9 --1 higher than the BFG
        pref = 12
        add_prob = 20
        hide_prob = 35
        attack = "missile"
        rate = 8.5
        accuracy = 80
        damage = 47 --actually random(45,50)
        ammo = "SoulAmmo"
        per = 1
        give = { {ammo="SoulAmmo",count=200} }
    }
}

BRUTALDOOM.AMMOS =
{
	grenade = { start_bonus = 1  }
    clip1 = { start_bonus = 15 }
    SoulAmmo = { start_bonus = 0 }
}

BRUTALDOOM.WEAPON_CHOICES =
{
  "default", _("DEFAULT"),
  "none",    _("None at all"),
  "scarce",  _("Scarce"),
  "less",    _("Less"),
  "plenty",  _("Plenty"),
  "more",    _("More"),
  "heaps",   _("Heaps"),
  "loveit",  _("I LOVE IT"),
}

BRUTALDOOM.WEAPON_PROBS =
{
  none   = 0
  scarce = 2
  less   = 15
  plenty = 50
  more   = 120
  heaps  = 300
  loveit = 1000
}

BRUTALDOOM.WEAPON_PREFS =
{
  none   = 1
  scarce = 10
  less   = 25
  plenty = 40
  more   = 70
  heaps  = 100
  loveit = 170
}

BRUTALDOOM.WEAPON_LIST_BRUTAL=
{
    GrenadeLauncher =
    {
        label="Grenade Launcher",
        choices=BRUTALDOOM.WEAPON_CHOICES
    }
    railgun =
    {
        label="Railgun",
        choices=BRUTALDOOM.WEAPON_CHOICES
    }
    bfg10k =
    {
        label="B.F.G 10000",
        choices=BRUTALDOOM.WEAPON_CHOICES
    }
    Smg =
    {
        label="SMG",
        choices=BRUTALDOOM.WEAPON_CHOICES
    }
    AssaultShotgun =
    {
        label="Assault Shotgun",
        choices=BRUTALDOOM.WEAPON_CHOICES
    }
    Unmaker =
    {
        label="The Unmaker",
        choices=BRUTALDOOM.WEAPON_CHOICES
    }
}



function BRUTALDOOM.weapon_setup(self)
  for name,opt in pairs(self.options) do
    local W = GAME.WEAPONS[name]

    if W and opt.value != "default" then
      W.add_prob = BRUTALDOOM.WEAPON_PROBS[opt.value]
      W.pref     = BRUTALDOOM.WEAPON_PREFS[opt.value]

      -- loosen some of the normal restrictions
      W.level = 1
    end
  end -- for opt
end

OB_MODULES["brutal_weapon_control"] =
{
  label = _("Brutal Doom Weapon Control")

  game = "brutaldoom"

  hooks =
  {
    setup = BRUTALDOOM.weapon_setup
  }

  options = BRUTALDOOM.WEAPON_LIST_BRUTAL
}
