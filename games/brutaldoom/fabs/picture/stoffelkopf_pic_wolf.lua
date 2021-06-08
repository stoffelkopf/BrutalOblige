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

  tex_ZZWOLF12 = { ZZWOLF2=50, ZZWOLF3=50, ZZWOLF4=50 }  
  
}

PREFABS.Pic_Nazi_Wood =
{
  template = "Pic_Nazi_Stone"

  room_theme = "wolf_Wood"

  tex_ZZWOLF12 = { ZZWOLF6=50, ZZWOLF7=50 }  

}

PREFABS.Pic_Nazi_Brick =
{
  template = "Pic_Nazi_Stone"

  room_theme = "wolf_Brick"

  tex_ZZWOLF12 = { ZZWOLF12=50, ZZWOLF13=50 }  

}