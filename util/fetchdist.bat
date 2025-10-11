@ECHO OFF
curl -fsSL "http://cowlark.com/old-compilers/pacific/pacific751.zip" > data\pacific7.zip
7z e data\pacific7.zip -odata -aoa *.exe
mkdir data\system\pacificc
7z e data\pacific.exe -odata\system\pacificc -r -aoa -tlzh
