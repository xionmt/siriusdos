#!/bin/sh

mkdir data/local;
mkdir data/system;
mkdir data/system/PACIFICC;

7z e data/pacific7.zip -odata -aoa *.exe;
7z x data/pacific.exe -odata/system/PACIFICC -r -aoa -tlzh;
mv data/system/PACIFICC/BIN/PPD.INI data/system/PACIFICC/BIN/PPDINI.BAK;
cp -a src/ppd.ini data/system/PACIFICC/BIN/PPD.INI;
cp -a src/ansicol.bat data/system/ANSICOL.BAT;
cp -a src/senuscol.bat data/system/SENUSCOL.BAT;
