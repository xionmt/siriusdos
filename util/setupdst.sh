#!/bin/sh

mkdir data/local;
mkdir data/system;
mkdir data/system/PACIFICC;

7z e data/pacific7.zip -odata -aoa *.exe;
7z e data/pacific.exe -odata/system/PACIFICC -r -aoa -tlzh;
mv data/system/PACIFICC/PPD.INI data/system/PACIFICC/PPDINI.BAK;
cp -a src/ppd.ini data/system/PACIFICC/PPD.INI;
cp -a src/ansicol.bat data/system/ANSICOL.BAT;
