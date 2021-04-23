------------------------------------------------------------------------
--  PANEL: Architecture
------------------------------------------------------------------------
--
--  Copyright (C) 2016-2017 Andrew Apted
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
------------------------------------------------------------------------

UI_ARCH = { }

UI_ARCH.SIZES =
{
  "epi",     _("Episodic"),
  "prog",    _("Progressive"),
  "mixed",   _("Mix It Up"),

  -- this is a separator (not a usable choice)
  "_",       "_",

  "micro",   _("Micro"),
  "tiny",    _("Tiny"),  
  "small",   _("Small"),
  "regular", _("Regular"),
  "large",   _("Large"),
  "colossal",_("Colossal"),  
  "extreme", _("Extreme"),
}


UI_ARCH.PROC_GOTCHA_CHOICES =
{
  "none",  _("NONE"),
  "final", _("Final Map Only"),
  "epi",   _("Episodic (MAP11, MAP20, MAP30)"),
  "2epi",   _("2 per ep (5,11,16,20,25,30)"),
  "3epi",   _("3 per ep (3,7,11,14,17,20,23,27,30)"),
  "4epi",   _("4 per ep (3,6,9,11,14,16,18,20,23,26,28,30)"),
  "_",     _("_"),
  "5p",    _("5% Chance, Any Map After MAP04"),
  "10p",   _("10% Chance, Any Map After MAP04"),
  "all",   _("Everything"),
}
	

OB_MODULES["ui_arch"] =
{
  label = _("Architecture")

  side = "left"
  priority = 104

  options =
  {
    { name="size",         label=_("Level Size"), choices=UI_ARCH.SIZES,  default="epi",  gap=1 }
     
    { name="outdoors",     label=_("Outdoors"),   choices=STYLE_CHOICES }
    { name="caves",        label=_("Caves"),      choices=STYLE_CHOICES }
    { name="liquids",      label=_("Liquids"),    choices=STYLE_CHOICES,  gap=1 }

    { name="hallways",     label=_("Hallways"),   choices=STYLE_CHOICES }
    { name="teleporters",  label=_("Teleports"),  choices=STYLE_CHOICES }
    { name="steepness",    label=_("Steepness"),  choices=STYLE_CHOICES, gap=1 }
    {
      name="procedural_gotchas"
      label=_("Procedural Gotcha")
      choices=UI_ARCH.PROC_GOTCHA_CHOICES
      default="none"
      tooltip = "Procedural Gotchas are two room maps, where the second is an immediate " ..
      "but immensely-sized exit room with gratitiously intensified monster strength. " ..
      "Essentially an arena - prepare for a tough, tough fight!\n\nNotes:\n\n" ..
      "5% of levels may create at least 1 or 2 gotcha maps in a standard full game."
    }
  }
}