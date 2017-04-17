BRUTALDOOM.intermission1lev =
{
    'NoAutoStartMap\n'
    'Background map1lev\n'
    'Splat splat\n'
    'Pointer youL youR\n'
    '\n'
    '/* INFO ON BOM LOCATION OFFSETS\n'
    '0 0 means top left. Start there. \n'
    '-> = ++. Increase first value to go right\n'
    'V = ++. Increase second value to go down\n'
    'Limits are according to image resolution. \n'
    "CAUTION!!! Doom1's intermission maps are 320x200, so anything with a different aspect ratio will screw up the pixel placement for the spots below!\n"
    '*/\n'
    '\n'
    'Spots\n'
    '{\n'
    '	BOM01 8 42\n'
	'	E2M8 20 162\n'
    '	E3M8 20 170\n'
	'	E5M8 20 162\n'
    '	E3M10 20 170\n'
    '}\n'
    '\n'
    '/* Scrolling animation for the intermission screen. Its the bottom warning tape scroller thingy in this case. It will be automatically drawn on top of the map screen, so no need to reserve transparent space on it to fit this animation. */\n'
    'Animation 0 184 1\n'
    '{\n'
    '	WARNSCO1\n'
    '	WARNSCO2\n'
    '	WARNSCO3\n'
    '	WARNSCO4\n'
    '}\n'
    '\n'
    '/* Display a BONUS or VICTORY message during intermission debrief */\n'
    'IfEntering BOM31 Pic 106 94 BONUZ1\n'
    'IfEntering BOM32 Pic 106 94 BONUZ1\n'
	'IfEntering E2M8 Pic 106 94 BONUZ1\n'
	'IfEntering E3M8 Pic 106 94 BONUZ1\n'
	'IfEntering E5M8 Pic 106 94 BONUZ1\n'
	'IfEntering E3M10 Pic 106 94 BONUZ1\n'
    'IfLeaving BOM01 Pic 94 108 VICTO1\n'
}

BRUTALDOOM.intermissionfl4 =
{
	'NoAutoStartMap\n'
    'Background mapfl4\n'
    'Splat splat\n'
    'Pointer youL youR\n'
    '\n'
    '/* INFO ON BOM LOCATION OFFSETS\n'
    '0 0 means top left. Start there. \n'
    '-> = ++. Increase first value to go right\n'
    'V = ++. Increase second value to go down\n'
    'Limits are according to image resolution. \n'
    "CAUTION!!! Doom1's intermission maps are 320x200, so anything with a different aspect ratio will screw up the pixel placement for the spots below!\n"
    '*/\n'
    '\n'
    'Spots\n'
    '{\n'
    '	BOM01 8 42\n'
    '	BOM02 8 50\n'
    '	BOM03 8 58\n'
    '	BOM04 8 66\n'
	'	E2M8 20 162\n'
    '	E3M8 20 170\n'
	'	E5M8 20 162\n'
    '	E3M10 20 170\n'
    '}\n'
    '\n'
    '/* Scrolling animation for the intermission screen. Its the bottom warning tape scroller thingy in this case. It will be automatically drawn on top of the map screen, so no need to reserve transparent space on it to fit this animation. */\n'
    'Animation 0 184 1\n'
    '{\n'
    '	WARNSCO1\n'
    '	WARNSCO2\n'
    '	WARNSCO3\n'
    '	WARNSCO4\n'
    '}\n'
    '\n'
    '/* Display a BONUS or VICTORY message during intermission debrief */\n'
    'IfEntering BOM31 Pic 106 94 BONUZ1\n'
    'IfEntering BOM32 Pic 106 94 BONUZ1\n'
	'IfEntering E2M8 Pic 106 94 BONUZ1\n'
	'IfEntering E3M8 Pic 106 94 BONUZ1\n'
	'IfEntering E5M8 Pic 106 94 BONUZ1\n'
	'IfEntering E3M10 Pic 106 94 BONUZ1\n'
    'IfLeaving BOM04 Pic 94 108 VICTO1\n'
}

BRUTALDOOM.intermissionep11 =
{
    'NoAutoStartMap\n'
    'Background mapep11\n'
    'Splat splat\n'
    'Pointer youL youR\n'
    '\n'
    '/* INFO ON BOM LOCATION OFFSETS\n'
    '0 0 means top left. Start there. \n'
    '-> = ++. Increase first value to go right\n'
    'V = ++. Increase second value to go down\n'
    'Limits are according to image resolution. \n'
    "CAUTION!!! Doom1's intermission maps are 320x200, so anything with a different aspect ratio will screw up the pixel placement for the spots below!\n"
    '*/\n'
    '\n'
    'Spots\n'
    '{\n'
    '	BOM01 8 42\n'
    '	BOM02 8 50\n'
    '	BOM03 8 58\n'
    '	BOM04 8 66\n'
    '	BOM05 8 74\n'
    '	BOM06 8 82\n'
    '	BOM07 8 90\n'
    '	BOM08 8 98\n'
    '	BOM09 8 106\n'
    '	BOM10 8 114\n'
    '	BOM11 8 122\n'
	'	E2M8 20 162\n'
    '	E3M8 20 170\n'
	'	E5M8 20 162\n'
    '	E3M10 20 170\n'
    '}\n'
    '\n'
    '/* Scrolling animation for the intermission screen. Its the bottom warning tape scroller thingy in this case. It will be automatically drawn on top of the map screen, so no need to reserve transparent space on it to fit this animation. */\n'
    'Animation 0 184 1\n'
    '{\n'
    '	WARNSCO1\n'
    '	WARNSCO2\n'
    '	WARNSCO3\n'
    '	WARNSCO4\n'
    '}\n'
    '\n'
    '/* Display a BONUS or VICTORY message during intermission debrief */\n'
    'IfEntering BOM31 Pic 106 94 BONUZ1\n'
    'IfEntering BOM32 Pic 106 94 BONUZ1\n'
	'IfEntering E2M8 Pic 106 94 BONUZ1\n'
	'IfEntering E3M8 Pic 106 94 BONUZ1\n'
	'IfEntering E5M8 Pic 106 94 BONUZ1\n'
	'IfEntering E3M10 Pic 106 94 BONUZ1\n'
    'IfLeaving BOM11 Pic 94 108 VICTO1\n'
}

