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
    glowing_flats = {
      label = _("Glowing Flats")
      priority = 6
      choices = gzds.YES_NO
      default = "yes"
      tooltip = "Adds Doom-64 style lighting/glowing flats via GLDEFS lump. " ..
                "Visible on Zandronum ports as well."
    }
	
  }
}
