BRUTALDOOM.GLDATA = { }

function BRUTALDOOM.create_gldata()
    gui.printf("GLData Merger code is starting\n");

local GL_DOOM =
[[
//Kamikaze Guy

Pointlight SuicideBomberDeath1
{
Color 1.0 0.4 0.0
Size 35
}

Pointlight SuicideBomberDeath2
{
Color 0.6 0.3 0.0
Size 40
}

Pointlight SuicideBomberDeath3
{
Color 0.3 0.1 0.0
Size 35
}

Object KamikazeGuy
{
Frame BMBEM { Light SuicideBomberDeath1 }
Frame BMBEN { Light SuicideBomberDeath2 }
Frame BMBEO { Light SuicideBomberDeath3 }
}

//Hellion

Flickerlight2 HellionG
{
 Color 0.5 0.5 0.0
 Offset 0 40 0
 Size 25
 SecondarySize 30
 Interval 0.005
}

Flickerlight2 HellionH
{
 Color 1.0 1.0 0.0
 Offset 0 50 0
 Size 32
 SecondarySize 42
 Interval 0.005
}

Flickerlight2 HellionI
{
 Color 1.0 1.0 0.0
 Offset 0 45 0
 Size 45
 SecondarySize 50
 Interval 0.005
}

Flickerlight2 HellionJ
{
 Color 0.9 0.9 0.0
 Offset 0 35 -5
 Size 55
 SecondarySize 58
 Interval 0.005
}

Flickerlight2 HellionK
{
 Color 0.7 0.7 0.0
 Offset 0 32 -15
 Size 60
 SecondarySize 62
 Interval 0.005
}

Flickerlight2 HellionL
{
 Color 0.2 0.2 0.0
 Offset 0 32 -15
 Size 62
 SecondarySize 63
 Interval 0.005
}

Object Hellion
{
 Frame HELNG { Light HellionG }
 Frame HELNH { Light HellionH }
 Frame HELNI { Light HellionI }
 Frame HELNJ { Light HellionJ }
 Frame HELNK { Light HellionK }
 Frame HELNL { Light HellionL }
}

Flickerlight2 HellionballA
{
 Color 1.0 1.0 0.0
 Offset 0 4 -8
 Size 30
 SecondarySize 40
 Interval 0.005
}

Flickerlight2 HellionballB
{
 Color 1.0 1.0 0.0
 Offset 0 4 -8
 Size 35
 SecondarySize 45
 Interval 0.005
}

Flickerlight2 HellionballC
{
 Color 1.0 1.0 0.0
 Offset 0 4 0
 Size 35
 SecondarySize 45
 Interval 0.005
}

Flickerlight2 HellionballD
{
 Color 0.9 0.9 0.0
 Offset 0 4 0
 Size 32
 SecondarySize 42
 Interval 0.005
}

Flickerlight2 HellionballE
{
 Color 0.8 0.8 0.0
 Offset 0 4 0
 Size 29
 SecondarySize 39
 Interval 0.005
}

Flickerlight2 HellionballF
{
 Color 0.6 0.6 0.0
 Offset 0 4 0
 Size 26
 SecondarySize 36
 Interval 0.005
}

Flickerlight2 HellionballG
{
 Color 0.4 0.4 0.0
 Offset 0 4 0
 Size 20
 SecondarySize 30
 Interval 0.005
}

Flickerlight2 HellionballH
{
 Color 0.2 0.2 0.0
 Offset 0 4 0
 Size 10
 SecondarySize 20
 Interval 0.005
}

Flickerlight2 HellionballI
{
 Color 0.1 0.1 0.0
 Offset 0 4 0
 Size 5
 SecondarySize 10
 Interval 0.005
}

Flickerlight2 HellionballJ
{
 Color 0.8 0.8 0.0
 Offset 0 4 0
 Size 45
 SecondarySize 55
 Interval 0.005
}

Flickerlight2 HellionballK
{
 Color 0.6 0.6 0.0
 Offset 0 4 0
 Size 55
 SecondarySize 60
 Interval 0.005
}

Flickerlight2 HellionballL
{
 Color 0.4 0.4 0.0
 Offset 0 4 0
 Size 60
 SecondarySize 65
 Interval 0.005
}

Flickerlight2 HellionballM
{
 Color 0.2 0.2 0.0
 Offset 0 4 0
 Size 65
 SecondarySize 68
 Interval 0.005
}

Flickerlight2 HellionballN
{
 Color 0.1 0.1 0.0
 Offset 0 4 0
 Size 68
 SecondarySize 72
 Interval 0.005
}

Object Hellionball
{
 Frame HLBLA { Light HellionballA }
 Frame HLBLB { Light HellionballB }
 Frame HLBLJ { Light HellionballJ }
 Frame HLBLK { Light HellionballK }
 Frame HLBLL { Light HellionballL }
 Frame HLBLM { Light HellionballM }
 Frame HLBLN { Light HellionballN }
}

Object Hellionpuff
{
 Frame HLBLC { Light HellionballC }
 Frame HLBLD { Light HellionballD }
 Frame HLBLE { Light HellionballE }
 Frame HLBLF { Light HellionballF }
 Frame HLBLG { Light HellionballG }
 Frame HLBLH { Light HellionballH }
 Frame HLBLI { Light HellionballI }
}

//Brightmaps


BrightMap Sprite HELNG1
{
Map BMHELNG1
DisableFullBright
}

BrightMap Sprite HELNG2
{
Map BMHELNG2
DisableFullBright
}

BrightMap Sprite HELNG3
{
Map BMHELNG3
DisableFullBright
}

BrightMap Sprite HELNG4
{
Map BMHELNG4
DisableFullBright
}

BrightMap Sprite HELNG5
{
Map BMHELNG5
DisableFullBright
}

BrightMap Sprite HELNG6
{
Map BMHELNG6
DisableFullBright
}

BrightMap Sprite HELNG7
{
Map BMHELNG7
DisableFullBright
}

BrightMap Sprite HELNG8
{
Map BMHELNG8
DisableFullBright
}

BrightMap Sprite HELNH1
{
Map BMHELNH1
DisableFullBright
}

BrightMap Sprite HELNH2
{
Map BMHELNH2
DisableFullBright
}

BrightMap Sprite HELNH3
{
Map BMHELNH3
DisableFullBright
}

BrightMap Sprite HELNH4
{
Map BMHELNH4
DisableFullBright
}

BrightMap Sprite HELNH5
{
Map BMHELNH5
DisableFullBright
}

BrightMap Sprite HELNH6
{
Map BMHELNH6
DisableFullBright
}

BrightMap Sprite HELNH7
{
Map BMHELNH7
DisableFullBright
}

BrightMap Sprite HELNH8
{
Map BMHELNH8
DisableFullBright
}

BrightMap Sprite HELNI1
{
Map BMHELNI1
DisableFullBright
}

BrightMap Sprite HELNI2
{
Map BMHELNI2
DisableFullBright
}

BrightMap Sprite HELNI3
{
Map BMHELNI3
DisableFullBright
}

BrightMap Sprite HELNI4
{
Map BMHELNI4
DisableFullBright
}

BrightMap Sprite HELNI5
{
Map BMHELNI5
DisableFullBright
}

BrightMap Sprite HELNI6
{
Map BMHELNI6
DisableFullBright
}

BrightMap Sprite HELNI7
{
Map BMHELNI7
DisableFullBright
}

BrightMap Sprite HELNI8
{
Map BMHELNI8
DisableFullBright
}

BrightMap Sprite HELNJ1
{
Map BMHELNJ1
DisableFullBright
}

BrightMap Sprite HELNJ2
{
Map BMHELNJ2
DisableFullBright
}

BrightMap Sprite HELNJ3
{
Map BMHELNJ3
DisableFullBright
}

BrightMap Sprite HELNJ4
{
Map BMHELNJ4
DisableFullBright
}

BrightMap Sprite HELNJ5
{
Map BMHELNJ5
DisableFullBright
}

BrightMap Sprite HELNJ6
{
Map BMHELNJ6
DisableFullBright
}

BrightMap Sprite HELNJ7
{
Map BMHELNJ7
DisableFullBright
}

BrightMap Sprite HELNJ8
{
Map BMHELNJ8
DisableFullBright
}

BrightMap Sprite HELNK1
{
Map BMHELNK1
DisableFullBright
}

BrightMap Sprite HELNK2
{
Map BMHELNK2
DisableFullBright
}

BrightMap Sprite HELNK3
{
Map BMHELNK3
DisableFullBright
}

BrightMap Sprite HELNK4
{
Map BMHELNK4
DisableFullBright
}

BrightMap Sprite HELNK5
{
Map BMHELNK5
DisableFullBright
}

BrightMap Sprite HELNK6
{
Map BMHELNK6
DisableFullBright
}

BrightMap Sprite HELNK7
{
Map BMHELNK7
DisableFullBright
}

BrightMap Sprite HELNK8
{
Map BMHELNK8
DisableFullBright
}

BrightMap Sprite HELNL1
{
Map BMBLACK //This is so it doesn't show up as full bright when you have
DisableFullBright //brightmaps enabled
}

BrightMap Sprite HELNL2
{
Map BMBLACK
DisableFullBright
}

BrightMap Sprite HELNL3
{
Map BMBLACK
DisableFullBright
}

BrightMap Sprite HELNL4
{
Map BMBLACK
DisableFullBright
}

BrightMap Sprite HELNL5
{
Map BMBLACK
DisableFullBright
}

BrightMap Sprite HELNL6
{
Map BMBLACK
DisableFullBright
}

BrightMap Sprite HELNL7
{
Map BMBLACK
DisableFullBright
}

BrightMap Sprite HELNL8
{
Map BMBLACK
DisableFullBright
}

//Hell Warrior

Pointlight HWBall
{
Color 0.8 0.5 0.05
Size 48
}

Pointlight HWBall2
{
Color 1.0 0.7 0.1
Size 64
}

Pointlight HWBall3
{
Color 0.6 0.4 0.0
Size 56
}

Pointlight HWBall4
{
Color 0.4 0.2 0.0
Size 32
}


Object HellWarriorBall
{
Frame HWFBA { Light HWBall }
Frame HWFBB { Light HWBall }
Frame HWFBC { Light HWBall2 }
Frame HWFBD { Light HWBall3 }
Frame HWFBE { Light HWBall4 }
}

Pointlight HWGBall
{
Color 0.5 1.0 0.5
Size 32
}

Pointlight HWGBall2
{
Color 0.5 1.0 0.5
Size 28
}

Pointlight HWGBall3
{
Color 0.5 1.0 0.5
Size 24
}

Pointlight HWGBall4
{
Color 0.5 1.0 0.5
Size 20
}

Pointlight HWGBall5
{
Color 0.5 1.0 0.5
Size 16
}

Pointlight HWGBall6
{
Color 0.5 1.0 0.5
Size 12
}

Object HellWarriorBall2
{
Frame GRBAA { Light HWGBall }
Frame GRBAB { Light HWGBall }
Frame GRBAC { Light HWGBall }
Frame GRBAD { Light HWGBall }
Frame GRBAE { Light HWGBall }
Frame GRBAF { Light HWGBall }
Frame GRBAG { Light HWGBall }
Frame GRBAH { Light HWGBall }
Frame GRBAI { Light HWGBall2 }
Frame GRBAJ { Light HWGBall3 }
Frame GRBAK { Light HWGBall4 }
Frame GRBAL { Light HWGBall5 }
Frame GRBAM { Light HWGBall6 }
}

Pointlight HWarriorFire
{
Color 0.5 1.0 0.5
Size 48
}

Object HellWarrior
{
Frame HWARI { Light HWarriorFire }
}

//Brightmap


BrightMap Sprite HWARA1
{
Map BMHWARA1
DisableFullBright
}

BrightMap Sprite HWARA2
{
Map BMHWARA2
DisableFullBright
}

BrightMap Sprite HWARA3
{
Map BMHWARA3
DisableFullBright
}

BrightMap Sprite HWARA4
{
Map BMHWARA4
DisableFullBright
}

BrightMap Sprite HWARA5
{
Map BMHWARA5
DisableFullBright
}

BrightMap Sprite HWARA6
{
Map BMHWARA6
DisableFullBright
}

BrightMap Sprite HWARA7
{
Map BMHWARA7
DisableFullBright
}

BrightMap Sprite HWARA8
{
Map BMHWARA8
DisableFullBright
}

BrightMap Sprite HWARB1
{
Map BMHWARB1
DisableFullBright
}

BrightMap Sprite HWARB2
{
Map BMHWARB2
DisableFullBright
}

BrightMap Sprite HWARB3
{
Map BMHWARB3
DisableFullBright
}

BrightMap Sprite HWARB4
{
Map BMHWARB4
DisableFullBright
}

BrightMap Sprite HWARB5
{
Map BMHWARB5
DisableFullBright
}

BrightMap Sprite HWARB6
{
Map BMHWARB6
DisableFullBright
}

BrightMap Sprite HWARB7
{
Map BMHWARB7
DisableFullBright
}

BrightMap Sprite HWARB8
{
Map BMHWARB8
DisableFullBright
}

BrightMap Sprite HWARC1
{
Map BMHWARC1
DisableFullBright
}

BrightMap Sprite HWARC2
{
Map BMHWARC2
DisableFullBright
}

BrightMap Sprite HWARC3
{
Map BMHWARC3
DisableFullBright
}

BrightMap Sprite HWARC4
{
Map BMHWARC4
DisableFullBright
}

BrightMap Sprite HWARC5
{
Map BMHWARC5
DisableFullBright
}

BrightMap Sprite HWARC6
{
Map BMHWARC6
DisableFullBright
}

BrightMap Sprite HWARC7
{
Map BMHWARC7
DisableFullBright
}

BrightMap Sprite HWARC8
{
Map BMHWARC8
DisableFullBright
}

BrightMap Sprite HWARD1
{
Map BMHWARD1
DisableFullBright
}

BrightMap Sprite HWARD2
{
Map BMHWARD2
DisableFullBright
}

BrightMap Sprite HWARD3
{
Map BMHWARD3
DisableFullBright
}

BrightMap Sprite HWARD4
{
Map BMHWARD4
DisableFullBright
}

BrightMap Sprite HWARD5
{
Map BMHWARD5
DisableFullBright
}

BrightMap Sprite HWARD6
{
Map BMHWARD6
DisableFullBright
}

BrightMap Sprite HWARD7
{
Map BMHWARD7
DisableFullBright
}

BrightMap Sprite HWARD8
{
Map BMHWARD8
DisableFullBright
}

BrightMap Sprite HWARE1
{
Map BMHWARE1
DisableFullBright
}

BrightMap Sprite HWARE2
{
Map BMHWARE2
DisableFullBright
}

BrightMap Sprite HWARE3
{
Map BMHWARE3
DisableFullBright
}

BrightMap Sprite HWARE4
{
Map BMHWARE4
DisableFullBright
}

BrightMap Sprite HWARE5
{
Map BMHWARE5
DisableFullBright
}

BrightMap Sprite HWARE6
{
Map BMHWARE6
DisableFullBright
}

BrightMap Sprite HWARE7
{
Map BMHWARE7
DisableFullBright
}

BrightMap Sprite HWARE8
{
Map BMHWARE8
DisableFullBright
}

BrightMap Sprite HWARF1
{
Map BMHWARF1
DisableFullBright
}

BrightMap Sprite HWARF2
{
Map BMHWARF2
DisableFullBright
}

BrightMap Sprite HWARF3
{
Map BMHWARF3
DisableFullBright
}

BrightMap Sprite HWARF4
{
Map BMHWARF4
DisableFullBright
}

BrightMap Sprite HWARF5
{
Map BMHWARF5
DisableFullBright
}

BrightMap Sprite HWARF6
{
Map BMHWARF6
DisableFullBright
}

BrightMap Sprite HWARF7
{
Map BMHWARF7
DisableFullBright
}

BrightMap Sprite HWARF8
{
Map BMHWARF8
DisableFullBright
}

BrightMap Sprite HWARG1
{
Map BMHWARG1
DisableFullBright
}

BrightMap Sprite HWARG2
{
Map BMHWARG2
DisableFullBright
}

BrightMap Sprite HWARG3
{
Map BMHWARG3
DisableFullBright
}

BrightMap Sprite HWARG4
{
Map BMHWARG4
DisableFullBright
}

BrightMap Sprite HWARG5
{
Map BMHWARG5
DisableFullBright
}

BrightMap Sprite HWARG6
{
Map BMHWARG6
DisableFullBright
}

BrightMap Sprite HWARG7
{
Map BMHWARG7
DisableFullBright
}

BrightMap Sprite HWARG8
{
Map BMHWARG8
DisableFullBright
}

BrightMap Sprite HWARH1
{
Map BMHWARH1
DisableFullBright
}

BrightMap Sprite HWARH2
{
Map BMHWARH2
DisableFullBright
}

BrightMap Sprite HWARH3
{
Map BMHWARH3
DisableFullBright
}

BrightMap Sprite HWARH4
{
Map BMHWARH4
DisableFullBright
}

BrightMap Sprite HWARH5
{
Map BMHWARH5
DisableFullBright
}

BrightMap Sprite HWARH6
{
Map BMHWARH6
DisableFullBright
}

BrightMap Sprite HWARH7
{
Map BMHWARH7
DisableFullBright
}

BrightMap Sprite HWARH8
{
Map BMHWARH8
DisableFullBright
}

BrightMap Sprite HWARI1
{
Map BMHWARI1
DisableFullBright
}

BrightMap Sprite HWARI2
{
Map BMHWARI2
DisableFullBright
}

BrightMap Sprite HWARI3
{
Map BMHWARI3
DisableFullBright
}

BrightMap Sprite HWARI4
{
Map BMHWARI4
DisableFullBright
}

BrightMap Sprite HWARI5
{
Map BMHWARI5
DisableFullBright
}

BrightMap Sprite HWARI6
{
Map BMHWARI6
DisableFullBright
}

BrightMap Sprite HWARI7
{
Map BMHWARI7
DisableFullBright
}

BrightMap Sprite HWARI8
{
Map BMHWARI8
DisableFullBright
}

BrightMap Sprite HWARJ1
{
Map BMHWARJ1
DisableFullBright
}

BrightMap Sprite HWARJ2
{
Map BMHWARJ2
DisableFullBright
}

BrightMap Sprite HWARJ3
{
Map BMHWARJ3
DisableFullBright
}

BrightMap Sprite HWARJ4
{
Map BMHWARJ4
DisableFullBright
}

BrightMap Sprite HWARJ5
{
Map BMHWARJ5
DisableFullBright
}

BrightMap Sprite HWARJ6
{
Map BMHWARJ6
DisableFullBright
}

BrightMap Sprite HWARJ7
{
Map BMHWARJ7
DisableFullBright
}

BrightMap Sprite HWARJ8
{
Map BMHWARJ8
DisableFullBright
}

BrightMap Sprite HWARK0
{
Map BMHWARK0
DisableFullBright
}

BrightMap Sprite HWARL0
{
Map BMHWARK0
DisableFullBright
}

BrightMap Sprite HWARM0
{
Map BMHWARM0
DisableFullBright
}

BrightMap Sprite HWARN0
{
Map BMHWARN0
DisableFullBright
}

BrightMap Sprite HWARO0
{
Map BMHWARO0
DisableFullBright
}

BrightMap Sprite HWARP0
{
Map BMHWARP0
DisableFullBright
}

BrightMap Sprite HWSHA0
{
Map BMHWSHA0
DisableFullBright
}

BrightMap Sprite HWSHE0
{
Map BMHWSHE0
DisableFullBright
}

BrightMap Sprite HWSHF0
{
Map BMHWSHF0
DisableFullBright
}

BrightMap Sprite HWSHG0
{
Map BMHWSHG0
DisableFullBright
}

BrightMap Sprite HWSHH0
{
Map BMHWSHH0
DisableFullBright
}

BrightMap Sprite HWSHI0
{
Map BMHWSHI0
DisableFullBright
}

//Snake Imp

Pointlight SnakeImpFireball
{
Color 0.0 1.0 0.0
Size 25
}

Pointlight SnakeImpFireball2
{
Color 0.0 1.0 0.0
Size 30
}

Pointlight SnakeImpFireball3
{
Color 0.0 0.7 0.0
Size 25
}

Pointlight SnakeImpFireball4
{
Color 0.0 0.4 0.0
Size 20
}

Object SnakeImpFireball
{
Frame SIBAA { Light SnakeImpFireball }
Frame SIBAB { Light SnakeImpFireball }
Frame SIBAC { Light SnakeImpFireball2 }
Frame SIBAD { Light SnakeImpFireball3 }
Frame SIBAE { Light SnakeImpFireball4 }
}

//Roach

Pointlight RoachBall1
{
Color 0.0 0.4 0.0
Size 24
}

Pointlight RoachBall2
{
Color 0.0 0.6 0.0
Size 24
}

Pointlight RoachBall3
{
Color 0.0 0.6 0.0
Size 32
}

Pointlight RoachBall4
{
Color 0.0 0.7 0.0
Size 32
}

Pointlight RoachBall5
{
Color 0.0 0.5 0.0
Size 24
}

Pointlight RoachBall6
{
Color 0.0 0.2 0.0
Size 16
}

Object RoachBall
{
Frame RCHBA { Light RoachBall1 }
Frame RCHBB { Light RoachBall1 }
Frame RCHBC { Light RoachBall2 }
Frame RCHBD { Light RoachBall3 }
Frame RCHBE { Light RoachBall4 }
Frame RCHBF { Light RoachBall5 }
Frame RCHBG { Light RoachBall6 }
}

BrightMap Sprite ROACA1
{
Map BMROACA1
DisableFullBright
}

BrightMap Sprite ROACA2A8
{
Map BMROACA2
DisableFullBright
}

BrightMap Sprite ROACA3A7
{
Map BMROACA3
DisableFullBright
}

BrightMap Sprite ROACB1
{
Map BMROACB1
DisableFullBright
}

BrightMap Sprite ROACB2B8
{
Map BMROACB2
DisableFullBright
}

BrightMap Sprite ROACB3B7
{
Map BMROACB3
DisableFullBright
}

BrightMap Sprite ROACC1
{
Map BMROACC1
DisableFullBright
}

BrightMap Sprite ROACC2C8
{
Map BMROACC2
DisableFullBright
}

BrightMap Sprite ROACC3C7
{
Map BMROACC3
DisableFullBright
}

BrightMap Sprite ROACC4C6
{
Map BMROACC4
DisableFullBright
}

BrightMap Sprite ROACD1
{
Map BMROACD1
DisableFullBright
}

BrightMap Sprite ROACD2D8
{
Map BMROACD2
DisableFullBright
}

BrightMap Sprite ROACD3D7
{
Map BMROACD3
DisableFullBright
}

BrightMap Sprite ROACE1
{
Map BMROACE1
DisableFullBright
}

BrightMap Sprite ROACE2E8
{
Map BMROACE2
DisableFullBright
}

BrightMap Sprite ROACE3E7
{
Map BMROACE3
DisableFullBright
}

BrightMap Sprite ROACF1
{
Map BMROACF1
DisableFullBright
}

BrightMap Sprite ROACF2F8
{
Map BMROACF2
DisableFullBright
}

BrightMap Sprite ROACF3F7
{
Map BMROACF3
DisableFullBright
}

BrightMap Sprite ROACG1
{
Map BMROACG1
DisableFullBright
}

BrightMap Sprite ROACG2G8
{
Map BMROACG2
DisableFullBright
}

BrightMap Sprite ROACG3G7
{
Map BMROACG3
DisableFullBright
}

BrightMap Sprite ROACI0
{
Map BMROACI0
DisableFullBright
}

BrightMap Sprite ROACJ0
{
Map BMROACJ0
DisableFullBright
}

BrightMap Sprite ROACN0
{
Map BMROACN0
DisableFullBright
}

BrightMap Sprite ROACO0
{
Map BMROACO0
DisableFullBright
}

//Hierophant

Pointlight Hierophant1
{
Color 1.0 1.0 0.3
Size 56
Offset 64 48 0
}

Pointlight Hierophant2
{
Color 1.0 1.0 0.3
Size 48
Offset 64 48 0
}

Object Hierophant
{
Frame HIERN { Light Hierophant1 }
Frame HIERO { Light Hierophant2 }
}

Pointlight Hieroball11
{
Color 0.6 0.5 0.0
Size 40
}

Pointlight Hieroball12
{
Color 0.8 0.7 0.0
Size 40
}

Pointlight Hieroball13
{
Color 0.8 0.7 0.0
Size 48
}

Pointlight Hieroball14
{
Color 0.6 0.5 0.0
Size 52
}

Pointlight Hieroball15
{
Color 0.4 0.3 0.0
Size 56
}

Pointlight Hieroball16
{
Color 0.2 0.1 0.0
Size 56
}

Object HieroBall1
{
Frame HIB1A { Light Hieroball11 }
Frame HIB1B { Light Hieroball11 }
Frame HIB1C { Light Hieroball12 }
Frame HIB1D { Light Hieroball13 }
Frame HIB1E { Light Hieroball14 }
Frame HIB1F { Light Hieroball15 }
Frame HIB1G { Light Hieroball16 }
}

Pointlight Hieroball21
{
Color 1.0 1.0 0.4
Size 32
}

Pointlight Hieroball22
{
Color 0.9 0.9 0.3
Size 30
}

Pointlight Hieroball23
{
Color 0.8 0.8 0.2
Size 28
}

Pointlight Hieroball24
{
Color 0.7 0.7 0.1
Size 26
}

Pointlight Hieroball25
{
Color 0.6 0.6 0.0
Size 24
}

Pointlight Hieroball26
{
Color 0.5 0.5 0.0
Size 22
}

Pointlight Hieroball27
{
Color 0.4 0.4 0.0
Size 20
}

Object HieroBall2
{
Frame HIB2A { Light Hieroball21 }
Frame HIB2B { Light Hieroball21 }
Frame HIB2C { Light Hieroball21 }
Frame HIB2D { Light Hieroball21 }
Frame HIB2E { Light Hieroball22 }
Frame HIB2F { Light Hieroball23 }
Frame HIB2G { Light Hieroball24 }
Frame HIB2H { Light Hieroball25 }
Frame HIB2I { Light Hieroball26 }
Frame HIB2J { Light Hieroball27 }
}

Pointlight CurseBall1
{
Color 0.7 0.0 0.7
Size 56
}

Pointlight CurseBall2
{
Color 0.6 0.0 0.6
Size 56
}

Pointlight CurseBall3
{
Color 0.6 0.0 0.6
Size 52
}

Pointlight CurseBall4
{
Color 0.5 0.0 0.5
Size 48
}

Pointlight CurseBall5
{
Color 0.4 0.0 0.4
Size 44
}

Pointlight CurseBall6
{
Color 0.3 0.0 0.3
Size 40
}

Object CurseBall
{
Frame CURSA { Light CurseBall1 }
Frame CURSB { Light CurseBall1 }
Frame CURSC { Light CurseBall1 }
Frame CURSD { Light CurseBall1 }
Frame CURSE { Light CurseBall2 }
Frame CURSF { Light CurseBall3 }
Frame CURSG { Light CurseBall4 }
Frame CURSH { Light CurseBall5 }
Frame CURSI { Light CurseBall6 }
}

//Goat Boss

Pointlight SatyrLordMissile11
{
Color 0.6 0.0 0.0
Size 48
}

Pointlight SatyrLordMissile12
{
Color 0.8 0.0 0.0
Size 56
}

Pointlight SatyrLordMissile13
{
Color 1.0 0.0 0.0
Size 64
}

Pointlight SatyrLordMissile14
{
Color 0.8 0.0 0.0
Size 48
}

Pointlight SatyrLordMissile15
{
Color 0.4 0.0 0.0
Size 24
}

Object SatyrLordMissile1
{
Frame ANFBA { Light SatyrLordMissile11 }
Frame ANFBB { Light SatyrLordMissile11 }
Frame ANFBC { Light SatyrLordMissile11 }
Frame ANFBD { Light SatyrLordMissile12 }
Frame ANFBE { Light SatyrLordMissile13 }
Frame ANFBF { Light SatyrLordMissile14 }
Frame ANFBG { Light SatyrLordMissile15 }
}

Pointlight SatyrLordMissile21
{
Color 0.8 0.8 0.8
Size 16
}

Pointlight SatyrLordMissile22
{
Color 0.8 0.8 0.8
Size 24
}

Pointlight SatyrLordMissile23
{
Color 0.8 0.8 0.8
Size 32
}

Pointlight SatyrLordMissile24
{
Color 0.8 0.8 0.8
Size 48
}

Pointlight SatyrLordMissile25
{
Color 0.7 0.7 0.7
Size 48
}

Pointlight SatyrLordMissile26
{
Color 0.6 0.6 0.6
Size 48
}

Pointlight SatyrLordMissile27
{
Color 0.4 0.4 0.4
Size 48
}

Pointlight SatyrLordMissile28
{
Color 0.4 0.4 0.4
Size 40
}

Pointlight SatyrLordMissile29
{
Color 0.4 0.4 0.4
Size 32
}

Pointlight SatyrLordMissile210
{
Color 0.4 0.4 0.4
Size 24
}

Pointlight SatyrLordMissile211
{
Color 0.4 0.4 0.4
Size 16
}

Object SatyrLordMissile2
{
Frame PSMMA { Light SatyrLordMissile21 }
Frame PSMMB { Light SatyrLordMissile22 }
Frame PSMMC { Light SatyrLordMissile23 }
Frame PSMMD { Light SatyrLordMissile24 }
Frame PSMME { Light SatyrLordMissile24 }
Frame PSMMF { Light SatyrLordMissile24 }
Frame PSMMG { Light SatyrLordMissile25 }
Frame PSMMH { Light SatyrLordMissile26 }
Frame PSMMI { Light SatyrLordMissile27 }
Frame PSMMJ { Light SatyrLordMissile28 }
Frame PSMMK { Light SatyrLordMissile29 }
Frame PSMML { Light SatyrLordMissile210 }
Frame PSMMM { Light SatyrLordMissile211 }
}

Pointlight SLGroundFire
{
Color 0.3 0.0 0.0
Size 40
}

Object SLGroundFire
{
Frame FX03 { Light SLGroundFire }
}

Pointlight SatyrLordWhiteMissile1
{
Color 1.0 1.0 1.0
Size 32
}

Pointlight SatyrLordWhiteMissile2
{
Color 1.0 1.0 1.0
Size 40
}

Pointlight SatyrLordWhiteMissile3
{
Color 0.6 0.6 0.6
Size 32
}

Pointlight SatyrLordWhiteMissile4
{
Color 0.4 0.4 0.4
Size 24
}

Object SatyrLordMissileDual2Real
{
Frame CSSFD { Light SatyrLordWhiteMissile1 }
Frame CSSFE { Light SatyrLordWhiteMissile1 }
Frame CSSFG { Light SatyrLordWhiteMissile2 }
Frame CSSFH { Light SatyrLordWhiteMissile3 }
Frame CSSFI { Light SatyrLordWhiteMissile4 }
}

Pointlight SatyrLordRedMissile1
{
Color 0.4 0.0 0.0
Size 32
}

Pointlight SatyrLordRedMissile2
{
Color 0.6 0.0 0.0
Size 24
}

Pointlight SatyrLordRedMissile3
{
Color 0.8 0.0 0.0
Size 32
}

Pointlight SatyrLordRedMissile4
{
Color 1.0 0.0 0.0
Size 48
}

Pointlight SatyrLordRedMissile5
{
Color 1.0 0.0 0.0
Size 64
}

Pointlight SatyrLordRedMissile6
{
Color 1.0 0.0 0.0
Size 56
Offset 0 6 0
}

Pointlight SatyrLordRedMissile7
{
Color 1.0 0.0 0.0
Size 48
Offset 0 8 0
}

Pointlight SatyrLordRedMissile8
{
Color 0.8 0.0 0.0
Size 32
Offset 0 12 0
}

Pointlight SatyrLordRedMissile9
{
Color 0.6 0.0 0.0
Size 24
Offset 0 16 0
}

Pointlight SatyrLordRedMissile10
{
Color 0.4 0.0 0.0
Size 20
Offset 0 20 0
}

Pointlight SatyrLordRedMissile11
{
Color 0.3 0.0 0.0
Size 16
Offset 0 24 0
}

Object SatyrLordMissileDual1Real
{
Frame MSP2 { Light SatyrLordRedMissile1 }
Frame MSP1G { Light SatyrLordRedMissile2 }
Frame MSP1H { Light SatyrLordRedMissile3 }
Frame MSP1I { Light SatyrLordRedMissile4 }
Frame MSP1J { Light SatyrLordRedMissile5 }
Frame MSP1K { Light SatyrLordRedMissile6 }
Frame MSP1L { Light SatyrLordRedMissile7 }
Frame MSP1M { Light SatyrLordRedMissile8 }
Frame MSP1N { Light SatyrLordRedMissile9 }
Frame MSP1O { Light SatyrLordRedMissile10 }
Frame MSP1P { Light SatyrLordRedMissile11 }
}

]]

