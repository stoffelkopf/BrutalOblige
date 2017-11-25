function BRUTALDOOM.checkextrakeys()
	if table.containsKey(OB_MODULES,"ExtraLocks")
	then
		if OB_MODULES["ExtraLocks"].enabled == true then
			gui.printf('ExtraKeys module being used\n');
			BRUTALDOOM.PARAMETERS.usingextrakeys = true;
		else
			gui.printf('ExtraKeys module exists but not using\n');
			BRUTALDOOM.PARAMETERS.usingextrakeys = false;
		end
	else
		gui.printf("ExtraKeys module doesn't exist\n");
		BRUTALDOOM.PARAMETERS.usingextrakeys = false;
	end
end
