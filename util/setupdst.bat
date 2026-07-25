@ECHO OFF

MKDIR data\system
MKDIR data\local
MKDIR data\system\PACIFICC

7Z e data\pacific7.zip -odata -aoa *.exe
7Z e data\pacific.exe -odata\system\PACIFICC -r -aoa -tlzh
RENAME data\system\PACIFICC\PPD.INI PPDINI.BAK
COPY src\ppd.ini data\system\PACIFICC\PPD.INI
COPY src\ansicol.bat data\system\ANSICOL.BAT
COPY src\senuscol.bat data\system\SENUSCOL.BAT