local GL_LIGHTS =
[[
//Dynamic Lights

PointLight WhiteLight
{
  color 0.85 0.9 1
  size 128
  offset 0 -48 0
}

PointLight RedLight
{
  color 1 0 0
  size 128
  offset 0 -48 0
}

PointLight YellowLight
{
  color 1 0.8 0
  size 128
  offset 0 -48 0
}

PointLight OrangeLight
{
  color 1 0.5 0
  size 128
  offset 0 -48 0
}

PointLight BlueLight
{
  color 0.1 0.1 1
  size 128
  offset 0 -48 0
}

PointLight GreenLight
{
  color 0 0.8 0
  size 128
  offset 0 -48 0
}

PointLight BeigeLight
{
  color 1 0.8 0.5
  size 128
  offset 0 -48 0
}

PointLight PurpleLight
{
  color 0.7 0 0.95
  size 128
  offset 0 -48 0
}

object ObLightWhite
{
  frame CAND { light WhiteLight }
}

object ObLightRed
{
  frame CAND { light RedLight }
}

object obLightOrange
{
  frame CAND { light OrangeLight }
}

object obLightYellow
{
  frame CAND { light YellowLight }
}

object obLightBlue
{
  frame CAND { light BlueLight }
}

object obLightGreen
{
  frame CAND { light GreenLight }
}

object ObLightBeige
{
  frame CAND { light BeigeLight }
}

object ObLightPurple
{
  frame CAND { light PurpleLight }
}

]]

