------------------------------------------------------------------------
--  MODULE: Brutal Oblige Tweaks Control
------------------------------------------------------------------------
--
--  Copyright (C) 2021 Stoffelkopf
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

BRUTAL_TWEAKS = { }

BRUTAL_TWEAKS.MUSIC_PRESETS =
{
    "iwad", "Doom Complete"
    "doom1",    "Doom 1 only"
    "doom2",    "Doom 2 only"
    "doom2",    "Doom 2 only"	
	"favorit",    "Best Of Doom"	    
	"ZD64MUSIC", "Doom 64"
}

BRUTAL_TWEAKS.YES_NO =
{
	"yes", _("Yes"),
	"no",  _("No"),
}

BRUTAL_TWEAKS.IWAD =
{
	"doom2",	_("Doom 2"),
	"complete",  	_("Doom Complete"),
}

OB_MODULES["ui_brutal_tweaks"] =
{
  label = _("Brutal Oblige Tweaks")
  
  side = "left"

  game = { brutaldoom=1}
  playmode = { sp=1, coop=1 }
  
  priority = 103
  
  options =
  {
  
		{
			name="prebuilt_levels"
			label=_("Prebuilt Levels")
			choices=BRUTAL_TWEAKS.YES_NO
			tooltip = "Enable or disable prebuilt maps. When disabled, they are replaced with generated maps instead."
			default="no"
		}
		
		{
			name="iwad_usage"
			label=_("IWAD")
			choices=BRUTAL_TWEAKS.IWAD
			tooltip = "Selects Prebuilt Boss Levels depending on your IWAD."
			default="doom2"
		}

		{
			name="tough_bosses"
			label=_("Tough Bossfights")
			choices=BRUTAL_TWEAKS.YES_NO
			tooltip = "When enabled tough bosses can appear in normal Levels (Cyberdemon, Spider.. etc) This option does not affect prebuilt boss levels."
			default="yes"
		}	
        
		{
			name="MUSIC_PRESETS"
			label="Music"
			choices=BRUTAL_TWEAKS.MUSIC_PRESETS
			default="doom2"
        } 
        {
			name = "obaddon_prefabs"
			label = _("Obaddon Prefabs")
			choices = BRUTAL_TWEAKS.YES_NO
			default = "no"
			tooltip = "Use Prefabs from Obaddon\n" ..
			"You must copy the Prefabs into this directory in the PK3\n" ..
			"games/brutaldoom/fabs"
		}			
	}
 }