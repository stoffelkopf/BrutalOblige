powershell Compress-Archive -path brutaloblige, engines, games, modules, NightmareMonsters, scripts, credits.txt, GPL.txt -destination BrutalOblige.zip
@ echo off
REN BrutalOblige.zip BrutalOblige.pk3

ECHO.
IF EXIST BrutalOblige.pk3 (
	ECHO BrutalOblige.pk3 built successfully
) ELSE (
	ECHO Build Failed!
	ECHO If you see an error about Compress-Archive not being a recognised command you may need to update your version of .NET and/or powershell
)
PAUSE
