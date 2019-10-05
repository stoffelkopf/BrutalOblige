function EDAY.decalsetup()
    
    local decaldata =
    {
	'decal NUKEM1\n'
	'{\n'
	'pic DNZPOS30\n'
	'}\n'
	'decal NUKEM2\n'
	'{\n'
	'pic DNZPOS04\n'
	'}\n'
	'decal NUKEM3\n'
	'{\n'
	'pic DNZPOS02\n'
	'}\n'
	'decal NUKEM4\n'
	'{\n'
	'pic DNZPOS03\n'
	'}\n'
	'decal NUKEM5\n'
	'{\n'
	'pic DNZPOS29\n'
	'}\n'
	'decal NUKEM6\n'
	'{\n'
	'pic DNZPOS05\n'
	'}\n'
	'decalgroup NUKEM\n'
	'{\n'
	'NUKEM1	2\n'
	'NUKEM2	2\n'
	'NUKEM3	2\n'
	'NUKEM4	2\n'
	'NUKEM5	1\n'
	'NUKEM6	1\n'
	'}\n'
	--in no particular order....
	'decal GRAFFITI1\n'
	'{\n'
	'pic DNPIX1\n'
	'}\n'
	'decal GRAFFITI2\n'
	'{\n'
	'pic DNPIX2\n'
	'}\n'
	'decal GRAFFITI3\n'
	'{\n'
	'pic DNPIX3\n'
	'}\n'
	'decal GRAFFITI4\n'
	'{\n'
	'pic DNPIX4\n'
	'}\n'
	'decal GRAFFITI5\n'
	'{\n'
	'pic DNPIX5\n'
	'randomflipx\n'
	'}\n'
	'decal GRAFFITI6\n'
	'{\n'
	'pic DNPIX5\n'
	'shade "ff 00 00"\n'
	'}\n'
	'decal GRAFFITI7\n'
	'{\n'
	'pic DNPIX5\n'
	'randomflipx\n'
	'x-scale 0.25\n'
	'y-scale 0.25\n'
	'}\n'
	'decal GRAFFITI8\n'
	'{\n'
	'pic DNPIX5\n'
	'randomflipx\n'
	'x-scale 1.25\n'
	'y-scale 1.25\n'
	'}\n'
	'decal GRAFFITI9\n'
	'{\n'
	'pic DNPIX1\n'
	'x-scale 1.5\n'
	'y-scale 1.5\n'
	'}\n'
	'decal GRAFFITI10\n'
	'{\n'
	'pic DNPIX1\n'
	'x-scale 0.75\n'
	'y-scale 0.75\n'
	'}\n'
	'decal GRAFFITI11\n'
	'{\n'
	'pic DNPIX11\n'
	'shade "ff 00 00"\n'
	'x-scale 1.25\n'
	'y-scale 1.25\n'
	'}\n'
	'decalgroup GRAFFITI\n'
	'{\n'
	'GRAFFITI1	1\n'
	'GRAFFITI2	1\n'
	'GRAFFITI3	1\n'
	'GRAFFITI4	1\n'
	'GRAFFITI5	1\n'
	'GRAFFITI6	1\n'
	'GRAFFITI7	1\n'
	'GRAFFITI8	1\n'
	'GRAFFITI9	1\n'
	'GRAFFITI10	1\n'
	'GRAFFITI11	1\n'
	'}\n'
	--wolfenstein
	'decal WOLF1\n'
	'{\n'
	'pic ZZNAZIA\n'
	'}\n'
	'decal WOLF2\n'
	'{\n'
	'pic ZZNAZIB\n'
	'}\n'
	'decal WOLF3\n'
	'{\n'
	'pic ZZNAZIC\n'
	'}\n'
	'decal WOLF4\n'
	'{\n'
	'pic ZZNAZID\n'
	'}\n'
	'decal WOLF5\n'
	'{\n'
	'pic ZZNAZIE\n'
	'}\n'
	'decal WOLF6\n'
	'{\n'
	'pic ZZNAZIF\n'
	'}\n'
	'decalgroup WOLF\n'
	'{\n'
	'WOLF1	1\n'
	'WOLF2	1\n'
	'WOLF3	1\n'
	'}\n'
    }
    gui.wad_add_text_lump("DECALDEF", decaldata);
end