#	Copyright (c) 1998 Lucent Technologies - All rights reserved.
#	Changes Copyright (c) 2014-2015 Rob King
#
#	master makefile for sam.  configure sub-makefiles first.
#

all:	config.h config.mk commands.h lXg lframe rsamdir samdir samtermdir docdir

commands.h:
	cp commands.h.def commands.h

config.h:
	cp config.h.def config.h

config.mk:
	cp config.mk.def config.mk

lXg:
	cd libXg; $(MAKE)
lframe:
	cd libframe; $(MAKE)

docdir:
	cd doc; $(MAKE)

rsamdir:
	cd rsam; $(MAKE)

samdir:
	cd sam; $(MAKE)

samtermdir:
	cd samterm; $(MAKE)

install:
	cd libXg; $(MAKE) install
	cd libframe; $(MAKE) install
	cd sam; $(MAKE) install
	cd samterm; $(MAKE) install
	cd doc; $(MAKE) install
	cd rsam; $(MAKE) install

clean:
	cd libXg; $(MAKE) clean
	cd libframe; $(MAKE) clean
	cd sam; $(MAKE) clean
	cd samterm; $(MAKE) clean
	cd rsam; $(MAKE) clean

nuke: clean
	rm -f config.h commands.h config.mk
