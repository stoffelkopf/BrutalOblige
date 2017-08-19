BRUTALFRIENDS.MONSTERS =
{
 EnemyMarine3 =
	  {
	    id = 319
	    r = BRUTALDOOM.MONSTERS.EasyMarine.r
	    h = BRUTALDOOM.MONSTERS.EasyMarine.h
	    level = BRUTALDOOM.MONSTERS.EasyMarine.level
	    prob = BRUTALDOOM.MONSTERS.EasyMarine.prob
	    crazy_prob = BRUTALDOOM.MONSTERS.EasyMarine.crazy_prob
	    health = BRUTALDOOM.MONSTERS.EasyMarine.health
	    damage = BRUTALDOOM.MONSTERS.EasyMarine.damage
	    attack = BRUTALDOOM.MONSTERS.EasyMarine.attack
	    cage_factor = BRUTALDOOM.MONSTERS.EasyMarine.cage_factor
	    density = BRUTALDOOM.MONSTERS.EasyMarine.density
	  }
}

function BRUTALFRIENDS.setup()
	gui.wad_insert_file("brutaloblige/decorates/BrutalFriends.dec","DECORATE");
	BRUTALDOOM.PARAMETERS.brutalfriends = true;
end

BRUTALFRIENDS.NICE_ITEMS =
{
    invis = REMOVE_ME
    replacementinvis =
  {
    id = 318
    kind = "powerup"
    add_prob = 5
    secret_prob = 50 --vanilla is 70
    time_limit = 100
  }
  FriendTeleportBeacon =
  {
    id = 2024
    kind = "other"
    add_prob = 5
    secret_prob = 110
  }
}

OB_MODULES["brutalfriends"] =
{
  label = "Brutal Friends"

  game = { brutaldoom=1 }
  playmode = { sp=1, coop=1 }
  
  hooks =
  {
    setup = BRUTALFRIENDS.setup
  }

  tables =
  {
    BRUTALFRIENDS
  }
}
