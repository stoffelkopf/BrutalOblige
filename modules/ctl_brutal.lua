gui.import("functions/tablecontains")
gui.import("functions/tablemerge")
gui.import("functions/filereading")

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

CTL_BRUTAL.MON_PROBS =
{
  none   = 0
  scarce = 2
  less   = 15
  plenty = 50
  more   = 120
  heaps  = 300
  insane = 2000
}

CTL_BRUTAL.DENSITIES =
{
  none   = 0.1
  scarce = 0.2
  less   = 0.4
  plenty = 0.7
  more   = 1.2
  heaps  = 3.3
  insane = 9.9
}

function CTL_BRUTAL.control_setup()
  for name,opt in pairs(OB_MODULES["brutal_mon_control"].options) do
    local M = GAME.MONSTERS[name]

    if M and opt.value != "default" then
      M.prob    = CTL_DOOM.MON_PROBS[opt.value]
      M.density = CTL_DOOM.DENSITIES[opt.value]

      -- allow Spectres to be controlled individually
      M.replaces = nil

      -- loosen some of the normal restrictions
      M.skip_prob = nil
      M.crazy_prob = nil

      if M.prob > 40 then
        M.level = 1
        M.weap_min_damage = nil
      end

      if M.prob > 200 then
        M.boss_type = nil
      end
    end
  end -- for opt
  --gui.printf('Monster table after control setup:\n' .. table.tostring(GAME.MONSTERS) .. '\n')
end


--[[OB_MODULES["brutal_mon_control"] =
{
  label = "Brutal Doom Monster Control"

  game = { brutaldoom=1, brutality=0 }

  hooks =
  {
    setup = CTL_BRUTAL.control_setup
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
    Zyberdemon =
    {
        label="Zyberdemon",
        choices=CTL_BRUTAL.CONTROL_CHOICES
        tooltip="A Cyberdemon with the rocket launcher replaced with a chaingun"
    }
    HeadlessZombie =
    {
        label="Headless Zombie",
        choices=CTL_BRUTAL.CONTROL_CHOICES
        tooltip="A Zombieman variant filled with such sheer force of malice that even decapitation wont stop it."
    }
    Labguy =
    {
        label="Labguy",
        choices=CTL_BRUTAL.CONTROL_CHOICES
        tooltip="A former human scientist armed with an axe."
    }
    AncientArachnotron =
    {
        label="Ancient Arachnotron",
        choices=CTL_BRUTAL.CONTROL_CHOICES
        tooltip="An Arachnotron running on ancient demonic tech. Bigger and tougher than their more modernised cousins."
    }
    Volcabus =
    {
        label="Volcabus",
        choices=CTL_BRUTAL.CONTROL_CHOICES
        tooltip="An even fatter Mancubus with even more massive cannons."
    }
    Mummy =
    {
        label="Mummy",
        choices=CTL_BRUTAL.CONTROL_CHOICES
        tooltip="Preserved by ancient science, reanimated by the forces of hell. Unarmed but hits like a truck."
    }
  }
}]]--

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

