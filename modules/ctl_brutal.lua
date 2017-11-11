
CTL_BRUTAL = { }

CTL_BRUTAL.CONTROL_CHOICES =
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

CTL_BRUTAL.CONTROL_PROBS =
{
  none   = 0
  scarce = 2
  less   = 15
  plenty = 50
  more   = 120
  heaps  = 300
  insane = 2000
}


function CTL_BRUTAL.control_setup()
  for name,opt in pairs(self.options) do
    local M = GAME.MONSTERS[name]

    if M and opt.value != "default" then
      local prob = CTL_BRUTAL.CONTROL_PROBS[opt.value]

      M.replaces = nil
      M.prob = prob
      M.crazy_prob = prob

      if prob >  80 then M.density = 1.0 ; M.skip_prob = 30 end
      if prob > 180 then M.skip_prob = 0 end
    end
  end -- for opt
end


OB_MODULES["brutal_mon_control"] =
{
  label = "Brutal Doom Monster Control"

  game = { brutaldoom=1, brutality=0 }

  hooks =
  {
    control_setup = CTL_BRUTAL.control_setup
  }

  options =
  {
    EasyMarine =
    {
        label="Evil Grunt",
        choices=CTL_BRUTAL.CONTROL_CHOICES
        tooltip="Immitation is the sincerest form of flattery."
    }
    EvilMarine =
    {
        label="Evil Marine",
        choices=CTL_BRUTAL.CONTROL_CHOICES
        tooltip="Plasma guns are the sincerest form of murder."
    }
    Belphegor =
    {
        label="Belphegor",
        choices=CTL_BRUTAL.CONTROL_CHOICES
        tooltip="Imagine fighting a Baron of Hell on steroids. You can use that as your happy place when you have to go up against this guy."
    }
    Juggernaut =
    {
        label="Juggernaut",
        choices=CTL_BRUTAL.CONTROL_CHOICES
        tooltip="Do you know how much damage the Juggernaut would take if it just rolled straight over you? I'll give you a clue, it's none at all."
    }
    DarkImp =
    {
        label="Dark Imp",
        choices=CTL_BRUTAL.CONTROL_CHOICES
        tooltip="Like an Imp but with a more damaging projectile."
    }
    Epic2Alien =
    {
        label="Epic 2 Alien",
        choices=CTL_BRUTAL.CONTROL_CHOICES
        tooltip="There's this megawad called epic2. It has an alien in it."
    }
    D4caco =
    {
        label="Doom 4 Cacodemon",
        choices=CTL_BRUTAL.CONTROL_CHOICES
        tooltip="Time has not been kind to the poor Cacodemon's looks"
    }
    Zyberdemon =
    {
        label="Zyberdemon",
        choices=CTL_BRUTAL.CONTROL_CHOICES
        tooltip="A Cyberdemon with the rocket launcher replaced with a chaingun"
    }
  }
}

OB_MODULES["brutality_mon_control"] =
{
  label = "Project Brutality Monster Control"

  game = { brutaldoom=0, brutality=1 }

  hooks =
  {
    control_setup = CTL_BRUTAL.control_setup
  }

  options =
  {
    Trite   = { label="Trite",     choices=CTL_BRUTAL.CONTROL_CHOICES }
    Shadow   = { label="Shadow",     choices=CTL_BRUTAL.CONTROL_CHOICES }
  }
}

-----------Weapons-----------------------
CTL_BRUTAL.WEAPON_CHOICES =
{
  "default", "DEFAULT",
  "none",    "None at all",
  "scarce",  "Scarce",
  "less",    "Less",
  "plenty",  "Plenty",
  "more",    "More",
  "heaps",   "Heaps",
  "loveit",  "I LOVE IT",
}

CTL_BRUTAL.WEAPON_PROBS =
{
  none   = 0
  scarce = 2
  less   = 15
  plenty = 50
  more   = 120
  heaps  = 300
  loveit = 1000
}

CTL_BRUTAL.WEAPON_PREFS =
{
  none   = 1
  scarce = 10
  less   = 25
  plenty = 40
  more   = 70
  heaps  = 100
  loveit = 170
}


function CTL_BRUTAL.weapon_setup(self)
  for name,opt in pairs(self.options) do
    local W = GAME.WEAPONS[name]

    if W and opt.value != "default" then
      W.add_prob = CTL_BRUTAL.WEAPON_PROBS[opt.value]
      W.pref     = CTL_BRUTAL.WEAPON_PREFS[opt.value]

      -- loosen some of the normal restrictions
      W.level = 1
      W.start_prob = nil
    end
  end -- for opt
end


OB_MODULES["brutal_weapon_control"] =
{
  label = "Brutal Doom Weapon Control"

  game = { brutality=0, brutaldoom=1 }
  playmode = { sp=1, coop=1 }

  hooks =
  {
    weapon_setup = CTL_BRUTAL.weapon_setup
  }

  options =
  {
    GrenadeLauncher  =
    {
        label="Grenade Launcher",
        choices=CTL_BRUTAL.WEAPON_CHOICES,
        tooltip="The grenade launcher from skulltag."
    }
    railgun =
    {
        label="Railgun",
        choices=CTL_BRUTAL.WEAPON_CHOICES,
        tooltip="The railgun from skulltag. Great for sitting back and taking out enemies from range. You big wuss."
    }
    bfg10k =
    {
        label="B.F.G 10000",
        choices=CTL_BRUTAL.WEAPON_CHOICES
        tooltip="The biggest fucking gun around. Weirdly B.F.Gs 9001-9999 never made it into skulltag."
    }
  }
}