local GL_667 =
[[
FlickerLight2 ArachnophyteWalk
{
color 1.0 0.8 0.2
size 48
secondarySize 56
interval 1
offset 0 40 0
}

FlickerLight2 ArachnophyteAttack
{
color 1.0 0.8 0.2
size 56
secondarySize 64
interval 1
offset 0 80 0
}

FlickerLight2 ArachnophyteDeath1
{
color 1.0 0.8 0.2
size 52
secondarySize 56
interval 0.5
offset 0 40 0
}

FlickerLight2 ArachnophyteDeath2
{
color 1.0 0.8 0.2
size 60
secondarySize 64
interval 0.5
offset 0 40 0
}

FlickerLight2 ArachnophyteDeath3
{
color 1.0 0.8 0.2
size 76
secondarySize 80
interval 0.5
offset 0 40 0
}

FlickerLight2 ArachnophyteDeath4
{
color 1.0 0.8 0.2
size 72
secondarySize 76
interval 0.5
offset 0 40 0
}

FlickerLight2 ArachnophyteDeath5
{
color 1.0 0.8 0.2
size 64
secondarySize 68
interval 0.5
offset 0 40 0
}

PointLight ArachnophyteDeath6
{
color 1.0 0.8 0.2
size 50
}

Object Arachnophyte
{
Frame APYTA { Light ArachnophyteWalk }
Frame APYTB { Light ArachnophyteWalk }
Frame APYTC { Light ArachnophyteAttack }
Frame APYTD { Light ArachnophyteAttack }
Frame APYTE { Light ArachnophyteDeath1 }
Frame APYTF { Light ArachnophyteDeath2 }
Frame APYTG { Light ArachnophyteDeath3 }
Frame APYTH { Light ArachnophyteDeath4 }
Frame APYTI { Light ArachnophyteDeath5 }
Frame APYTJ { Light ArachnophyteDeath6 }
}

//BFG
Pointlight DCBMiss1
{
Color 0.0 1.0 0.0
Size 40
}

Pointlight DCBMiss12
{
Color 0.0 1.0 0.0
Size 48
}

Pointlight DCBMiss13
{
Color 0.0 0.9 0.0
Size 44
}

Pointlight DCBMiss14
{
Color 0.0 0.8 0.0
Size 40
}

Pointlight DCBMiss15
{
Color 0.0 0.7 0.0
Size 36
}

Pointlight DCBMiss16
{
Color 0.0 0.6 0.0
Size 32
}

Pointlight DCBMiss17
{
Color 0.0 0.5 0.0
Size 28
}

Pointlight DCBMiss18
{
Color 0.0 0.4 0.0
Size 24
}

Pointlight DCBMiss19
{
Color 0.0 0.3 0.0
Size 20
}

Pointlight DCBMiss110
{
Color 0.0 0.2 0.0
Size 16
}

Pointlight DCBMiss111
{
Color 0.0 0.1 0.0
Size 12
}

Object QueenBFG
{
Frame CBTSA { Light DCBMiss1 }
Frame CBTSB { Light DCBMiss1 }
Frame CBTSC { Light DCBMiss1 }
Frame CBTSD { Light DCBMiss1 }
Frame CBTSE { Light DCBMiss1 }
Frame CBTSF { Light DCBMiss1 }
Frame CBTSG { Light DCBMiss1 }
Frame CBTSH { Light DCBMiss1 }
Frame CBTSI { Light DCBMiss1 }
Frame CBTSJ { Light DCBMiss1 }
Frame CBTSK { Light DCBMiss12 }
Frame CBTSL { Light DCBMiss13 }
Frame CBTSM { Light DCBMiss14 }
Frame CBTSN { Light DCBMiss15 }
Frame CBTSO { Light DCBMiss16 }
Frame CBTSP { Light DCBMiss17 }
Frame CBTSQ { Light DCBMiss18 }
Frame CBTSR { Light DCBMiss19 }
Frame CBTSS { Light DCBMiss110 }
Frame CBTST { Light DCBMiss111 }
Frame CBTSU { Light DCBMiss111 }
Frame CBTSV { Light DCBMiss111 }
Frame CBTSW { Light DCBMiss111 }
}

//Note: the lights for the "ZWAVE" particle trail can cause a lot of slowdown.  Use at your discretion.
Pointlight ZWAVE_01
{
	Color 0.2 0.0 0.2
	Size 25
}

Pointlight ZWAVE_02
{
	Color 0.2 0.0 0.2
	Size 35
}

Pointlight ZWAVE_03
{
	Color 0.2 0.0 0.2
	Size 45
}

Pointlight ZWAVE_04
{
	Color 0.2 0.0 0.2
	Size 55
}

Pointlight ZWAVE_05
{
	Color 0.2 0.0 0.2
	Size 65
}

Pointlight ZWAVE_06
{
	Color 0.2 0.0 0.2
	Size 75
}

Pointlight ZWAVE_07
{
	Color 0.2 0.0 0.2
	Size 85
}

Pointlight ZWAVE_08
{
	Color 0.2 0.0 0.2
	Size 105
}

Pointlight ZWAVE_09
{
	Color 0.2 0.0 0.2
	Size 115
}

Pointlight ZWAVE_10
{
	Color 0.2 0.0 0.2
	Size 125
}

Pointlight ZWAVE_11
{
	Color 0.2 0.0 0.2
	Size 135
}

Pointlight ZWAVE_12
{
	Color 0.2 0.0 0.2
	Size 145
}

Pointlight ZWAVE_13
{
	Color 0.2 0.0 0.2
	Size 155
}

Pointlight ZWAVE_14
{
	Color 0.2 0.0 0.2
	Size 175
}

Pointlight ZWAVE_15
{
	Color 0.2 0.0 0.2
	Size 195
}

Pointlight ZWAVE_16
{
	Color 0.2 0.0 0.2
	Size 205
}

Object ZWAVE
{
	frame BLSTA { light ZWAVE_01 }
	frame BLSTB { light ZWAVE_02 }
	frame BLSTC { light ZWAVE_03 }
	frame BLSTD { light ZWAVE_04 }
	frame BLSTE { light ZWAVE_05 }
	frame BLSTF { light ZWAVE_06 }
	frame BLSTG { light ZWAVE_07 }
	frame BLSTH { light ZWAVE_08 }
	frame BLSTI { light ZWAVE_09 }
	frame BLSTJ { light ZWAVE_10 }
	frame BLSTK { light ZWAVE_11 }
	frame BLSTL { light ZWAVE_12 }
	frame BLSTM { light ZWAVE_13 }
	frame BLSTN { light ZWAVE_14 }
	frame BLSTO { light ZWAVE_15 }
	frame BLSTP { light ZWAVE_16 }
}


//Energy shots
pointlight QUEENPLASMA
{
    color 0.0 1.0 0.1
    size 64
}

flickerlight QUEENPLASMA_X1
{
    color 0.0 1.0 0.0
    size 48
    secondarySize 56
    chance 0.4
}

flickerlight QUEENPLASMA_X2
{
    color 0.0 0.8 0.0
    size 32
    secondarySize 40
    chance 0.4
}

flickerlight QUEENPLASMA_X3
{
    color 0.0 0.5 0.0
    size 16
    secondarySize 24
    chance 0.4
}


object QueenPlasmaBlast
{
    frame EBLTG { light QUEENPLASMA }
    frame EBLTH { light QUEENPLASMA }

    frame EBLTI { light QUEENPLASMA_X1 }
    frame EBLTJ { light QUEENPLASMA_X2 }
    frame EBLTK { light QUEENPLASMA_X2 }
}

object QueenPainPlasmaBlast
{
    frame EBLTG { light QUEENPLASMA }
    frame EBLTH { light QUEENPLASMA }

    frame EBLTI { light QUEENPLASMA_X1 }
    frame EBLTJ { light QUEENPLASMA_X2 }
    frame EBLTK { light QUEENPLASMA_X2 }
}

//Note: the lights for the "QueenPlasmaBlastTrail" particle trail can cause a lot of slowdown.  Use at your discretion.
flickerlight QUEENPLASMATRAIL_1
{
	color 0.0 0.4 0.1
	size 40
	secondarySize 48
	chance 0.6
}

flickerlight QUEENPLASMATRAIL_2
{
	color 0.0 0.3 0.1
	size 32
	secondarySize 40
	chance 0.6
}

flickerlight QUEENPLASMATRAIL_3
{
	color 0.0 0.2 0.0
	size 24
	secondarySize 32
	chance 0.6
}

object QueenPlasmaBlastTrail
{
	frame EBLTA { light QUEENPLASMATRAIL_1 }
	frame EBLTB { light QUEENPLASMATRAIL_2 }
	frame EBLTC { light QUEENPLASMATRAIL_2 }
	frame EBLTD { light QUEENPLASMATRAIL_3 }
	frame EBLTE { light QUEENPLASMATRAIL_3 }
	frame EBLTF { light QUEENPLASMATRAIL_3 }
}

BrightMap Sprite BFGZA1
{
Map BMBFGZA1
DisableFullBright
}

BrightMap Sprite BFGZA2
{
Map BMBFGZA2
DisableFullBright
}

BrightMap Sprite BFGZA3
{
Map BMBFGZA3
DisableFullBright
}

BrightMap Sprite BFGZA6
{
Map BMBFGZA6
DisableFullBright
}

BrightMap Sprite BFGZA7
{
Map BMBFGZA7
DisableFullBright
}

BrightMap Sprite BFGZA8
{
Map BMBFGZA8
DisableFullBright
}

BrightMap Sprite BFGZB1
{
Map BMBFGZB1
DisableFullBright
}

BrightMap Sprite BFGZB2
{
Map BMBFGZB2
DisableFullBright
}

BrightMap Sprite BFGZB3
{
Map BMBFGZB3
DisableFullBright
}

BrightMap Sprite BFGZB6
{
Map BMBFGZB6
DisableFullBright
}

BrightMap Sprite BFGZB7
{
Map BMBFGZB7
DisableFullBright
}

BrightMap Sprite BFGZB8
{
Map BMBFGZB8
DisableFullBright
}

BrightMap Sprite BFGZC1
{
Map BMBFGZC1
DisableFullBright
}

BrightMap Sprite BFGZC2
{
Map BMBFGZC2
DisableFullBright
}

BrightMap Sprite BFGZC3
{
Map BMBFGZC3
DisableFullBright
}

BrightMap Sprite BFGZC6
{
Map BMBFGZC6
DisableFullBright
}

BrightMap Sprite BFGZC7
{
Map BMBFGZC7
DisableFullBright
}

BrightMap Sprite BFGZC8
{
Map BMBFGZC8
DisableFullBright
}

BrightMap Sprite BFGZD1
{
Map BMBFGZD1
DisableFullBright
}

BrightMap Sprite BFGZD2
{
Map BMBFGZD2
DisableFullBright
}

BrightMap Sprite BFGZD6
{
Map BMBFGZD6
DisableFullBright
}

BrightMap Sprite BFGZD7
{
Map BMBFGZD7
DisableFullBright
}

BrightMap Sprite BFGZD8
{
Map BMBFGZD8
DisableFullBright
}

BrightMap Sprite BFGZE1
{
Map BMBFGZE1
DisableFullBright
}

BrightMap Sprite BFGZE2
{
Map BMBFGZE2
DisableFullBright
}

BrightMap Sprite BFGZE3
{
Map BMBFGZE3
DisableFullBright
}

BrightMap Sprite BFGZE6
{
Map BMBFGZE6
DisableFullBright
}

BrightMap Sprite BFGZE7
{
Map BMBFGZE7
DisableFullBright
}

BrightMap Sprite BFGZE8
{
Map BMBFGZE8
DisableFullBright
}

BrightMap Sprite BFGZF1
{
Map BMBFGZF1
DisableFullBright
}

BrightMap Sprite BFGZF2
{
Map BMBFGZF2
DisableFullBright
}

BrightMap Sprite BFGZF3
{
Map BMBFGZF3
DisableFullBright
}

BrightMap Sprite BFGZF4
{
Map BMBFGZF4
DisableFullBright
}

BrightMap Sprite BFGZF5
{
Map BMBFGZF5
DisableFullBright
}

BrightMap Sprite BFGZF6
{
Map BMBFGZF6
DisableFullBright
}

BrightMap Sprite BFGZF7
{
Map BMBFGZF7
DisableFullBright
}

BrightMap Sprite BFGZF8
{
Map BMBFGZF8
DisableFullBright
}

BrightMap Sprite BFGZG1
{
Map BMBFGZG1
DisableFullBright
}

BrightMap Sprite BFGZG2
{
Map BMBFGZG2
DisableFullBright
}

BrightMap Sprite BFGZG3
{
Map BMBFGZG3
DisableFullBright
}

Pointlight CyberBaronRocket1
{
Color 1.0 0.7 0.0
Size 56
}

Flickerlight CyberBaronRocket2
{
Color 1.0 0.7 0.0
Size 64
SecondarySize 72
Chance 0.3
}

Flickerlight CyberBaronRocket3
{
Color 0.5 0.1 0.0
Size 80
SecondarySize 88
Chance 0.3
}

Flickerlight CyberBaronRocket4
{
Color 0.3 0.0 0.0
Size 96
SecondarySize 104
Chance 0.3
}

Object CyberAttack2
{
Frame MISLA { Light CyberBaronRocket1 }
Frame MISLB { Light CyberBaronRocket2 }
Frame MISLC { Light CyberBaronRocket3 }
Frame MISLD { Light CyberBaronRocket4 }
}

Pointlight CyberBaronExplode1
{
Color 0.7 0.0 0.0
Size 32
Offset 0 16 0
}

Pointlight CyberBaronExplode2
{
Color 1.0 0.0 0.0
Size 96
Offset 0 24 0
}

Pointlight CyberBaronExplode3
{
Color 0.8 0.0 0.0
Size 64
Offset 0 24 0
}

Pointlight CyberBaronExplode4
{
Color 0.3 0.0 0.0
Size 32
Offset 0 24 0
}

Object CyberBaron
{
Frame CBOSK { Light CyberBaronExplode1 }
Frame CBOSL { Light CyberBaronExplode2 }
Frame CBOSM { Light CyberBaronExplode3 }
Frame CBOSN { Light CyberBaronExplode4 }
}

//UnMancubus GLDefs by Ozymandias81
Pointlight UNMNBALRT
{
Color 1.0 0.2 0.0
Size 35
Offset 0 48 32
}

Pointlight UNMNBALLF
{
Color 1.0 0.2 0.0
Size 35
Offset 0 48 -32
}

PointLight UNMNRALR
{
color 1.0 0.0 0.0
size 35
offset 0 48 32
}

PointLight UNMNRALL
{
color 1.0 0.0 0.0
size 35
offset 0 48 -32
}

//Brightmaps
brightmap sprite UNMBD1
{
map BMUNMBD1
disablefullbright
}

brightmap sprite UNMBD2D8
{
map BMUNMBD2
disablefullbright
}

brightmap sprite UNMBD3D7
{
map BMUNMBD3
disablefullbright
}

brightmap sprite UNMBD4D6
{
map BMUNMBD4
disablefullbright
}

brightmap sprite UNMBD5
{
map BMUNMBD5
disablefullbright
}

brightmap sprite UNMBE1
{
map BMUNMBE1
disablefullbright
}

brightmap sprite UNMBE2E8
{
map BMUNMBE2
disablefullbright
}

brightmap sprite UNMBE3E7
{
map BMUNMBE3
disablefullbright
}

brightmap sprite UNMBE4E6
{
map BMUNMBE4
disablefullbright
}

brightmap sprite UNMBE5
{
map BMUNMBE5
disablefullbright
}
FlickerLight2 Terror
{
Color 1.0 1.0 1.0
Subtractive 1
Size 56
SecondarySize 72
Interval 2.0
Offset 0 20 0
}

PointLight TerrorExplode1
{
Color 1.0 1.0 1.0
Subtractive 1
Size 72
Offset 0 20 0
}

PointLight TerrorExplode2
{
Color 1.0 1.0 1.0
Subtractive 1
Size 96
Offset 0 20 0
}

PointLight TerrorExplode3
{
Color 1.0 1.0 1.0
Subtractive 1
Size 88
Offset 0 20 0
}

PointLight TerrorExplode4
{
Color 1.0 1.0 1.0
Subtractive 1
Size 48
Offset 0 20 0
}

Object Terror
{
Frame TERRA { Light Terror }
Frame TERRB { Light Terror }
Frame TERRC { Light Terror }
Frame TERRD { Light Terror }
Frame TERRE { Light Terror }
Frame TERRF { Light Terror }
Frame TERRG { Light Terror }
Frame TERRH { Light TerrorExplode1 }
Frame TERRI { Light TerrorExplode2 }
Frame TERRJ { Light TerrorExplode3 }
Frame TERRK { Light TerrorExplode4 }
}

PulseLight ForgottenOne1
{
Color 1.0 0.5 0.0
Size 42
SecondarySize 50
Interval 2.5
Offset 0 8 0
}

PointLight ForgottenOne2
{
Color 1.0 0.3 0.0
Size 48
}

PointLight ForgottenOne3
{
Color 1.0 0.1 0.0
Size 52
}

PointLight ForgottenOne4
{
Color 0.7 0.0 0.0
Size 42
}

PointLight ForgottenOne5
{
Color 0.4 0.0 0.0
Size 32
}

Object ForgottenOne
{
Frame FRGOA { Light ForgottenOne1 }
Frame FRGOB { Light ForgottenOne1 }
Frame FRGOC { Light ForgottenOne1 }
Frame FRGOD { Light ForgottenOne1 }
Frame FRGOE { Light ForgottenOne1 }
Frame FRGOF { Light ForgottenOne1 }
Frame FRGOG { Light ForgottenOne2 }
Frame FRGOH { Light ForgottenOne3 }
Frame FRGOI { Light ForgottenOne4 }
Frame FRGOJ { Light ForgottenOne5 }
}

BrightMap Sprite SRG2A1C1
{
Map BMSRG2A1
DisableFullBright
}

BrightMap Sprite SRG2A2C8
{
Map BMSRG2A2
DisableFullBright
}

BrightMap Sprite SRG2A3C7
{
Map BMSRG2A3
DisableFullBright
}

BrightMap Sprite SRG2B1D1
{
Map BMSRG2B1
DisableFullBright
}

BrightMap Sprite SRG2B2D8
{
Map BMSRG2B2
DisableFullBright
}

BrightMap Sprite SRG2B3D7
{
Map BMSRG2B3
DisableFullBright
}

BrightMap Sprite SRG2C2A8
{
Map BMSRG2C2
DisableFullBright
}

BrightMap Sprite SRG2C3A7
{
Map BMSRG2C3
DisableFullBright
}

BrightMap Sprite SRG2D2B8
{
Map BMSRG2D2
DisableFullBright
}

BrightMap Sprite SRG2D3B7
{
Map BMSRG2D3
DisableFullBright
}

BrightMap Sprite SRG2E1
{
Map BMSRG2E1
DisableFullBright
}

BrightMap Sprite SRG2E2
{
Map BMSRG2E2
DisableFullBright
}

BrightMap Sprite SRG2E3
{
Map BMSRG2E3
DisableFullBright
}

BrightMap Sprite SRG2E7
{
Map BMSRG2E7
DisableFullBright
}

BrightMap Sprite SRG2E8
{
Map BMSRG2E8
DisableFullBright
}

BrightMap Sprite SRG2F1
{

Map BMSRG2F1
DisableFullBright
}

BrightMap Sprite SRG2F2
{
Map BMSRG2F2
DisableFullBright
}

BrightMap Sprite SRG2F3
{
Map BMSRG2F3
DisableFullBright
}

BrightMap Sprite SRG2F7
{
Map BMSRG2F7
DisableFullBright
}

BrightMap Sprite SRG2F8
{
Map BMSRG2F8
DisableFullBright
}

BrightMap Sprite SRG2G1
{
Map BMSRG2G1
DisableFullBright
}

BrightMap Sprite SRG2G2
{
Map BMSRG2G2
DisableFullBright
}

BrightMap Sprite SRG2G3
{
Map BMSRG2G3
DisableFullBright
}

BrightMap Sprite SRG2G7
{
Map BMSRG2G7
DisableFullBright
}

BrightMap Sprite SRG2G8
{
Map BMSRG2G8
DisableFullBright
}

BrightMap Sprite SRG2H1
{
Map BMSRG2H1
DisableFullBright
}

BrightMap Sprite SRG2H2
{
Map BMSRG2H2
DisableFullBright
}

BrightMap Sprite SRG2H3
{
Map BMSRG2H3
DisableFullBright
}

BrightMap Sprite SRG2H4
{
Map BMSRG2H4
DisableFullBright
}

BrightMap Sprite SRG2H8
{
Map BMSRG2H8
DisableFullBright
}

Object CGunSpider
{
Frame CSPIG { Light ZOMBIEATK }
Frame CSPIH { Light ZOMBIEATK }
}

BrightMap Sprite CSPIA1D1
{
Map BMBLACK
DisableFullBright
}

BrightMap Sprite CSPIA2A8
{
Map BMBLACK
DisableFullBright
}

BrightMap Sprite CSPIA3A7
{
Map BMBLACK
DisableFullBright
}

BrightMap Sprite CSPIA4A6
{
Map BMBLACK
DisableFullBright
}

BrightMap Sprite CSPIA5D5
{
Map BMBLACK
DisableFullBright
}

BrightMap Sprite CSPIG1
{
Map BMCSPIG1
DisableFullBright
}

BrightMap Sprite CSPIG2G8
{
Map BMCSPIG2
DisableFullBright
}

BrightMap Sprite CSPIG3G7
{
Map BMBLACK
DisableFullBright
}

BrightMap Sprite CSPIG4G6
{
Map BMBLACK
DisableFullBright
}

BrightMap Sprite CSPIG5
{
Map BMBLACK
DisableFullBright
}

BrightMap Sprite CSPIH1
{
Map BMCSPIH1
DisableFullBright
}

BrightMap Sprite CSPIH2H8
{
Map BMCSPIH2
DisableFullBright
}

BrightMap Sprite CSPIH3H7
{
Map BMCSPIH3
DisableFullBright
}

BrightMap Sprite CSPIH4H6
{
Map BMCSPIH4
DisableFullBright
}

BrightMap Sprite CSPIH5
{
Map BMCSPIH5
DisableFullBright
}

Pointlight BruiserMissile
{
Color 1.0 0.5 0.0
Size 25
}

Pointlight BruiserMissile2
{
Color 1.0 0.5 0.0
Size 35
}

Pointlight BruiserMissile3
{
Color 0.7 0.3 0.0
Size 25
}

Pointlight BruiserMissile4
{
Color 0.4 0.1 0.0
Size 20
}

Pointlight CybruiserDeath1
{
Color 1.0 0.5 0.0
Size 35
}

Pointlight CybruiserDeath2
{
Color 1.0 0.5 0.0
Size 40
}

Pointlight CybruiserDeath3
{
Color 0.9 0.4 0.0
Size 45
}

Pointlight CybruiserDeath4
{
Color 0.7 0.2 0.0
Size 35
}

Pointlight CybruiserDeath5
{
Color 0.5 0.1 0.0
Size 30
}

Pointlight CybruiserDeath6
{
Color 0.3 0.0 0.0
Size 25
}

Pointlight CybruiserDeath7
{
Color 0.1 0.0 0.0
Size 20
}

Pointlight CybruiserDeath8
{
Color 0.1 0.0 0.0
Size 15
}

Object Cybruiser
{
Frame BRUSK { Light CybruiserDeath1 }
Frame BRUSL { Light CybruiserDeath2 }
Frame BRUSM { Light CybruiserDeath3 }
Frame BRUSN { Light CybruiserDeath4 }
Frame BRUSO { Light CybruiserDeath5 }
Frame BRUSP { Light CybruiserDeath6 }
Frame BRUSQ { Light CybruiserDeath7 }
Frame BRUSR { Light CybruiserDeath8 }
}

Object BruiserMissile
{
Frame FBRSA { Light BruiserMissile }
Frame BAL3C { Light BruiserMissile2 }
Frame BAL3D { Light BruiserMissile3 }
Frame BAL3E { Light BruiserMissile4 }
}

BrightMap Sprite BRUSA1
{
Map BMBRUSA1
DisableFullBright
}

BrightMap Sprite BRUSA2
{
Map BMBRUSA2
DisableFullBright
}

BrightMap Sprite BRUSA7
{
Map BMBRUSA7
DisableFullBright
}

BrightMap Sprite BRUSA8
{
Map BMBRUSA8
DisableFullBright
}

BrightMap Sprite BRUSB1
{
Map BMBRUSB1
DisableFullBright
}

BrightMap Sprite BRUSB2
{
Map BMBRUSB2
DisableFullBright
}

BrightMap Sprite BRUSB7
{
Map BMBRUSB7
DisableFullBright
}

BrightMap Sprite BRUSB8
{
Map BMBRUSB8
DisableFullBright
}

BrightMap Sprite BRUSC1
{
Map BMBRUSc1
DisableFullBright
}

BrightMap Sprite BRUSC2
{
Map BMBRUSc2
DisableFullBright
}

BrightMap Sprite BRUSC3
{
Map BMBRUSc3
DisableFullBright
}

BrightMap Sprite BRUSC7
{
Map BMBRUSc7
DisableFullBright
}

BrightMap Sprite BRUSC8
{
Map BMBRUSc8
DisableFullBright
}

BrightMap Sprite BRUSD1
{
Map BMBRUSD1
DisableFullBright
}

BrightMap Sprite BRUSD2
{
Map BMBRUSD2
DisableFullBright
}

BrightMap Sprite BRUSD3
{
Map BMBRUSD3
DisableFullBright
}

BrightMap Sprite BRUSD7
{
Map BMBRUSD7
DisableFullBright
}

BrightMap Sprite BRUSD8
{
Map BMBRUSD8
DisableFullBright
}

BrightMap Sprite BRUSE1
{
Map BMBRUSE1
DisableFullBright
}

BrightMap Sprite BRUSE2
{
Map BMBRUSE2
DisableFullBright
}

BrightMap Sprite BRUSE3
{
Map BMBRUSE3
DisableFullBright
}

BrightMap Sprite BRUSE7
{
Map BMBRUSE7
DisableFullBright
}

BrightMap Sprite BRUSE8
{
Map BMBRUSE8
DisableFullBright
}

BrightMap Sprite BRUSF1
{
Map BMBRUSF1
DisableFullBright
}

BrightMap Sprite BRUSF2
{
Map BMBRUSF2
DisableFullBright
}

BrightMap Sprite BRUSF3
{
Map BMBRUSF3
DisableFullBright
}

BrightMap Sprite BRUSF4
{
Map BMBRUSF4
DisableFullBright
}

BrightMap Sprite BRUSF5
{
Map BMBRUSF5
DisableFullBright
}

BrightMap Sprite BRUSF6
{
Map BMBRUSF6
DisableFullBright
}

BrightMap Sprite BRUSF7
{
Map BMBRUSF7
DisableFullBright
}

BrightMap Sprite BRUSF8
{
Map BMBRUSF8
DisableFullBright
}

BrightMap Sprite BRUSG1
{
Map BMBRUSG1
DisableFullBright
}

BrightMap Sprite BRUSG2
{
Map BMBRUSG2
DisableFullBright
}

BrightMap Sprite BRUSG3
{
Map BMBRUSG3
DisableFullBright
}

BrightMap Sprite BRUSG8
{
Map BMBRUSG8
DisableFullBright
}

BrightMap Sprite BRUSH1
{
Map BMBRUSH1
DisableFullBright
}

BrightMap Sprite BRUSH2
{
Map BMBRUSH2
DisableFullBright
}

BrightMap Sprite BRUSH7
{
Map BMBRUSH7
DisableFullBright
}

BrightMap Sprite BRUSH8
{
Map BMBRUSH8
DisableFullBright
}

BrightMap Sprite BRUSI1
{
Map BMBRUSI1
DisableFullBright
}

BrightMap Sprite BRUSI2
{
Map BMBRUSI2
DisableFullBright
}

BrightMap Sprite BRUSI7
{
Map BMBRUSI7
DisableFullBright
}

BrightMap Sprite BRUSI8
{
Map BMBRUSI8
DisableFullBright
}

BrightMap Sprite BRUSJ1
{
Map BMBRUSJ1
DisableFullBright
}

BrightMap Sprite BRUSJ2
{
Map BMBRUSJ2
DisableFullBright
}

BrightMap Sprite BRUSJ3
{
Map BMBRUSJ3
DisableFullBright
}

BrightMap Sprite BRUSJ7
{
Map BMBRUSJ7
DisableFullBright
}

BrightMap Sprite BRUSJ8
{
Map BMBRUSJ8
DisableFullBright
}

BrightMap Sprite BRUSK0
{
Map BMBRUSK0
DisableFullBright
}

BrightMap Sprite BRUSL0
{
Map BMBRUSL0
DisableFullBright
}

BrightMap Sprite BRUSM0
{
Map BMBRUSM0
DisableFullBright
}

BrightMap Sprite BRUSN0
{
Map BMBRUSN0
DisableFullBright
}

BrightMap Sprite BRUSO0
{
Map BMBRUSO0
DisableFullBright
}

BrightMap Sprite BRUSP0
{
Map BMBRUSP0
DisableFullBright
}

BrightMap Sprite BRUSQ0
{
Map BMBRUSQ0
DisableFullBright
}

BrightMap Sprite BRUSR0
{
Map BMBRUSR0
DisableFullBright
}

BrightMap Sprite FBRSA1
{
Map BMFBRSA1
DisableFullBright
}

BrightMap Sprite FBRSA2A8
{
Map BMFBRSA2
DisableFullBright
}

BrightMap Sprite FBRSA3A7
{
Map BMFBRSA3
DisableFullBright
}

BrightMap Sprite FBRSA4A6
{
Map BMFBRSA4
DisableFullBright
}

FlickerLight2 QuadShotgunZombie
{
Color 1.0 0.8 0.2
Size 48
SecondarySize 56
Interval 1
Offset 0 28 0
}

Object QuadShotgunZombie
{
Frame QSZMF { Light QuadShotgunZombie }
}

PointLight RocketImplight1
{
Color 1.0 1.0 0.0
Size 84
}

Object RocketImp
{
Frame RIMPV { Light RocketImplight1 }
}

PointLight RocketImplight2
{
Color 1.0 1.0 0.0
Size 84
}

Object RocketImp
{
Frame RIMPW { Light RocketImplight2 }
}

///////////
pointlight IMPROCKET
{
    color 1.0 0.7 0.0
    size 36
}

flickerlight IMPROCKET_X1
{
    color 1.0 0.7 0.0
    size 44
    secondarySize 72
    chance 0.3
}

flickerlight IMPROCKET_X2
{
    color 0.5 0.1 0.0
    size 60
    secondarySize 88
    chance 0.3
}

flickerlight IMPROCKET_X3
{
    color 0.3 0.0 0.0
    size 76
    secondarySize 104
    chance 0.3
}

object ImpRocket
{
    frame IMISA { light IMPROCKET    }

    frame IMISB { light IMPROCKET_X1 }
    frame IMISC { light IMPROCKET_X2 }
    frame IMISD { light IMPROCKET_X3 }
}

PointLight RocketImplight1
{
Color 1.0 1.0 0.0
Size 84
}

Object RocketImp
{
Frame RIMPV { Light RocketImplight1 }
}

PointLight RocketImplight2
{
Color 1.0 1.0 0.0
Size 84
}

Object RocketImp
{
Frame RIMPW { Light RocketImplight2 }
}

///////////
pointlight IMPROCKET
{
    color 1.0 0.7 0.0
    size 36
}

flickerlight IMPROCKET_X1
{
    color 1.0 0.7 0.0
    size 44
    secondarySize 72
    chance 0.3
}

flickerlight IMPROCKET_X2
{
    color 0.5 0.1 0.0
    size 60
    secondarySize 88
    chance 0.3
}

flickerlight IMPROCKET_X3
{
    color 0.3 0.0 0.0
    size 76
    secondarySize 104
    chance 0.3
}

object ImpRocket
{
    frame IMISA { light IMPROCKET    }

    frame IMISB { light IMPROCKET_X1 }
    frame IMISC { light IMPROCKET_X2 }
    frame IMISD { light IMPROCKET_X3 }
}


BrightMap Sprite MAUDA1C1
{
Map BMMAUDA1
DisableFullBright
}

BrightMap Sprite MAUDA2C8
{
Map BMMAUDA2
DisableFullBright
}

BrightMap Sprite MAUDA3C7
{
Map BMMAUDA3
DisableFullBright
}

BrightMap Sprite MAUDA7C3
{
Map BMMAUDA7
DisableFullBright
}

BrightMap Sprite MAUDA8C2
{
Map BMMAUDA8
DisableFullBright
}

BrightMap Sprite MAUDB1D1
{
Map BMMAUDB1
DisableFullBright
}

BrightMap Sprite MAUDB2D8
{
Map BMMAUDB2
DisableFullBright
}

BrightMap Sprite MAUDB3D7
{
Map BMMAUDB3
DisableFullBright
}

BrightMap Sprite MAUDB7D3
{
Map BMMAUDB7
DisableFullBright
}

BrightMap Sprite MAUDB8D2
{
Map BMMAUDB8
DisableFullBright
}

BrightMap Sprite MAUDE1
{
Map BMMAUDE1
DisableFullBright
}

BrightMap Sprite MAUDE2
{
Map BMMAUDE2
DisableFullBright
}

BrightMap Sprite MAUDE8
{
Map BMMAUDE8
DisableFullBright
}

BrightMap Sprite MAUDF1
{
Map BMMAUDF1
DisableFullBright
}

BrightMap Sprite MAUDF2
{
Map BMMAUDF2
DisableFullBright
}

BrightMap Sprite MAUDF8
{
Map BMMAUDF8
DisableFullBright
}

BrightMap Sprite MAUDG1
{
Map BMMAUDG1
DisableFullBright
}

BrightMap Sprite MAUDG2
{
Map BMMAUDG2
DisableFullBright
}

BrightMap Sprite MAUDG8
{
Map BMMAUDG8
DisableFullBright
}

BrightMap Sprite MAUDH1
{
Map BMMAUDH1
DisableFullBright
}

BrightMap Sprite MAUDH2
{
Map BMMAUDH2
DisableFullBright
}

BrightMap Sprite MAUDH3
{
Map BMMAUDH3
DisableFullBright
}

BrightMap Sprite MAUDH4
{
Map BMMAUDH4
DisableFullBright
}

BrightMap Sprite MAUDH8
{
Map BMMAUDH8
DisableFullBright
}

BrightMap Sprite MAUDI0
{
Map BMMAUDI0
DisableFullBright
}


BrightMap Sprite LOHSA1
{
Map BMLOHSA1
DisableFullBright
}

BrightMap Sprite LOHSA2A8
{
Map BMLOHSA2
DisableFullBright
}

BrightMap Sprite LOHSA3A7
{
Map BMLOHSA3
DisableFullBright
}

BrightMap Sprite LOHSA4A6
{
Map BMLOHSA4
DisableFullBright
}

BrightMap Sprite LOHSA5
{
Map BMLOHSA5
DisableFullBright
}

BrightMap Sprite LOHSB1
{
Map BMLOHSB1
DisableFullBright
}

BrightMap Sprite LOHSB2B8
{
Map BMLOHSB2
DisableFullBright
}

BrightMap Sprite LOHSB3B7
{
Map BMLOHSB3
DisableFullBright
}

BrightMap Sprite LOHSB4B6
{
Map BMLOHSB4
DisableFullBright
}

BrightMap Sprite LOHSB5
{
Map BMLOHSB5
DisableFullBright
}

BrightMap Sprite LOHSC1
{
Map BMLOHSC1
DisableFullBright
}

BrightMap Sprite LOHSC2C8
{
Map BMLOHSC2
DisableFullBright
}

BrightMap Sprite LOHSC3C7
{
Map BMLOHSC3
DisableFullBright
}

BrightMap Sprite LOHSC4C6
{
Map BMLOHSC4
DisableFullBright
}

BrightMap Sprite LOHSC5
{
Map BMLOHSC5
DisableFullBright
}

BrightMap Sprite LOHSD1
{
Map BMLOHSD1
DisableFullBright
}

BrightMap Sprite LOHSD2D8
{
Map BMLOHSD2
DisableFullBright
}

BrightMap Sprite LOHSD3D7
{
Map BMLOHSD3
DisableFullBright
}

BrightMap Sprite LOHSD4D6
{
Map BMLOHSD4
DisableFullBright
}

BrightMap Sprite LOHSD5
{
Map BMLOHSD5
DisableFullBright
}

BrightMap Sprite LOHSE1
{
Map BMLOHSE1
DisableFullBright
}

BrightMap Sprite LOHSE2
{
Map BMLOHSE2
DisableFullBright
}

BrightMap Sprite LOHSE3
{
Map BMLOHSE3
DisableFullBright
}

BrightMap Sprite LOHSE4
{
Map BMLOHSE4
DisableFullBright
}

BrightMap Sprite LOHSE5
{
Map BMLOHSE5
DisableFullBright
}

BrightMap Sprite LOHSE6
{
Map BMLOHSE6
DisableFullBright
}

BrightMap Sprite LOHSE7
{
Map BMLOHSE7
DisableFullBright
}

BrightMap Sprite LOHSE8
{
Map BMLOHSE8
DisableFullBright
}

BrightMap Sprite LOHSF1
{
Map BMLOHSF1
DisableFullBright
}

BrightMap Sprite LOHSF2
{
Map BMLOHSF2
DisableFullBright
}

BrightMap Sprite LOHSF3
{
Map BMLOHSF3
DisableFullBright
}

BrightMap Sprite LOHSF4
{
Map BMLOHSF4
DisableFullBright
}

BrightMap Sprite LOHSF5
{
Map BMLOHSF5
DisableFullBright
}

BrightMap Sprite LOHSF6
{
Map BMLOHSF6
DisableFullBright
}

BrightMap Sprite LOHSF7
{
Map BMLOHSF7
DisableFullBright
}

BrightMap Sprite LOHSF8
{
Map BMLOHSF8
DisableFullBright
}

BrightMap Sprite LOHSG1
{
Map BMLOHSG1
DisableFullBright
}

BrightMap Sprite LOHSG2
{
Map BMLOHSG2
DisableFullBright
}

BrightMap Sprite LOHSG3
{
Map BMLOHSG3
DisableFullBright
}

BrightMap Sprite LOHSG4
{
Map BMLOHSG4
DisableFullBright
}

BrightMap Sprite LOHSG5
{
Map BMLOHSG5
DisableFullBright
}

BrightMap Sprite LOHSG6
{
Map BMLOHSG6
DisableFullBright
}

BrightMap Sprite LOHSG7
{
Map BMLOHSG7
DisableFullBright
}

BrightMap Sprite LOHSG8
{
Map BMLOHSG8
DisableFullBright
}

BrightMap Sprite LOHSH1
{
Map BMLOHSH1
DisableFullBright
}

BrightMap Sprite LOHSH2
{
Map BMLOHSH2
DisableFullBright
}

BrightMap Sprite LOHSH3
{
Map BMLOHSH3
DisableFullBright
}

BrightMap Sprite LOHSH4
{
Map BMLOHSH4
DisableFullBright
}

BrightMap Sprite LOHSH5
{
Map BMLOHSH5
DisableFullBright
}

BrightMap Sprite LOHSH6
{
Map BMLOHSH6
DisableFullBright
}

BrightMap Sprite LOHSH7
{
Map BMLOHSH7
DisableFullBright
}

BrightMap Sprite LOHSH8
{
Map BMLOHSH8
DisableFullBright
}

BrightMap Sprite LOHSI0
{
Map BMLOHSI0
DisableFullBright
}

BrightMap Sprite LOHSJ0
{
Map BMLOHSJ0
DisableFullBright
}

Pointlight CrackoBall1
{
Color 0.0 0.0 0.4
Size 40
}

Pointlight CrackoBall2
{
Color 0.9 0.0 0.5
Size 56
}

Pointlight CrackoBall3
{
Color 1.0 0.0 0.5
Size 64
}

Pointlight CrackoBall4
{
Color 0.5 0.0 0.1
Size 32
}

Object CrackodemonBall
{
Frame BAL9A { Light CrackoBall1 }
Frame BAL9B { Light CrackoBall1 }
Frame BAL9C { Light CrackoBall2 }
Frame BAL9D { Light CrackoBall3 }
Frame BAL9E { Light CrackoBall4 }
}

Flickerlight2 BlueLostSoul1
{
Color 0.0 0.0 0.5
Size 64
SecondarySize 80
Interval 1.4
}

Pointlight BlueLostSoul2
{
Color 0.0 0.0 0.5
Size 72
}

Pointlight BlueLostSoul3
{
Color 0.0 0.0 1.0
Size 96
}

Pointlight BlueLostSoul4
{
Color 0.0 0.0 0.7
Size 64
}

Pointlight BlueLostSoul5
{
Color 0.0 0.0 0.3
Size 40
}

Object BluSoul
{
Frame SKUDC { Light BlueLostSoul1 }
Frame SKUDD { Light BlueLostSoul1 }
Frame SKUDH { Light BlueLostSoul2 }
Frame SKUDI { Light BlueLostSoul3 }
Frame SKUDJ { Light BlueLostSoul4 }
Frame SKUDK { Light BlueLostSoul5 }
}

//Terminator

Pointlight TerminatorBlaster
{
Color 1.0 0.8 0.0
Size 40
}

Pointlight TerminatorBlaster2
{
Color 1.0 0.8 0.0
Size 44
}

Pointlight TerminatorBlaster3
{
Color 1.0 0.8 0.0
Size 48
}

Pointlight TerminatorBlaster4
{
Color 1.0 0.8 0.0
Size 44
}

Pointlight TerminatorBlaster5
{
Color 0.9 0.7 0.0
Size 40
}

Pointlight TerminatorBlaster6
{
Color 0.9 0.7 0.0
Size 38
}

Pointlight TerminatorBlaster7
{
Color 0.8 0.6 0.0
Size 36
}

Pointlight TerminatorBlaster8
{
Color 0.7 0.5 0.0
Size 34
}

Pointlight TerminatorBlaster9
{
Color 0.6 0.4 0.0
Size 32
}

Pointlight TerminatorBlaster10
{
Color 0.5 0.3 0.0
Size 30
}

Pointlight TerminatorBlaster11
{
Color 0.4 0.2 0.0
Size 28
}

Pointlight TerminatorBlaster12
{
Color 0.3 0.1 0.0
Size 26
}

Object TerminatorBlaster
{
Frame BLSTA { Light TerminatorBlaster }
Frame BLSTB { Light TerminatorBlaster2 }
Frame BLSTC { Light TerminatorBlaster3 }
Frame BLSTD { Light TerminatorBlaster4 }
Frame BLSTE { Light TerminatorBlaster5 }
Frame BLSTF { Light TerminatorBlaster6 }
Frame BLSTG { Light TerminatorBlaster7 }
Frame BLSTH { Light TerminatorBlaster8 }
Frame BLSTI { Light TerminatorBlaster9 }
Frame BLSTJ { Light TerminatorBlaster10 }
Frame BLSTK { Light TerminatorBlaster11 }
Frame BLSTL { Light TerminatorBlaster12 }
}

Pointlight RedStar
{
Color 1.0 0.0 0.0
Size 32
}

Pointlight RedStar2
{
Color 1.0 0.0 0.0
Size 36
}

Pointlight RedStar3
{
Color 1.0 0.0 0.0
Size 40
}

Pointlight RedStar4
{
Color 0.9 0.0 0.0
Size 36
}

Pointlight RedStar5
{
Color 0.9 0.0 0.0
Size 32
}

Pointlight RedStar6
{
Color 0.8 0.0 0.0
Size 30
}

Pointlight RedStar7
{
Color 0.8 0.0 0.0
Size 28
}

Pointlight RedStar8
{
Color 0.7 0.0 0.0
Size 26
}

Pointlight RedStar9
{
Color 0.6 0.0 0.0
Size 24
}

Pointlight RedStar10
{
Color 0.5 0.0 0.0
Size 22
}

Pointlight RedStar11
{
Color 0.4 0.0 0.0
Size 20
}

Pointlight RedStar12
{
Color 0.3 0.0 0.0
Size 18
}

Object RedStar
{
Frame STARA { Light RedStar }
Frame STARB { Light RedStar2 }
Frame STARC { Light RedStar3 }
Frame STARD { Light RedStar4 }
Frame STARE { Light RedStar5 }
Frame STARF { Light RedStar6 }
Frame STARG { Light RedStar7 }
Frame STARH { Light RedStar8 }
Frame STARI { Light RedStar9 }
Frame STARJ { Light RedStar10 }
Frame STARK { Light RedStar11 }
Frame STARL { Light RedStar12 }
}

Pointlight Redgrenade
{
Color 1.0 0.0 0.0
Size 24
}

Object Redgrenade
{
Frame TGNDA { Light Redgrenade }
Frame TGNDB { Light Redgrenade }
Frame TGNDC { Light Redgrenade }
}

Pointlight Grenadeblast1
{
Color 1.0 0.0 0.0
Size 36
}

Pointlight Grenadeblast2
{
Color 1.0 0.0 0.0
Size 40
}

Pointlight Grenadeblast3
{
Color 1.0 0.0 0.0
Size 44
}

Pointlight Grenadeblast4
{
Color 0.9 0.0 0.0
Size 40
}

Pointlight Grenadeblast5
{
Color 0.9 0.0 0.0
Size 36
}

Pointlight Grenadeblast6
{
Color 0.8 0.0 0.0
Size 34
}

Pointlight Grenadeblast7
{
Color 0.8 0.0 0.0
Size 32
}

Pointlight Grenadeblast8
{
Color 0.7 0.0 0.0
Size 30
}

Pointlight Grenadeblast9
{
Color 0.6 0.0 0.0
Size 28
}

Pointlight Grenadeblast10
{
Color 0.5 0.0 0.0
Size 26
}

Pointlight Grenadeblast11
{
Color 0.4 0.0 0.0
Size 24
}

Object Grenadeblast
{
Frame TGBLA { Light Grenadeblast1 }
Frame TGBLB { Light Grenadeblast2 }
Frame TGBLC { Light Grenadeblast3 }
Frame TGBLD { Light Grenadeblast4 }
Frame TGBLE { Light Grenadeblast5 }
Frame TGBLF { Light Grenadeblast6 }
Frame TGBLG { Light Grenadeblast7 }
Frame TGBLH { Light Grenadeblast8 }
Frame TGBLI { Light Grenadeblast9 }
Frame TGBLJ { Light Grenadeblast10 }
Frame TGBLK { Light Grenadeblast11 }
}

Pointlight Terminatorpuff1
{
Color 1.0 0.8 0.0
Size 16
}

Pointlight Terminatorpuff2
{
Color 0.9 0.7 0.0
Size 20
}

Pointlight Terminatorpuff3
{
Color 0.8 0.6 0.0
Size 24
}

Pointlight Terminatorpuff4
{
Color 0.7 0.5 0.0
Size 20
}

Pointlight Terminatorpuff5
{
Color 0.6 0.4 0.0
Size 16
}

Pointlight Terminatorpuff6
{
Color 0.5 0.3 0.0
Size 14
}

Pointlight Terminatorpuff7
{
Color 0.4 0.2 0.0
Size 12
}

Pointlight Terminatorpuff8
{
Color 1.0 0.8 0.0
Size 10
}

Pointlight Terminatorpuff9
{
Color 0.9 0.7 0.0
Size 16
}

Pointlight Terminatorpuff10
{
Color 0.8 0.6 0.0
Size 20
}

Pointlight Terminatorpuff11
{
Color 0.7 0.5 0.0
Size 24
}

Pointlight Terminatorpuff12
{
Color 0.6 0.4 0.0
Size 20
}

Pointlight Terminatorpuff13
{
Color 0.5 0.3 0.0
Size 16
}

Pointlight Terminatorpuff14
{
Color 0.4 0.2 0.0
Size 14
}

Pointlight Terminatorpuff15
{
Color 0.4 0.2 0.0
Size 12
}

Object Terminatorpuff
{
Frame TPUFA { Light Terminatorpuff1 }
Frame TPUFB { Light Terminatorpuff2 }
Frame TPUFC { Light Terminatorpuff3 }
Frame TPUFD { Light Terminatorpuff4 }
Frame TPUFE { Light Terminatorpuff5 }
Frame TPUFF { Light Terminatorpuff6 }
Frame TPUFG { Light Terminatorpuff7 }
Frame TPUFH { Light Terminatorpuff8 }
Frame TPUFI { Light Terminatorpuff9 }
Frame TPUFJ { Light Terminatorpuff10 }
Frame TPUFK { Light Terminatorpuff11 }
Frame TPUFL { Light Terminatorpuff12 }
Frame TPUFM { Light Terminatorpuff13 }
Frame TPUFN { Light Terminatorpuff14 }
Frame TPUFO { Light Terminatorpuff15 }
}

Pointlight TerminatorDeath1
{
Color 0.6 0.1 0.0
Size 40
}

Pointlight TerminatorDeath2
{
Color 0.7 0.2 0.0
Size 44
}

Pointlight TerminatorDeath3
{
Color 0.8 0.3 0.0
Size 48
}

Pointlight TerminatorDeath4
{
Color 0.9 0.4 0.0
Size 52
}

Pointlight TerminatorDeath5
{
Color 1.0 0.5 0.0
Size 56
}

Pointlight TerminatorDeath6
{
Color 1.0 0.5 0.0
Size 52
}

Pointlight TerminatorDeath7
{
Color 0.9 0.5 0.0
Size 48
}

Pointlight TerminatorDeath8
{
Color 0.8 0.4 0.0
Size 44
}

Pointlight TerminatorDeath9
{
Color 0.7 0.3 0.0
Size 40
}

Pointlight TerminatorDeath10
{
Color 0.6 0.2 0.0
Size 36
}

Pointlight TerminatorDeath11
{
Color 0.6 0.2 0.0
Size 32
}

Pointlight TerminatorDeath12
{
Color 0.5 0.1 0.0
Size 28
}

Pointlight TerminatorDeath13
{
Color 0.4 0.1 0.0
Size 26
}

FlickerLight2 TerminatorAttack1
{
Color 1.0 0.8 0.2
Size 56
SecondarySize 64
Interval 1
Offset 0 80 0
}

Pointlight TerminatorAttack2
{
Color 1.0 0.5 0.2
Size 56
}

Pointlight TerminatorAttack3
{
Color 1.0 0.0 0.0
Size 56
}

Object Terminator
{
Frame TERMF { Light TerminatorAttack2 }
Frame TERMH { Light TerminatorAttack1 }
Frame TERMI { Light TerminatorAttack1 }
Frame TERMK { Light TerminatorAttack3 }
Frame TERMM { Light TerminatorDeath1 }
Frame TERMN { Light TerminatorDeath2 }
Frame TERMO { Light TerminatorDeath3 }
Frame TERMP { Light TerminatorDeath4 }
Frame TERMQ { Light TerminatorDeath5 }
Frame TERMR { Light TerminatorDeath6 }
Frame TERMS { Light TerminatorDeath7 }
Frame TERMT { Light TerminatorDeath8 }
Frame TERMU { Light TerminatorDeath9 }
Frame TERMV { Light TerminatorDeath10 }
Frame TERMW { Light TerminatorDeath11 }
Frame TERMX { Light TerminatorDeath12 }
Frame TERMY { Light TerminatorDeath13 }
}

//Brightmaps


BrightMap Sprite TERMA1
{
Map BMTERMA1
DisableFullBright
}

BrightMap Sprite TERMA2
{
Map BMTERMA2
DisableFullBright
}

BrightMap Sprite TERMA3
{
Map BMTERMA3
DisableFullBright
}

BrightMap Sprite TERMA6
{
Map BMTERMA6
DisableFullBright
}

BrightMap Sprite TERMA7
{
Map BMTERMA7
DisableFullBright
}

BrightMap Sprite TERMA8
{
Map BMTERMA8
DisableFullBright
}

BrightMap Sprite TERMB1
{
Map BMTERMB1
DisableFullBright
}

BrightMap Sprite TERMB2
{
Map BMTERMB2
DisableFullBright
}

BrightMap Sprite TERMB3
{
Map BMTERMB3
DisableFullBright
}

BrightMap Sprite TERMB7
{
Map BMTERMB7
DisableFullBright
}

BrightMap Sprite TERMB8
{
Map BMTERMB8
DisableFullBright
}

BrightMap Sprite TERMC1
{
Map BMTERMC1
DisableFullBright
}

BrightMap Sprite TERMC2
{
Map BMTERMC2
DisableFullBright
}

BrightMap Sprite TERMC3
{
Map BMTERMC3
DisableFullBright
}

BrightMap Sprite TERMC4
{
Map BMTERMC4
DisableFullBright
}

BrightMap Sprite TERMC7
{
Map BMTERMC7
DisableFullBright
}

BrightMap Sprite TERMC8
{
Map BMTERMC8
DisableFullBright
}

BrightMap Sprite TERMD1
{
Map BMTERMD1
DisableFullBright
}

BrightMap Sprite TERMD2
{
Map BMTERMD2
DisableFullBright
}

BrightMap Sprite TERMD3
{
Map BMTERMD3
DisableFullBright
}

BrightMap Sprite TERMD7
{
Map BMTERMD7
DisableFullBright
}

BrightMap Sprite TERMD8
{
Map BMTERMD8
DisableFullBright
}

BrightMap Sprite TERME1
{
Map BMTERME1
DisableFullBright
}

BrightMap Sprite TERME2
{
Map BMTERME2
DisableFullBright
}

BrightMap Sprite TERME3
{
Map BMTERME3
DisableFullBright
}

BrightMap Sprite TERME7
{
Map BMTERME7
DisableFullBright
}

BrightMap Sprite TERME8
{
Map BMTERME8
DisableFullBright
}

BrightMap Sprite TERMF1
{
Map BMTERMF1
DisableFullBright
}

BrightMap Sprite TERMF2
{
Map BMTERMF2
DisableFullBright
}

BrightMap Sprite TERMF3
{
Map BMTERMF3
DisableFullBright
}

BrightMap Sprite TERMF4
{
Map BMTERMF4
DisableFullBright
}

BrightMap Sprite TERMF5
{
Map BMTERMF5
DisableFullBright
}

BrightMap Sprite TERMF6
{
Map BMTERMF6
DisableFullBright
}

BrightMap Sprite TERMF7
{
Map BMTERMF7
DisableFullBright
}

BrightMap Sprite TERMF8
{
Map BMTERMF8
DisableFullBright
}

BrightMap Sprite TERMG1
{
Map BMTERMG1
DisableFullBright
}

BrightMap Sprite TERMG2
{
Map BMTERMG2
DisableFullBright
}

BrightMap Sprite TERMG3
{
Map BMTERMG3
DisableFullBright
}

BrightMap Sprite TERMG7
{
Map BMTERMG7
DisableFullBright
}

BrightMap Sprite TERMG8
{
Map BMTERMG8
DisableFullBright
}

BrightMap Sprite TERMH1
{
Map BMTERMH1
DisableFullBright
}

BrightMap Sprite TERMH2
{
Map BMTERMH2
DisableFullBright
}

BrightMap Sprite TERMH3
{
Map BMTERMH3
DisableFullBright
}

BrightMap Sprite TERMH4
{
Map BMTERMH4
DisableFullBright
}

BrightMap Sprite TERMH5
{
Map BMTERMH5
DisableFullBright
}

BrightMap Sprite TERMH6
{
Map BMTERMH6
DisableFullBright
}

BrightMap Sprite TERMH7
{
Map BMTERMH7
DisableFullBright
}

BrightMap Sprite TERMH8
{
Map BMTERMH8
DisableFullBright
}

BrightMap Sprite TERMI1
{
Map BMTERMI1
DisableFullBright
}

BrightMap Sprite TERMI2
{
Map BMTERMI2
DisableFullBright
}

BrightMap Sprite TERMI3
{
Map BMTERMI3
DisableFullBright
}

BrightMap Sprite TERMI4
{
Map BMTERMI4
DisableFullBright
}

BrightMap Sprite TERMI5
{
Map BMTERMI5
DisableFullBright
}

BrightMap Sprite TERMI6
{
Map BMTERMI6
DisableFullBright
}

BrightMap Sprite TERMI7
{
Map BMTERMI7
DisableFullBright
}

BrightMap Sprite TERMI8
{
Map BMTERMI8
DisableFullBright
}

BrightMap Sprite TERMJ1
{
Map BMTERMJ1
DisableFullBright
}

BrightMap Sprite TERMJ2
{
Map BMTERMJ2
DisableFullBright
}

BrightMap Sprite TERMJ3
{
Map BMTERMJ3
DisableFullBright
}

BrightMap Sprite TERMJ7
{
Map BMTERMJ7
DisableFullBright
}

BrightMap Sprite TERMJ8
{
Map BMTERMJ8
DisableFullBright
}

BrightMap Sprite TERMK1
{
Map BMTERMK1
DisableFullBright
}

BrightMap Sprite TERMK2
{
Map BMTERMK2
DisableFullBright
}

BrightMap Sprite TERMK3
{
Map BMTERMK3
DisableFullBright
}

BrightMap Sprite TERMK4
{
Map BMTERMK4
DisableFullBright
}

BrightMap Sprite TERMK5
{
Map BMTERMK5
DisableFullBright
}

BrightMap Sprite TERMK6
{
Map BMTERMH6
DisableFullBright
}

BrightMap Sprite TERMK7
{
Map BMTERMK7
DisableFullBright
}

BrightMap Sprite TERMK8
{
Map BMTERMK8
DisableFullBright
}

BrightMap Sprite TERML1
{
Map BMTERML1
DisableFullBright
}

BrightMap Sprite TERML2
{
Map BMTERML2
DisableFullBright
}

BrightMap Sprite TERML3
{
Map BMTERML3
DisableFullBright
}

BrightMap Sprite TERML4
{
Map BMTERML4
DisableFullBright
}

BrightMap Sprite TERML8
{
Map BMTERML8
DisableFullBright
}

BrightMap Sprite TERMM0
{
Map BMTERMM0
DisableFullBright
}

BrightMap Sprite TERMN0
{
Map BMTERMN0
DisableFullBright
}

BrightMap Sprite TERMO0
{
Map BMTERMO0
DisableFullBright
}

BrightMap Sprite TERMP0
{
Map BMTERMP0
DisableFullBright
}

BrightMap Sprite TERMQ0
{
Map BMTERMQ0
DisableFullBright
}

BrightMap Sprite TERMR0
{
Map BMTERMR0
DisableFullBright
}

BrightMap Sprite TERMS0
{
Map BMTERMS0
DisableFullBright
}

BrightMap Sprite TERMT0
{
Map BMTERMT0
DisableFullBright
}

BrightMap Sprite TERMU0
{
Map BMTERMU0
DisableFullBright
}

BrightMap Sprite TERMV0
{
Map BMTERMV0
DisableFullBright
}

BrightMap Sprite TERMW0
{
Map BMTERMW0
DisableFullBright
}

BrightMap Sprite TERMX0
{
Map BMTERMX0
DisableFullBright
}

BrightMap Sprite TERMY0
{
Map BMTERMY0
DisableFullBright
}

//Supreme Fiend

Object FiendPlasmaBall
{
  Frame APLSA { Light ARACHPLAS }
  Frame APLSB { Light ARACHPLAS }
  Frame APBXA { Light ARACHPLAS_X1 }
  Frame APBXB { Light ARACHPLAS_X2 }
  Frame APBXC { Light ARACHPLAS_X2 }
  Frame APBXD { Light ARACHPLAS_X3 }
  Frame APBXE { Light ARACHPLAS_X4 }
}

Object RemoteBomb
{
  Frame MISLB { Light ROCKET_X1 }
  Frame MISLC { Light ROCKET_X2 }
  Frame MISLD { Light ROCKET_X3 }
}

PointLight SupremeFiendFire1
{
Color 0.2 0.8 0.2
Size 72
Offset 0 30 0
} 

PointLight SupremeFiendFire2
{
Color 0.4 1.0 0.4
Size 96
Offset 0 30 0
} 

Pointlight SupremeFiendDie1
{
Color 0.7 0.2 0.0
Size 80
}

Pointlight SupremeFiendDie2
{
Color 1.0 0.4 0.0
Size 88
}

Pointlight SupremeFiendDie3
{
Color 1.0 0.6 0.0
Size 96
}

Pointlight SupremeFiendDie4
{
Color 0.8 0.3 0.0
Size 88
}

Pointlight SupremeFiendDie5
{
Color 0.6 0.2 0.0
Size 80
}

Pointlight SupremeFiendDie6
{
Color 0.4 0.0 0.0
Size 88
}

Pointlight SupremeFiendDie7
{
Color 0.2 0.0 0.0
Size 72
}

Object SupremeFiend
{
Frame SUPRE { Light SupremeFiendFire1 }
Frame SUPRF { Light SupremeFiendFire1 }
Frame SUPRG { Light SupremeFiendDie1 }
Frame SUPRH { Light SupremeFiendDie2 }
Frame SUPRI { Light SupremeFiendDie3 }
Frame SUPRJ { Light SupremeFiendDie4 }
Frame SUPRK { Light SupremeFiendDie5 }
Frame SUPRL { Light SupremeFiendDie6 }
Frame SUPRM { Light SupremeFiendDie7 }
}

//GLDefs for Overlord

// [MagicWazard] Note: Some of these light definitions are shared with the
// Hades Elemental. You don't need to copy them all if you're already using the
// Hades Elemental!
Pointlight HadesBall1
{
Color 0.8 0.0 0.0
Size 40
}

Pointlight HadesBall2
{
Color 0.9 0.0 0.0
Size 48
}

Pointlight HadesBall3
{
Color 0.7 0.0 0.0
Size 56
}

Pointlight HadesBall4
{
Color 0.6 0.0 0.0
Size 40
}

Pointlight HadesBall5
{
Color 0.5 0.0 0.0
Size 32
}

Pointlight HadesBall6
{
Color 0.4 0.0 0.0
Size 24
}

Pointlight HadesBall7
{
Color 0.3 0.0 0.0
Size 16
}

Object HadesBall
{
Frame HEFXA { Light HadesBall1 }
Frame HEFXB { Light HadesBall1 }
Frame HEFXC { Light HadesBall2 }
Frame HEFXD { Light HadesBall3 }
Frame HEFXE { Light HadesBall4 }
Frame HEFXF { Light HadesBall5 }
Frame HEFXG { Light HadesBall6 }
Frame HEFXH { Light HadesBall7 }
}

Object OverBall
{
Frame AFX1A { Light HadesBall1 }
Frame AFX1B { Light HadesBall1 }
Frame AFX1C { Light HadesBall1 }
Frame AFX1D { Light HadesBall2 }
Frame AFX1E { Light HadesBall3 }
Frame AFX1F { Light HadesBall4 }
Frame AFX1G { Light HadesBall5 }
Frame AFX1H { Light HadesBall6 }
Frame AFX1I { Light HadesBall7 }
}


Flickerlight2 HadeslightningA
{
 Color 1.0 0.0 0.0
 Offset 0 0 0
 Size 50
 SecondarySize 100
 Interval 0.005
}

Flickerlight2 HadeslightningB
{
 Color 1.0 0.0 0.0
 Offset 0 0 0
 Size 80
 SecondarySize 90
 Interval 0.005
}

Flickerlight2 HadeslightningC
{
 Color 1.0 0.0 0.0
 Offset 0 0 0
 Size 98
 SecondarySize 138
 Interval 0.005
}

Flickerlight2 HadeslightningD
{
 Color 1.0 0.0 0.0
 Offset 0 0 0
 Size 77
 SecondarySize 157
 Interval 0.005
}

Flickerlight2 HadeslightningE
{
 Color 1.0 0.0 0.0
 Offset 0 0 0
 Size 72
 SecondarySize 132
 Interval 0.005
}

Object StormBolt
{
 Frame LFX2F { Light HadeslightningA }
 Frame LFX2G { Light HadeslightningB }
 Frame LFX2H { Light HadeslightningC }
 Frame LFX2I { Light HadeslightningD }
 Frame LFX2J { Light HadeslightningE }
}


Pointlight StormShot1
{
Color 1.0 0.0 0.0
Size 64
}

Object StormShot1
{
Frame LFX1S { Light StormShot1 }
Frame LFX1T { Light StormShot1 }
Frame LFX1U { Light StormShot1 }
Frame LFX1V { Light StormShot1 }
Frame LFX1W { Light StormShot1 }
}

Pointlight StormShot2
{
Color 1.0 0.0 0.0
Size 96
}

Object StormShot2
{
Frame LFX2K { Light StormShot2 }
Frame LFX2L { Light StormShot2 }
Frame LFX2M { Light StormShot2 }
Frame LFX2N { Light StormShot2 }
Frame LFX2O { Light StormShot2 }
}

Pointlight StormLite1A
{
Color 1.0 0.0 0.0
Size 30
}

Object StormLite1
{
Frame DLITA { Light StormLite1A }
Frame DLITB { Light StormLite1A }
Frame DLITC { Light StormLite1A }
}

Pointlight StormLite2A
{
Color 1.0 0.0 0.0
Size 48
}

Object StormLite2
{
Frame LFX1X { Light StormLite2A }
Frame LFX1Y { Light StormLite2A }
Frame LFX1Z { Light StormLite2A }
}


//GLDefs for Hades Sphere
PointLight HadesSphere_1
{
Color 1.0 0.0 0.0
Offset 0 4 0
Size 10
}

PointLight HadesSphere_2
{
Color 1.0 0.0 0.0
Offset 0 4 0
Size 20
}

PointLight HadesSphere_3
{
Color 1.0 0.0 0.0
Offset 0 4 0
Size 30
}

PointLight HadesSphere_4
{
Color 1.0 0.0 0.0
Offset 0 4 0
Size 40
}

FlickerLight2 HadesSphere
{
Color 1.0 0.0 0.0
Offset 0 8 0
Size 50
SecondarySize 70
Interval 2.0
}

Object HS
{
Frame HADEE { Light HadesSphere_1 }
Frame HADEF { Light HadesSphere_2 }
Frame HADEG { Light HadesSphere_3 }
Frame HADEH { Light HadesSphere_4 }
Frame HADEA { Light HadesSphere }
Frame HADEB { Light HadesSphere }
Frame HADEC { Light HadesSphere }
Frame HADED { Light HadesSphere }
Frame HADEG { Light HadesSphere }
}

PointLight HadesBoom_1
{
Color 1.0 0.0 0.0
Offset 0 14 0
Size 80
}

PointLight HadesBoom_2
{
Color 0.9 0.0 0.0
Offset 0 14 0
Size 92
}

PointLight HadesBoom_3
{
Color 0.78 0.0 0.0
Offset 0 14 0
Size 96
}

PointLight HadesBoom_4
{
Color 0.56 0.0 0.0
Offset 0 14 0
Size 100
}

PointLight HadesBoom_5
{
Color 0.32 0.0 0.0
Offset 0 14 0
Size 110
}

Object HS
{
Frame HADEM { Light HadesBoom_1 }
Frame HADEN { Light HadesBoom_2 }
Frame HADEO { Light HadesBoom_3 }
Frame HADEP { Light HadesBoom_4 }
Frame HADEQ { Light HadesBoom_5 }
}

//GLDefs for Hades Elemental

// [MagicWazard] Note: These light definitions are shared with the Overlord.
// You don't need to copy them all if you're already using the Overlord!

//Dynamic lights
Pointlight HadesBall1
{
Color 0.8 0.0 0.0
Size 40
}

Pointlight HadesBall2
{
Color 0.9 0.0 0.0
Size 48
}

Pointlight HadesBall3
{
Color 0.7 0.0 0.0
Size 56
}

Pointlight HadesBall4
{
Color 0.6 0.0 0.0
Size 40
}

Pointlight HadesBall5
{
Color 0.5 0.0 0.0
Size 32
}

Pointlight HadesBall6
{
Color 0.4 0.0 0.0
Size 24
}

Pointlight HadesBall7
{
Color 0.3 0.0 0.0
Size 16
}

Object HadesBall
{
Frame HEFXA { Light HadesBall1 }
Frame HEFXB { Light HadesBall1 }
Frame HEFXC { Light HadesBall2 }
Frame HEFXD { Light HadesBall3 }
Frame HEFXE { Light HadesBall4 }
Frame HEFXF { Light HadesBall5 }
Frame HEFXG { Light HadesBall6 }
Frame HEFXH { Light HadesBall7 }
}

Flickerlight2 HadeslightningA
{
 Color 1.0 0.0 0.0
 Offset 0 0 0
 Size 50
 SecondarySize 100
 Interval 0.005
}

Flickerlight2 HadeslightningB
{
 Color 1.0 0.0 0.0
 Offset 0 0 0
 Size 80
 SecondarySize 90
 Interval 0.005
}

Flickerlight2 HadeslightningC
{
 Color 1.0 0.0 0.0
 Offset 0 0 0
 Size 98
 SecondarySize 138
 Interval 0.005
}

Flickerlight2 HadeslightningD
{
 Color 1.0 0.0 0.0
 Offset 0 0 0
 Size 77
 SecondarySize 157
 Interval 0.005
}

Flickerlight2 HadeslightningE
{
 Color 1.0 0.0 0.0
 Offset 0 0 0
 Size 72
 SecondarySize 132
 Interval 0.005
}

Object HadesBolt
{
 Frame LFX2F { Light HadeslightningA }
 Frame LFX2G { Light HadeslightningB }
 Frame LFX2H { Light HadeslightningC }
 Frame LFX2I { Light HadeslightningD }
 Frame LFX2J { Light HadeslightningE }
}

// [MagicWazard] These lights aren't actually used by any actors in this submission...
Flickerlight2 HadesBolt
{
Color 1.0 0.2 0.2
Size 48
SecondarySize 56
Interval 2
}

Pointlight HadesBolt2
{
Color 1.0 0.5 0.5
Size 24
}

Pointlight HadesBolt3
{
Color 1.0 0.3 0.3
Size 32
}

Pointlight HadesBolt4
{
Color 0.8 0.0 0.0
Size 40
}

Pointlight HadesBolt5
{
Color 0.7 0.0 0.0
Size 32
}

Pointlight HadesBolt6
{
Color 0.4 0.0 0.0
Size 24
}

// [MagicWazard] Note: this actor already has a set of lights assigned to it in
// a previous definition above. Additionally, the sprite sequence here doesn't
// match the actual in-game actor, so I've commented it out for safety.
/*Object HadesBolt
{
Frame LFX1A { Light HadesBolt1 }
Frame LFX1B { Light HadesBolt1 }
Frame LFX1C { Light HadesBolt1 }
Frame LFX1D { Light HadesBolt2 }
Frame LFX1E { Light HadesBolt3 }
Frame LFX1F { Light HadesBolt4 }
Frame LFX1G { Light HadesBolt5 }
Frame LFX1H { Light HadesBolt6 }
}*/

// [MagicWazard] Note: this actor is invisible in-game (it's the vertical
// projectiles spawned by the lightning column). Since the sprite sequence here
// doesn't match the actual in-game actor, I've commented it out.
/*Object HadesBolt2
{
Frame LFX3A { Light HadesBolt1 }
Frame LFX3B { Light HadesBolt1 }
Frame LFX3C { Light HadesBolt1 }
Frame LFX1D { Light HadesBolt2 }
Frame LFX1E { Light HadesBolt3 }
Frame LFX1F { Light HadesBolt4 }
Frame LFX1G { Light HadesBolt5 }
Frame LFX1H { Light HadesBolt6 }
}*/



//Brightmaps

BrightMap Sprite HELEA1
{
Map BMHELEA1
DisableFullBright
}

BrightMap Sprite HELEA2A8
{
Map BMHELEA2
DisableFullBright
}

BrightMap Sprite HELEA3A7
{
Map BMHELEA3
DisableFullBright
}

BrightMap Sprite HELEA4A6
{
Map BMHELEA4
DisableFullBright
}

BrightMap Sprite HELEA5
{
Map BMHELEA5
DisableFullBright
}

BrightMap Sprite HELEB1
{
Map BMHELEB1
DisableFullBright
}

BrightMap Sprite HELEB2B8
{
Map BMHELEB2
DisableFullBright
}

BrightMap Sprite HELEB3B7
{
Map BMHELEB3
DisableFullBright
}

BrightMap Sprite HELEB4
{
Map BMHELEB4
DisableFullBright
}

BrightMap Sprite BMHELEA5
{
Map BMHELEB5
DisableFullBright
}

BrightMap Sprite HELEC1
{
Map BMHELEC1
DisableFullBright
}

BrightMap Sprite HELEC2C8
{
Map BMHELEC2
DisableFullBright
}

BrightMap Sprite HELEC3C7
{
Map BMHELEC3
DisableFullBright
}

BrightMap Sprite HELEC4C6
{
Map BMHELEC4
DisableFullBright
}

BrightMap Sprite HELEC5
{
Map BMHELEC5
DisableFullBright
}

BrightMap Sprite HELED1
{
Map BMHELED1
DisableFullBright
}

BrightMap Sprite HELED2D8
{
Map BMHELED2
DisableFullBright
}

BrightMap Sprite HELED3D7
{
Map BMHELED3
DisableFullBright
}

BrightMap Sprite HELED4D6
{
Map BMHELED4
DisableFullBright
}

BrightMap Sprite HELED5
{
Map BMHELED5
DisableFullBright
}

BrightMap Sprite HELEE1
{
Map BMHELEE1
DisableFullBright
}

BrightMap Sprite HELEE2E8
{
Map BMHELEE2
DisableFullBright
}

BrightMap Sprite HELEE3E7
{
Map BMHELEE3
DisableFullBright
}

BrightMap Sprite HELEE4E6
{
Map BMHELEE4
DisableFullBright
}

BrightMap Sprite HELEE5
{
Map BMHELEE5
DisableFullBright
}

BrightMap Sprite HELEF1
{
Map BMHELEF1
DisableFullBright
}

BrightMap Sprite HELEF2F8
{
Map BMHELEF2
DisableFullBright
}

BrightMap Sprite HELEF3F7
{
Map BMHELEF3
DisableFullBright
}

BrightMap Sprite HELEF4F6
{
Map BMHELEF4
DisableFullBright
}

BrightMap Sprite HELEF5
{
Map BMHELEF5
DisableFullBright
}

BrightMap Sprite HELEG1
{
Map BMHELEG1
DisableFullBright
}

BrightMap Sprite HELEG2G8
{
Map BMHELEG2
DisableFullBright
}

BrightMap Sprite HELEG3G7
{
Map BMHELEG3
DisableFullBright
}

BrightMap Sprite HELEG4G6
{
Map BMHELEG4
DisableFullBright
}

BrightMap Sprite HELEG5
{
Map BMHELEG5
DisableFullBright
}

BrightMap Sprite HELEH1
{
Map BMHELEH1
DisableFullBright
}

BrightMap Sprite HELEH2H8
{
Map BMHELEH2
DisableFullBright
}

BrightMap Sprite HELEH3H7
{
Map BMHELEH3
DisableFullBright
}

BrightMap Sprite HELEH4H6
{
Map BMHELEH4
DisableFullBright
}

BrightMap Sprite HELEH5
{
Map BMHELEH5
DisableFullBright
}

BrightMap Sprite HELEI0
{
Map BMHELEI0
DisableFullBright
}

BrightMap Sprite HELEJ0
{
Map BMHELEJ0
DisableFullBright
}

BrightMap Sprite HELEK0
{
Map BMHELEK0
DisableFullBright
}

BrightMap Sprite HELEL0
{
Map BMHELEL0
DisableFullBright
}

BrightMap Sprite HELEM0
{
Map BMHELEM0
DisableFullBright
}

BrightMap Sprite HELEN0
{
Map BMHELEN0
DisableFullBright
}

BrightMap Sprite HELEO0
{
Map BMHELEO0
DisableFullBright
}

BrightMap Sprite HELEP0
{
Map BMHELEP0
DisableFullBright
}

]]

