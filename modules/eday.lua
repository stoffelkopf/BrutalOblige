EDAY = { }

local modversion = "hellonearthstarterpack.wad"

gui.import("eday/EdayThemes")
gui.import("eday/EdaySkies")
gui.import("eday/EdayTextures")
gui.import("eday/EdayEntities")

function EDAY.setup(self)
    
  BRUTALDOOM.PARAMETERS.usingeday = true;
  BRUTALDOOM.PARAMETERS.edayversion = modversion;

  for name,_ in pairs(EDAY.SKIES) do
      BRUTALDOOM.SKIES[name] = EDAY.SKIES[name]
  end
  
  EDAY.decalsetup();
  
  gui.wad_insert_file("modules/eday/decorates/DecalPainters.dec","DECORATE");
  
end

OB_MODULES["eday"] =
{
  label = "Extermination Day"

  game = { brutaldoom=1 }
  playmode = { sp=1, coop=1 }
  
  hooks =
  {
    setup = EDAY.setup
    --all_done = EDAY.all_done
  }

  tables =
  {
    EDAY
  }
}
