@ECHO OFF

MKDIR data

IF NOT EXIST data\pacific7.zip CURL -fsSL "http://cowlark.com/old-compilers/pacific/pacific751.zip" > data\pacific7.zip
