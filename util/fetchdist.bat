@ECHO OFF
mkdir data
mkdir data\system
mkdir data\local
curl -fsSL "http://cowlark.com/old-compilers/pacific/pacific751.zip" > data\pacific7.zip
7z e data\pacific7.zip -odata -aoa *.exe
mkdir data\system\PACIFICC
7z e data\pacific.exe -odata\system\PACIFICC -r -aoa -tlzh
rename data\system\PACIFICC\PPD.INI PPDINI.BAK
copy src\ppd.ini data\system\PACIFICC\PPD.INI