local GL_GLOW =
[[
Glow
{
  Flats
  {
    // vanilla ceiling lights
    CEIL1_2
    CEIL1_3
    CEIL3_4
    CEIL3_6
    CEIL4_1
    CEIL4_2
    CEIL4_3
    FLAT17
    FLAT2
    FLAT22
    FLOOR1_7
    TLITE6_1
    TLITE6_4
    TLITE6_5
    TLITE6_6
    GATE1
    GATE2
    GATE3
    GATE4
    GRNLITE1

    // vanilla liquids
    BLOOD1
    BLOOD2
    BLOOD3
    LAVA1
    LAVA2
    LAVA3
    LAVA4
    NUKAGE1
    NUKAGE2
    NUKAGE3
    SLIME01
    SLIME02
    SLIME03
    SLIME04
    SLIME05
    SLIME06
    SLIME07
    SLIME08

    //teleporter gate textures
    GATE1
    GATE2
    GATE3
    GATE4
    GATE3TN
    GATE4BL
    GATE4MG
    GATE4OR
    GATE4PU
    GATE4RD
    GATE4YL

    //composite flats
    T_GHFLY
    T_GHFLG
    T_GHFLB
    T_GHFLP

    T_CL43R
    T_CL43Y
    T_CL43G
    T_CL43P
  }

  Texture "FWATER1", 0a0ac4, 128
  Texture "FWATER2", 0a0ac4, 128
  Texture "FWATER3", 0a0ac4, 128
  Texture "FWATER4", 0a0ac4, 128
  Texture "F_SKY1", 808080, 128
}
]]

	gui.printf("GLData code is running\n");
	local data = {}
	table.insert(data, GL_DOOM)  
	if PARAM.dynamic_lights == "yes" then
		table.insert(data, GL_LIGHTS)  
		gui.printf("Added Dynamic Lights GLData\n");			
	end	
	if PARAM.glowing_flats == "yes" then
		table.insert(data, GL_GLOW)  
		gui.printf("Added Glowing Floors GLData\n");			
	end	
	if BRUTALDOOM.PARAMETERS.realm667 == true then   
		table.insert(data, GL_667)  
		gui.printf("Added 667 GLData\n");
	end
	gui.wad_add_text_lump("GLDEFS", data);
end