BRUTALDOOM.intermissionmw32 =
{
    'NoAutoStartMap\n'
    'Background mapmw32\n'
    'Splat splat\n'
    'Pointer youL youR\n'
    '\n'
    '/* INFO ON BOM LOCATION OFFSETS\n'
    '0 0 means top left. Start there. \n'
    '-> = ++. Increase first value to go right\n'
    'V = ++. Increase second value to go down\n'
    'Limits are according to image resolution. \n'
    "CAUTION!!! Doom1's intermission maps are 320x200, so anything with a different aspect ratio will screw up the pixel placement for the spots below!\n"
    '*/\n'
    '\n'
    'Spots\n'
    '{\n'
    '	BOM01 8 42\n'
    '	BOM02 8 50\n'
    '	BOM03 8 58\n'
    '	BOM04 8 66\n'
    '	BOM05 8 74\n'
    '	BOM06 8 82\n'
    '	BOM07 8 90\n'
    '	BOM08 8 98\n'
    '	BOM09 8 106\n'
    '	BOM10 8 114\n'
    '	BOM11 8 122\n'
    '	BOM12 8 130\n'
    '	BOM13 8 138\n'
    '	BOM14 8 146\n'
    '	BOM15 8 154\n'
    '	BOM16 20 42\n'
    '	BOM17 20 50\n'
    '	BOM18 20 58\n'
    '	BOM19 20 66\n'
    '	BOM20 20 74\n'
    '	BOM21 20 82\n'
    '	BOM22 20 90\n'
    '	BOM23 20 98\n'
    '	BOM24 20 106\n'
    '	BOM25 20 114\n'
    '	BOM26 20 122\n'
    '	BOM27 20 130\n'
    '	BOM28 20 138\n'
    '	BOM29 20 146\n'
    '	BOM30 20 154\n'
    '	BOM31 8 162\n'
    '	BOM32 8 170\n'
	'	E2M8 20 162\n'
    '	E3M8 20 170\n'
	'	E5M8 20 162\n'
    '	E3M10 20 170\n'
    '}\n'
    '\n'
    '/* Scrolling animation for the intermission screen. Its the bottom warning tape scroller thingy in this case. It will be automatically drawn on top of the map screen, so no need to reserve transparent space on it to fit this animation. */\n'
    'Animation 0 184 1\n'
    '{\n'
    '	WARNSCO1\n'
    '	WARNSCO2\n'
    '	WARNSCO3\n'
    '	WARNSCO4\n'
    '}\n'
    '\n'
    '/* Display a BONUS or VICTORY message during intermission debrief */\n'
    'IfEntering BOM31 Pic 106 94 BONUZ1\n'
    'IfEntering BOM32 Pic 106 94 BONUZ1\n'
	'IfEntering E2M8 Pic 106 94 BONUZ1\n'
	'IfEntering E3M8 Pic 106 94 BONUZ1\n'
	'IfEntering E5M8 Pic 106 94 BONUZ1\n'
	'IfEntering E3M10 Pic 106 94 BONUZ1\n'
    'IfLeaving BOM30 Pic 94 108 VICTO1\n'
    '\n'
}

function BRUTALDOOM.createintm()

	local MAP_LEN_TAB = { few=4, episode=11, game=32 }
	local MAP_NUM = MAP_LEN_TAB[OB_CONFIG.length] or 1
	
	if MAP_NUM == 1 then
		gui.wad_add_text_lump("BINTM", BRUTALDOOM.intermission1lev);
	elseif MAP_NUM == 4 then
		gui.wad_add_text_lump("BINTM", BRUTALDOOM.intermissionfl4);
	elseif MAP_NUM == 11 then
		gui.wad_add_text_lump("BINTM", BRUTALDOOM.intermissionep11);
	elseif MAP_NUM == 32 then
		gui.wad_add_text_lump("BINTM", BRUTALDOOM.intermissionmw32);
	end
	
end

function BRUTALDOOM.checkuintm()
	if table.containsKey(OB_MODULES,"universal_intermissions")
	then
		if OB_MODULES["universal_intermissions"].enabled == true then
			gui.printf('UI module being used\n');
			BRUTALDOOM.PARAMETERS.usingui = true;
		else
			gui.printf('UI module exists but not using\n');
			BRUTALDOOM.PARAMETERS.usingui = false;
		end
	else
		gui.printf("UI module doesn't exist\n");
		BRUTALDOOM.PARAMETERS.usingui = false;
	end
end