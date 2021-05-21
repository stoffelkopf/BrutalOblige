------------------------------------------------------------------------
--  MODULE: Debugging Messages Control
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

BRUTAL_TWEAKS.PURISTRAILGUNRELOADOPTIONS =
{
    "Skulltag",   "Skulltag"
    "None",   "None"
}

BRUTAL_TWEAKS.MUSIC_PRESETS =
{
    "iwad", "Doom Complete"
    "doom1",    "Doom 1 only"
    "doom2",    "Doom 2 only"
    "doom2",    "Doom 2 only"	
	"favorit",    "Best Of Doom"	    
	"ZD64MUSIC", "Doom 64"
}

function BRUTAL_TWEAKS.setup(self)
  for name,opt in pairs(self.options) do
    local value = self.options[name].value
    PARAM[name] = value
  end
end


OB_MODULES["BRUTAL_TWEAKS"] =
{
  label = "Brutal Doom Tweaks"
  
  side = "left"

  game = { brutaldoom=1}
  playmode = { sp=1, coop=1 }
  
  priority = 101

  hooks =
  {
    setup = BRUTAL_TWEAKS.setup
  }
  
  options =
  {
      MUSIC_PRESETS =
      {
          label="Music"
          choices=BRUTAL_TWEAKS.MUSIC_PRESETS
		  default="doom2"
      } 

      puristrailgunreload =
      {
          label="Purist Railgun\n Reloading"
          choices=BRUTAL_TWEAKS.PURISTRAILGUNRELOADOPTIONS
		  default="None"
      }
  }
 }