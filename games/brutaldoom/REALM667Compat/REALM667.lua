function BRUTALDOOM.checkrealm667()
gui.printf('\nRealm667 Addon check:\n\n');

	if table.containsKey(OB_MODULES,"realm667_monster_control")
	then
		if OB_MODULES["realm667_monster_control"].enabled == true then
			gui.printf('REALM667 Addon active\n');
			BRUTALDOOM.PARAMETERS.realm667 = true;
		else
			gui.printf('REALM667 Addon inactive.\n');
			BRUTALDOOM.PARAMETERS.realm667 = false;
		end
	else
		gui.printf("REALM667 Addon doesn't exist.\n");
		BRUTALDOOM.PARAMETERS.realm667 = false;
	end
end
