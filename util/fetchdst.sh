#!/bin/sh

mkdir data;

test -f data/pacific7.zip || \
curl -fsSL 'http://cowlark.com/old-compilers/pacific/pacific751.zip' > \
	data/pacific7.zip;
sha256sum -c etc/pacific7.sum;
