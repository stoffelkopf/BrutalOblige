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

DEBUG_MSG = { }

DEBUG_MSG.YES_NO =
{
  "yes", _("Yes"),
  "no",  _("No"),
}

DEBUG_MSG.Prefab =
{
  "no",  _("No"),
  "seedpoint",  _("Seed and Point"),      
  "all",  _("All"),  

}

DEBUG_MSG.Monsters =
{
  "no",  _("No"),
  "all",  _("All"),      
  "boss",  _("Boss only"),  

}

function DEBUG_MSG.setup(self)
  for name,opt in pairs(self.options) do
    local value = self.options[name].value
    PARAM[name] = value
  end
end

----------------------------------------------------------------

OB_MODULES["debugger"] =
{
  label = _("Debugging Stuff")

  side = "left"
  priority = 50

  tooltip = "Prints debug messages into Obliges Log.txt"
  

  hooks =
  {
    setup = DEBUG_MSG.setup
  }

  options =
  {

    dbg_prefab =
    {
      name = "dbg_prefab"
      label=_("Prefab Usage")
      choices=DEBUG_MSG.Prefab
      tooltip="Prints prefab picks"
      default="no"
      priority=98
    }

    dbg_absurd_rules =
    {
      name = "dbg_absurd_rules"
      label=_("Absurd Rules Usage")
      choices=DEBUG_MSG.YES_NO
      tooltip="Prints absurd rules"
      default="no"
      priority=97
    }
	
    dbg_monsters =
    {
      name = "dbg_monsters"
      label=_("Monster Placing")
      choices=DEBUG_MSG.Monsters
      tooltip="Prints monster placing"
      default="no"
      priority=96
    }  

    dbg_skybox =
    {
      name = "dbg_skybox"
      label=_("Skybox")
      choices=DEBUG_MSG.YES_NO
      tooltip="Prints Skybox Prefabs"
      default="no"
      priority=93
    }	
	
    dbg_entities =
    {
      name = "dbg_entities"
      label=_("Entities")
      choices=DEBUG_MSG.YES_NO
      tooltip="Prints Entities"
      default="no"
      priority=93
    }	

    dbg_ceilfloor =
    {
      name = "dbg_ceilfloor"
      label=_("Floor Ceil Textures")
      choices=DEBUG_MSG.YES_NO
      tooltip="Prints Floor and Ceiling Textures"
      default="no"
      priority=92
    }	
	
    dbg_linear =
    {
      name = "dbg_linear"
      label=_("Emerg Sprouts")
      choices=DEBUG_MSG.YES_NO
      tooltip="Displays CoD Mode Emergency Sprout Attempts"
      default="no"
      priority=91
    } 	
	
    dbg_svg =
    {
      name = "dbg_svg"
      label=_("Save Map SVGs")
      choices=DEBUG_MSG.YES_NO
      tooltip="Saves SVG format images of generated map thumbnails."
      default="no"
      priority=90
    } 		
  }
}
