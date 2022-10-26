@ECHO OFF

SET CTCM=C:\WINDOWS
SET SOUND=C:\PROGRA~1\CREATIVE\CTSND
SET MIDI=SYNTH:1 MAP:E MODE:0
SET BLASTER=A220 I5 D1 H5 P330 E620 T6 

IF %CONFIG%==launchbox GOTO launchbox
IF %CONFIG%==game GOTO game
IF %CONFIG%==windows GOTO windows

:xms
:ems
goto end

:windows 
echo Booting Windows 98 Second Edition...
win
goto end

:game
LH C:\UTILS\ctmouse.exe /O /R4
C:\PROGRA~1\CREATIVE\CTSND\DRV\MIXERSET /LI:200;200;50
cd \games\doom2
doom2
goto end;

:launchbox
LH C:\UTILS\ctmouse.exe /O /R4
cd \Lbxdos20
Launch.bat
goto end;

:end
cd \
