NIGHTMARE = { }

NIGHTMARE.MONSTERS =
{
	nightmare_spectre =
	  {
	    id = 255
	    r = 30
	    h = 56 
	    level = 3
	    prob = 40
	    crazy_prob = 21
	    health = 300
	    damage = 3
	    attack = "melee"
	    outdoor_factor = 3.0
	    weap_prefs = { launch=0.2 }
	    species = "demon"
	    room_size = "any"
        game= { doom1=true, doom2=true, brutaldoom=true }
	  }
	  nightmare_imp =
	  {
	    id = 256
	    r = 20
	    h = 56
	    level = 2
	    prob = 40
	    crazy_prob = 25
	    health = 60
	    damage = 30
	    attack = "missile"
        game= { doom1=true, doom2=true, brutaldoom=true }
	  }
	  nightmare_trite =
	  {
	    id = 257
	    r = 19
	    h = 23 
	    level = 1
	    prob = 60
	    crazy_prob = 20
	    health = 15
	    damage = 2
	    attack = "melee"
	    room_size = "small"
        game= { brutality=true }
	  }
}

--decorate definition
function NIGHTMARE.decorate()

  local data =
	{
	
	}
  if OB_CONFIG.game == "brutaldoom" then
      gui.wad_insert_file("NightmareMonsters/decorates/BrutalDoomNightmareMonsters.dec","DECORATE");
  elseif OB_CONFIG.game == "brutality" then
      gui.wad_insert_file("NightmareMonsters/decorates/ProjectBrutalityNightmareMonsters.dec","DECORATE");
  else
      gui.wad_insert_file("NightmareMonsters/decorates/DoomNightmareMonsters.dec","DECORATE");
  end
end

NIGHTMARE.PARAMETERS =
{
	nightmare_monsters = true
}

NIGHTMARE.CHOICES =
{
  "normal", "Normal",
  "less",   "Less",
  "more",   "More",
}


function NIGHTMARE.setup(self)
  -- apply the Quantity choice
  local qty = self.options.qty.value

  for name,_ in pairs(NIGHTMARE.MONSTERS) do
    local M = GAME.MONSTERS[name]


	    if M and qty == "less" then
	      M.prob = M.prob / 2
	      M.crazy_prob = M.crazy_prob / 3
	    end

	    if M and qty == "more" then
	      M.prob = math.max(80, M.prob * 2)
	      M.crazy_prob = M.crazy_prob * 3
	    end

	    -- EDGE uses different id numbers -- fix them
	    if M and OB_CONFIG.game == "edge" then
	      M.id = EDGE_IDS[name]
	    end
		
    if OB_CONFIG.game == "brutality" then    --handle by spawners in pb
        M.prob = 0
    end
    
    local oldprob = M.prob
    M.prob = 0
    for gamename,_ in pairs(M.game) do
        gui.printf('For ' .. name .. '\n gamename is ' .. gamename .. "\n")
        if gamename == OB_CONFIG.game then --don't place monsters in games they're not in
            M.prob = oldprob
            gui.printf('So M.prob = ' .. M.prob .. "\n")
        end
    end
    
  end
end

function NIGHTMARE.all_done()
  NIGHTMARE.decorate();
end

OB_MODULES["nightmare_mons"] =
{
  label = "Nightmare Monsters"

  game = { doom1=1, doom2=1, brutaldoom=1 }
  playmode = { sp=1, coop=1 }
  engine = { zdoom=1 }

  tables =
  {
    NIGHTMARE
  }

  hooks =
  {
    setup =NIGHTMARE.setup
    all_done = NIGHTMARE.all_done
  }

  options =
  {
    qty =
    {
      label = "Default Quantity"
      choices = NIGHTMARE.CHOICES
    }
  }
}


----------------------------------------------------------------


NIGHTMARE.CONTROL_CHOICES =
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

NIGHTMARE.CONTROL_PROBS =
{
  none   = 0
  scarce = 2
  less   = 15
  plenty = 50
  more   = 120
  heaps  = 300
  insane = 2000
}


function NIGHTMARE.control_setup()
  for name,opt in pairs(self.options) do
    local M = GAME.MONSTERS[name]

    if M and opt.value != "default" then
      local prob = NIGHTMARE.CONTROL_PROBS[opt.value]

      M.replaces = nil
      M.prob = prob
      M.crazy_prob = prob

      if prob >  80 then M.density = 1.0 ; M.skip_prob = 30 end
      if prob > 180 then M.skip_prob = 0 end
    end
  end -- for opt
end


OB_MODULES["nightmare_mon_control"] =
{
  label = "Nightmare Monsters: Fine Control"

  mod = "nightmare_mons"

  game = { doom2=1, doom1=1 }

  hooks =
  {
    control_setup = NIGHTMARE.control_setup
  }

  options =
  {
	nightmare_spectre   = { label="Nightmare Spectre",     choices=NIGHTMARE.CONTROL_CHOICES }
	nightmare_imp   = { label="Nightmare Imp",     choices=NIGHTMARE.CONTROL_CHOICES }
  }
}

OB_MODULES["nightmare_mon_control_brutality"] =
{
  label = "Nightmare Monsters:\nProject Brutality"

  mod = "nightmare_mons"

  game = { brutality=1 }

  hooks =
  {
    control_setup = NIGHTMARE.control_setup
  }

  options =
  {
	nightmare_trite   = { label="Nightmare Trite",     choices=NIGHTMARE.CONTROL_CHOICES }
  }
}
