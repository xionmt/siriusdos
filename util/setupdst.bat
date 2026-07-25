@ECHO OFF

mkdir data\system
mkdir data\local
mkdir data\system\PACIFICC

7z e data\pacific7.zip -odata -aoa *.exe
7z e data\pacific.exe -odata\system\PACIFICC -r -aoa -tlzh
rename data\system\PACIFICC\PPD.INI PPDINI.BAK
copy src\ppd.ini data\system\PACIFICC\PPD.INI
copy src\ansicol.bat data\system\ANSICOL.BAT
