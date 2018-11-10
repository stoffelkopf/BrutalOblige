BRUTALDOOM.NICE_ITEMS =
{
    goggles = REMOVE_ME --rarely useful in oblige maps anyway
    invis = REMOVE_ME --replaced in brutal by the captured marines. I've brought it back as it's own pickup and handled the captured marines seperately.
    BlurSphere =
    {
        id = 318
        kind = "powerup"
        add_prob = 7
        start_prob = 0
        closet_prob = 15
        time_limit = 100
    }
    --captured marines. The probabilities are kept similar to that of the Blursphere as that matches how often they will appear in official Doom maps.
    CapturedMarineShotgun =
    {
        id = 345
        kind = "other"
        add_prob = 6
        start_prob = 0
        closet_prob = 15
        secret_prob = 20
        level = 2
    }
    CapturedMarineMinigun =
    {
        id = 346
        kind = "other"
        add_prob = 6
        start_prob = 0
        closet_prob = 15
        secret_prob = 20
        level = 4
    }
    CapturedMarinePlasma =
    {
        id = 347
        kind = "other"
        add_prob = 6
        start_prob = 0
        closet_prob = 15
        secret_prob = 20
        level = 6
    }
    berserk = --I've made this much more likely to appear just because it's fun
    {
        id = DOOM.NICE_ITEMS.berserk.id
        kind = DOOM.NICE_ITEMS.berserk.kind
        add_prob = 30
        closet_prob =15
        secret_prob = 0
        give = DOOM.NICE_ITEMS.berserk.give
    }
    DemonRuneBaron =
    {
        id = 370
        kind = "powerup"
        add_prob = 6
        start_prob = 0
        closet_prob = 12
        time_limit = 30
    }
    DemonRuneRevenant =
    {
        id = 371
        kind = "powerup"
        add_prob = 6
        start_prob = 0
        closet_prob = 12
        time_limit = 30
    }
}

BRUTALDOOM.PICKUPS =
{
    
    grenade =
    {
        id = 300
        kind = "ammo"
        add_prob = 10
        give = { {ammo="grenade",count=5} } --actually it only gives 1 but this was the only way to stop Oblige flooding maps with them
        start_prob = 0
    }
  
    Skel_Poster =
    {
        id = 323
        r = 36
        h = 128
        kind = "health"  --not ideal but it works
        rank = 1
        add_prob = 20
        give = { {health=10} }
        theme_prob = 200
        start_prob = 0
    }
  
    clip1 =
    {
        id = 342
        kind = "ammo"
        add_prob = 30
        give = { {ammo="clip1",count=10} }
    }

    fakesoulammo = --a hack to stop the unmaker causing an assertation fail
    {
        id = 342
        kind = "ammo"
        add_prob = 10
        give = { {ammo="SoulAmmo",count=50} }
    }
}
