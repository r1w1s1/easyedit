# This is the make file for ee, the "easy editor".
#
# A file called 'make.local' will be generated which will contain information 
# specific to the local system, such as if it is a BSD or System V based 
# version of UNIX, whether or not it has catgets, or select.  
#
# The "install" target ("make install") will copy the ee binary to 
# the /usr/local/bin directory on the local system.  The man page (ee.1) 
# will be copied into the /usr/local/man/man1 directory.
#
# The "clean" target ("make clean") will remove the ee and new_curse.o 
# object files, and the ee binary.
#

all :	localmake buildee

PREFIX ?= /usr/local
DESTDIR ?=
BINDIR ?= $(PREFIX)/bin
MANDIR ?= $(PREFIX)/man/man1

buildee :	
	make -f make.local

localmake:
	@./create.make

install :
	mkdir -p $(DESTDIR)$(BINDIR)
	mkdir -p $(DESTDIR)$(MANDIR)
	install -m 0755 ee $(DESTDIR)$(BINDIR)/ee
	install -m 0755 ee.sh $(DESTDIR)$(BINDIR)/ee.sh
	install -m 0644 ee.1 $(DESTDIR)$(MANDIR)/ee.1

clean :
	rm -f ee.o new_curse.o ee 
