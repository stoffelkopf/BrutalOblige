if OB_CONFIG.iwad_usage == "complete" then
  gui.printf("Using Doom Complete Skies...\n")
BRUTALDOOM.SKIES = 
        {
            any = 
            {
             'RSKY1'
            }
            tech =
            {
             'SKYPHO'
             'SKYIJ1'
             'SKYIJ2'
             'SKYIJ3'
             'SKYIO1'
             'SKYDEI'
             'TNT_SKY1'
             'TNT_SKY2'
             'PSKY1'
            }
            urban =
            {
             'RSKY2'
             'SKYCIT1'
             'SKYCITH'
             'PSKY2'
            }
            hell =
            {
             'RSKY3'
             'SKYHEL'
             'SKYHEL1'
             'SKYHELF'
             'TNT_SKY3'
             'PSKY3'
            }
           }
else
  gui.printf("Using Doom 2 Skies...\n")
BRUTALDOOM.SKIES = 
        {
            any = 
            {
             'RSKY1'
            }
            tech =
            {
             'SKYPHO'
             'SKYIJ1'
             'SKYIJ2'
             'SKYIJ3'
             'SKYIO1'
             'SKYDEI'
            }
            urban =
            {
             'RSKY2'
             'SKYCIT1'
             'SKYCITH'
            }
            hell =
            {
             'RSKY3'
             'SKYHEL'
             'SKYHEL1'
             'SKYHELF'
            }
           }
end