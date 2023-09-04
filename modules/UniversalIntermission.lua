UINT = { }

gui.import("UniversalIntermissionITMN")
gui.import("UniversalIntermissionMapinfo")

UINT.PARAMETERS =
{

}

UINT.YES_NO =
{
    "yes", "Yes"
    "no", "No"
}

function UINT.createintm()

	local MAP_LEN_TAB = { few=4, episode=11, game=32 }
	local MAP_NUM = MAP_LEN_TAB[OB_CONFIG.length] or 1
	if OB_CONFIG.game == "brutaldoom" then
		gui.wad_add_text_lump("INTM", UINT.intermission1lev);
	else
		if MAP_NUM == 1 then
			gui.wad_add_text_lump("INTM", UINT.intermission1lev);
			gui.wad_add_text_lump("MAPINFO", UINT.mapinfo1lev);
		elseif MAP_NUM == 4 then
			gui.wad_add_text_lump("INTM", UINT.intermissionfl4);
			gui.wad_add_text_lump("MAPINFO", UINT.mapinfofl4);
		elseif MAP_NUM == 11 then
			gui.wad_add_text_lump("INTM", UINT.intermissionep11);
			gui.wad_add_text_lump("MAPINFO", UINT.mapinfoep11);
		elseif MAP_NUM == 32 then
			gui.wad_add_text_lump("INTM", UINT.intermissionmw32);
			gui.wad_add_text_lump("MAPINFO", UINT.mapinfomw32);
		end
	end
end

function UINT.setup()
	gui.wad_merge_sections("uidata/graphics.wad");
	gui.wad_insert_file("uidata/D_READ_M.ogg","D_READ_M");
	gui.wad_insert_file("uidata/D_DM2INT.ogg","D_DM2INT");
	gui.wad_insert_file("uidata/D_DM2TTL.ogg","D_DM2TTL");
	UINT.createintm();
end

OB_MODULES["universal_intermissions"] =
{
  label = "Universal Intermission Screens"

  game = {doom1=1, doom2=1, brutaldoom=1}

  engine = { zdoom=1, gzdoom=1, skulltag=1 }

  tables =
  {
	UINT
  }

  hooks =
  {
	setup = UINT.setup
  }

  options =
  {
  }
}