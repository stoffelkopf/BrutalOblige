---------------------------------------------------------------
--  MODULE: Doom Control
----------------------------------------------------------------
--
--  Copyright (C) 2009-2010 Andrew Apted
--
--  This program is free software; you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation; either version 2
--  of the License, or (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
----------------------------------------------------------------

CTL_DOOM = {}

CTL_DOOM.MON_CHOICES =
{
  "default", _("DEFAULT"),
  "none",    _("None at all"),
  "scarce",  _("Scarce"),
  "less",    _("Less"),
  "plenty",  _("Plenty"),
  "more",    _("More"),
  "heaps",   _("Heaps"),
  "insane",  _("INSANE"),
}

CTL_DOOM.MON_PROBS =
{
  none   = 0
  scarce = 2
  less   = 15
  plenty = 50
  more   = 120
  heaps  = 300
  insane = 2000
}

CTL_DOOM.DENSITIES =
{
  none   = 0.1
  scarce = 0.2
  less   = 0.4
  plenty = 0.7
  more   = 1.2
  heaps  = 3.3
  insane = 9.9
}

CTL_DOOM.MON_LIST =
{
    zombie   = { label=_("Zombieman"),      choices=CTL_DOOM.MON_CHOICES }
    shooter  = { label=_("Shotgun Guy"),    choices=CTL_DOOM.MON_CHOICES }
    gunner   = { label=_("Chaingunner"),    choices=CTL_DOOM.MON_CHOICES }
    ss_nazi  = { label=_("SS Nazi"),        choices=CTL_DOOM.MON_CHOICES }
    imp      = { label=_("Imp"),            choices=CTL_DOOM.MON_CHOICES }

    skull    = { label=_("Lost Soul"),      choices=CTL_DOOM.MON_CHOICES }
    demon    = { label=_("Demon"),          choices=CTL_DOOM.MON_CHOICES }
    spectre  = { label=_("Spectre"),        choices=CTL_DOOM.MON_CHOICES }
    pain     = { label=_("Pain Elemental"), choices=CTL_DOOM.MON_CHOICES }
    caco     = { label=_("Cacodemon"),      choices=CTL_DOOM.MON_CHOICES }
    knight   = { label=_("Hell Knight"),    choices=CTL_DOOM.MON_CHOICES }

    revenant = { label=_("Revenant"),       choices=CTL_DOOM.MON_CHOICES }
    mancubus = { label=_("Mancubus"),       choices=CTL_DOOM.MON_CHOICES }
    arach    = { label=_("Arachnotron"),    choices=CTL_DOOM.MON_CHOICES }
    vile     = { label=_("Arch-vile"),      choices=CTL_DOOM.MON_CHOICES }
    baron    = { label=_("Baron of Hell"),  choices=CTL_DOOM.MON_CHOICES }

    Cyberdemon  = { label=_("Cyberdemon"),   choices=CTL_DOOM.MON_CHOICES }
    Spiderdemon = { label=_("Spiderdemon"),  choices=CTL_DOOM.MON_CHOICES }
}

CTL_DOOM.MON_LIST_BRUTAL=
{
    --Brutal monsters
    EasyMarine =
    {
        label="Evil Grunt",
        choices=CTL_DOOM.MON_CHOICES
        tooltip="Immitation is the sincerest form of flattery."
    }
    EvilMarine =
    {
        label="Evil Marine",
        choices=CTL_DOOM.MON_CHOICES
        tooltip="Plasma guns are the sincerest form of murder."
    }
    Belphegor =
    {
        label="Belphegor",
        choices=CTL_DOOM.MON_CHOICES
        tooltip="Imagine fighting a Baron of Hell on steroids. You can use that as your happy place when you have to go up against this guy."
    }
    Juggernaut =
    {
        label="Juggernaut",
        choices=CTL_DOOM.MON_CHOICES
        tooltip="Do you know how much damage the Juggernaut would take if it just rolled straight over you? I'll give you a clue, it's none at all."
    }
    DarkImp =
    {
        label="Dark Imp",
        choices=CTL_DOOM.MON_CHOICES
        tooltip="Like an Imp but with a more damaging projectile."
    }
    Epic2Alien =
    {
        label="Epic 2 Alien",
        choices=CTL_DOOM.MON_CHOICES
        tooltip="There's this megawad called epic2. It has an alien in it."
    }
    Zyberdemon =
    {
        label="Zyberdemon",
        choices=CTL_DOOM.MON_CHOICES
        tooltip="A Cyberdemon with the rocket launcher replaced with a chaingun"
    }
    HeadlessZombie =
    {
        label="Headless Zombie",
        choices=CTL_DOOM.MON_CHOICES
        tooltip="A Zombieman variant filled with such sheer force of malice that even decapitation wont stop it."
    }
    Labguy =
    {
        label="Labguy",
        choices=CTL_DOOM.MON_CHOICES
        tooltip="A former human scientist armed with an axe."
    }
    AncientArachnotron =
    {
        label="Ancient Arachnotron",
        choices=CTL_DOOM.MON_CHOICES
        tooltip="An Arachnotron running on ancient demonic tech. Bigger and tougher than their more modernised cousins."
    }
    Volcabus =
    {
        label="Volcabus",
        choices=CTL_DOOM.MON_CHOICES
        tooltip="An even fatter Mancubus with even more massive cannons."
    }
    Mummy =
    {
        label="Mummy",
        choices=CTL_DOOM.MON_CHOICES
        tooltip="Preserved by ancient science, reanimated by the forces of hell. Unarmed but hits like a truck."
    }
}


function CTL_DOOM.monster_setup(self)  
  for name,opt in pairs(self.options) do
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
end


OB_MODULES["doom_mon_control"] =
{
  label = _("Doom Monster Control")

  game = "doomish"

  hooks =
  {
    setup = CTL_DOOM.monster_setup
  }

  options = CTL_DOOM.MON_LIST
}

OB_MODULES["brutal_mon_control"] =
{
  label = _("Brutal Doom Monster Control")

  game = "brutaldoom"

  hooks =
  {
    setup = CTL_DOOM.monster_setup
  }

  options = CTL_DOOM.MON_LIST_BRUTAL
}

OB_MODULES["brutality_mon_control"] =
{
  label = "Project Brutality Monster Control"

  game = { brutaldoom=0, brutality=1 }

  hooks =
  {
    setup = CTL_DOOM.monster_setup
  }

  options =
  {
    Trite   = { label="Trite",     choices=CTL_DOOM.MON_CHOICES }
    Shadow   = { label="Shadow",     choices=CTL_DOOM.MON_CHOICES }
  }
}


----------------------------------------------------------------


CTL_DOOM.WEAPON_CHOICES =
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

CTL_DOOM.WEAPON_PROBS =
{
  none   = 0
  scarce = 2
  less   = 15
  plenty = 50
  more   = 120
  heaps  = 300
  loveit = 1000
}

CTL_DOOM.WEAPON_PREFS =
{
  none   = 1
  scarce = 10
  less   = 25
  plenty = 40
  more   = 70
  heaps  = 100
  loveit = 170
}

CTL_DOOM.WEAPON_LIST =
{
    shotty   = { label=_("Shotgun"),         choices=CTL_DOOM.WEAPON_CHOICES }
    super    = { label=_("Super Shotgun"),   choices=CTL_DOOM.WEAPON_CHOICES }
    chain    = { label=_("Chaingun"),        choices=CTL_DOOM.WEAPON_CHOICES }
    launch   = { label=_("Rocket Launcher"), choices=CTL_DOOM.WEAPON_CHOICES }
    plasma   = { label=_("Plasma Rifle"),    choices=CTL_DOOM.WEAPON_CHOICES }
    bfg      = { label=_("BFG"),             choices=CTL_DOOM.WEAPON_CHOICES }
}

CTL_DOOM.WEAPON_LIST_BRUTAL=
{
    GrenadeLauncher =
    {
        label="Grenade Launcher",
        choices=CTL_DOOM.WEAPON_CHOICES
    }
    railgun =
    {
        label="Railgun",
        choices=CTL_DOOM.WEAPON_CHOICES
    }
    bfg10k =
    {
        label="B.F.G 10000",
        choices=CTL_DOOM.WEAPON_CHOICES
    }
    Smg =
    {
        label="SMG",
        choices=CTL_DOOM.WEAPON_CHOICES
    }
    AssaultShotgun =
    {
        label="Assault Shotgun",
        choices=CTL_DOOM.WEAPON_CHOICES
    }
    Unmaker =
    {
        label="The Unmaker",
        choices=CTL_DOOM.WEAPON_CHOICES
    }
}



function CTL_DOOM.weapon_setup(self)
  for name,opt in pairs(self.options) do
    local W = GAME.WEAPONS[name]

    if W and opt.value != "default" then
      W.add_prob = CTL_DOOM.WEAPON_PROBS[opt.value]
      W.pref     = CTL_DOOM.WEAPON_PREFS[opt.value]

      -- loosen some of the normal restrictions
      W.level = 1
    end
  end -- for opt
end


OB_MODULES["doom_weapon_control"] =
{
  label = _("Doom Weapon Control")

  game = "doomish"

  hooks =
  {
    setup = CTL_DOOM.weapon_setup
  }

  options = CTL_DOOM.WEAPON_LIST
}

OB_MODULES["brutal_weapon_control"] =
{
  label = _("Brutal Doom Weapon Control")

  game = "brutaldoom"

  hooks =
  {
    setup = CTL_DOOM.weapon_setup
  }

  options = CTL_DOOM.WEAPON_LIST_BRUTAL
}

