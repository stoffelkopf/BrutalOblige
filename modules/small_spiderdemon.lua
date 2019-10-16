------------------------------------------------------------------------
--  MODULE: Smaller Spiderdemon
------------------------------------------------------------------------
--
--  Copyright (C) 2014-2016 Andrew Apted
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

MINI_MASTERMIND = {}


function MINI_MASTERMIND.setup(self)
  if OB_CONFIG.game == "brutaldoom" then
    -- make smaller via decorate
	-- also requires the bits that fly off
  elseif OB_CONFIG.game == "brutality" then
    -- would require doing all the variants
	-- frankly I can't be arsed, if you really want this feature do it yourself as a pull request
  elseif OB_CONFIG.game == "brutal64" then
    -- make smaller via decorate
	MINI_MASTERMIND.setupforb64()
  else
	-- leave normal behaviour for normal doom
    -- this will be checked in engines/boom.lua
    PARAM.mini_mastermind = true
  end
end


OB_MODULES["small_spiderdemon"] =
{
  label = _("Smaller Spiderdemon")
  priority = 88

  side = "left"
  engine = "boom"

  hooks =
  {
    setup = MINI_MASTERMIND.setup
  }

  tooltip=_(
    "Makes the Spider Mastermind smaller " ..
    "which allows her to be placed in maps more often " ..
    "(her default size is so large that there is rarely enough space). " ..
    "Compatible with Brutal Doom 64 but not currently Brutal Doom or Brutality."
            )

}

function MINI_MASTERMIND.setupforb64()
  local data =
  {
    'Actor Small64MasterMind : 64SpiderMastermind replaces 64SpiderMastermind\n'
	'{\n'
	'scale 1.2//1.5 in default brutal64\n'
	'radius 50//62 in default brutal64\n'
	'height 80//100 in default brutal64\n'
	'}\n'
  }
  gui.wad_add_text_lump("DECORATE", data);
  --update the monster table
  local info = GAME.MONSTERS["Spiderdemon"]
  if info and info.r > 50 then
    info.r = 50
  end
  if info and info.h > 80 then
    info.r = 80
  end
end
