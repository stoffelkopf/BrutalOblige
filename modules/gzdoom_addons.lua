----------------------------------------------------------------
--  MODULE: ZDoom Special Addons
----------------------------------------------------------------
--
--  Copyright (C) 2019 MsrSgtShooterPerson
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
-------------------------------------------------------------------

gzds = {}

gzds.YES_NO =
{
  "yes", _("Yes"),
  "no",  _("No"),
}

gzds.FOG_GEN_CHOICES =
{
  "per_sky_gen",    _("Per Sky Generator"),
  "random", _("Random"),
  "no",     _("No"),
}

gzds.FOG_ENV_CHOICES =
{
  "all",     _("All"),
  "outdoor", _("Outdoors Only"),
}

gzds.FOG_DENSITY_CHOICES =
{
  "subtle",  _("Subtle"),
  "misty",  _("Misty"),
  "smoky",  _("Smoky"),
  "foggy",  _("Foggy"),
  "dense",  _("Dense"),
  "mixed",  _("Mix It Up"),
}

gzds.DYNAMIC_LIGHT_DECORATE =
[[// ObAddon dynamic light actors
actor ObLightWhite 14999
{
  Scale 0 //Should really use a nice corona sprite but whatever
  Height 16

  +NOGRAVITY
  +SPAWNCEILING

  States{
    Spawn:
      CAND A -1
  }
}
actor ObLightRed : ObLightWhite 14998 {}
actor ObLightOrange : ObLightWhite 14997 {}
actor ObLightYellow : ObLightWhite 14996 {}
actor ObLightBlue : ObLightWhite 14995 {}
actor ObLightGreen : ObLightWhite 14994 {}
actor ObLightBeige : ObLightWhite 14993 {}
actor ObLightPurple : ObLightWhite 14992 {}
]]

gzds.DYNAMIC_LIGHT_EDNUMS =
[[
DoomEdNums =
{
}
]]

gzds.DYNAMIC_LIGHT_GLDEFS =
[[
PointLight WhiteLight
{
  color 0.85 0.9 1
  size 128
  offset 0 -48 0
}

PointLight RedLight
{
  color 1 0 0
  size 128
  offset 0 -48 0
}

PointLight YellowLight
{
  color 1 0.8 0
  size 128
  offset 0 -48 0
}

PointLight OrangeLight
{
  color 1 0.5 0
  size 128
  offset 0 -48 0
}

PointLight BlueLight
{
  color 0.1 0.1 1
  size 128
  offset 0 -48 0
}

PointLight GreenLight
{
  color 0 0.8 0
  size 128
  offset 0 -48 0
}

PointLight BeigeLight
{
  color 1 0.8 0.5
  size 128
  offset 0 -48 0
}

PointLight PurpleLight
{
  color 0.7 0 0.95
  size 128
  offset 0 -48 0
}

object ObLightWhite
{
  frame CAND { light WhiteLight }
}

object ObLightRed
{
  frame CAND { light RedLight }
}

object obLightOrange
{
  frame CAND { light OrangeLight }
}

object obLightYellow
{
  frame CAND { light YellowLight }
}

object obLightBlue
{
  frame CAND { light BlueLight }
}

object obLightGreen
{
  frame CAND { light GreenLight }
}

object ObLightBeige
{
  frame CAND { light BeigeLight }
}

object ObLightPurple
{
  frame CAND { light PurpleLight }
}
]]


function gzds.setup(self)
  gui.printf("\n--== ZDoom Special Addons module active ==--\n\n")

  for name,opt in pairs(self.options) do
    local value = self.options[name].value
    PARAM[name] = value
  end
end

OB_MODULES["gzds"] =
{
  label = _("GZDoom Specials Addons")
  game = {brutaldoom=1}
  side = "left"
  priority = 100
  engine = { zdoom=1, gzdoom=1, skulltag=1 }

  hooks =
  {
    setup = gzds.setup

  }

  tooltip = "This module adds new ZDoom-exclusive features such as fog. More ZDoom-specific features will be included soon."

  options =
  {
    fog_generator = {
      label = _("Fog Generator"),
      priority = 11
      choices = gzds.FOG_GEN_CHOICES
      default = "no"
      tooltip = "Generates fog colors based on the Sky Generator or generate completely randomly."
    }
    fog_env = {
      label = _("Fog Environment"),
      priority = 10
      choices = gzds.FOG_ENV_CHOICES
      default = "all"
      tooltip = "Limits fog to outdoors (sectors with exposed sky ceilings) or allows for all."
    }

    fog_intensity = {
      label = _("Fog Intensity"),
      priority = 9
      choices = gzds.FOG_DENSITY_CHOICES
      default = "subtle"
      tooltip = "Determines thickness and intensity of fog, if the Fog Generator is enabled. Subtle or Misty is recommended."
    }

	fog_affects_sky = {
      label = _("Sky Fog"),
      priority = 8
      choices = gzds.YES_NO
      default = "yes"
      tooltip = "Tints the sky texture with the fog color, intensity is based on the Fog Intensity selection."
      gap = 1
    }

	dynamic_lights = {
      label = _("Dynamic Lights")
      priority = 7
      choices = gzds.YES_NO
      default = "yes"
      tooltip = "Generates dynamic point lights on ceiling light prefabs."
    }
  }
}
