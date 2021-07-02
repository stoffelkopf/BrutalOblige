--
-- Wolf Theme Wall Pictures
--

PREFABS.Pic_Nazi_Stone =
{
  file   = "picture/stoffelkopf_pic_wolf.wad"
  map    = "MAP01"
 
  theme = "wolf"
  
  room_theme = "wolf_Stone"
  
  env = "building"
  
  prob   = 100

  where  = "seeds"
  seed_w = 1
  seed_h = 1

  height = 128
  deep   =  16
  
--  over   = -16

--  x_fit = "frame"
  x_fit = { 0,32 , 160,192 }

  tex_ZZWOLF12 = { ZZWOLF2=50, ZZWOLF3=50, ZZWOLF4=50, GSTSIGN1=50, GSTSIGN3=50 }  
  
}

PREFABS.Pic_Nazi_Wood =
{
  template = "Pic_Nazi_Stone"

  room_theme = "wolf_Wood"

  tex_ZZWOLF12 = { ZZWOLF6=50, ZZWOLF7=50, WODCROS1=50, WODEAGL1=50 }  

}

PREFABS.Pic_Nazi_Brick =
{
  template = "Pic_Nazi_Stone"

  room_theme = "wolf_Brick"

  tex_ZZWOLF12 = { ZZWOLF12=50, ZZWOLF13=50}  

}

PREFABS.Pic_Nazi_Brick_Mixed =
{
  template = "Pic_Nazi_Stone"

  room_theme = "wolf_Brick_Mixed"

  tex_ZZWOLF12 = { COBFLAG1=50, COBWRTH1=50}  

}

PREFABS.Pic_Nazi_Brick_Gray =
{
  template = "Pic_Nazi_Stone"

  room_theme = "wolf_Brick_Gray"

  tex_ZZWOLF12 = { GLASS1=50, GRYHTLR1=50, GRYMAPS1=50, GRYMAPS3=50, GRYCRAK1=50 }  

}

PREFABS.Pic_Nazi_Cells =
{
  template = "Pic_Nazi_Stone"

  room_theme = "wolf_Cells"

  tex_ZZWOLF12 = { BSTCELA1=50, BSTCELB1=50, BSTSIGN1=50, BSTSIGN3=50 }  

}

PREFABS.Pic_Nazi_Brick_Blue =
{
  template = "Pic_Nazi_Stone"

  room_theme = "wolf_Brick_Blue"

  tex_ZZWOLF12 = { BLUCOMB1=50, BLUSKUL1=50, BLUSWAS1=50 }  

}

PREFABS.Pic_Nazi_Marble =
{
  template = "Pic_Nazi_Stone"

  room_theme = "wolf_Marble"

  tex_ZZWOLF12 = { MARB3_1=50, MARBEGL1=50 }  

}