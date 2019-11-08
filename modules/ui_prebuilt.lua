UI_PREBUILT= {}

UI_PREBUILT.YES_NO =
{
	"yes", _("Yes"),
	"no",  _("No"),
}

UI_PREBUILT.IWAD =
{
	"doom2",	_("Doom 2"),
	"complete",  	_("Doom Complete"),
}

OB_MODULES["ui_prebuilt"] =
{
	label = _("Prebuilt Level Control")
	game =  {brutaldoom=1}
	side = "left"
	priority = 103

	options =
	{
		{
			name="prebuilt_levels"
			label=_("Prebuilt Levels")
			choices=UI_PREBUILT.YES_NO
			tooltip = "Enable or disable prebuilt maps. When disabled, they are replaced with generated maps instead."
			default="no"
		}
		{
			name="iwad_usage"
			label=_("IWAD")
			choices=UI_PREBUILT.IWAD
			tooltip = "Selects Prebuilt Boss Levels depending on your IWAD."
			default="doom2"
		}
		{
			name="tough_bosses"
			label=_("Tough Bossfights")
			choices=UI_PREBUILT.YES_NO
			tooltip = "When enabled tough bosses can appear in normal Levels (Cyberdemon, Spider.. etc) This option does not affect prebuilt boss levels."
			default="yes"
		}	
	}
}