# Generated automatically from Makefile.in by configure.
# Makefile.in generated automatically by automake 1.1n from Makefile.am

# Copyright (C) 1994, 1995, 1996 Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy, distribute and modify it.

# Main Makefile for GNU tar.
# Copyright (C) 1994, 1995, 1996, 1997 Free Software Foundation, Inc.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.


SHELL = /bin/sh

srcdir = .
top_srcdir = .
prefix = /usr/local
exec_prefix = ${prefix}

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${prefix}/share
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
infodir = ${prefix}/info
mandir = ${prefix}/man
includedir = ${prefix}/include
oldincludedir = /usr/include

pkgdatadir = $(datadir)/tar
pkglibdir = $(libdir)/tar
pkgincludedir = $(includedir)/tar

top_builddir = .

ACLOCAL = aclocal
AUTOCONF = autoconf
AUTOMAKE = automake
AUTOHEADER = autoheader

INSTALL = /gnuwin32/bin//install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL_PROGRAM}
transform = s,x,x,

NORMAL_INSTALL = true
PRE_INSTALL = true
POST_INSTALL = true
NORMAL_UNINSTALL = true
PRE_UNINSTALL = true
POST_UNINSTALL = true
ACLOCAL = aclocal
AUTOCONF = autoconf
AUTOHEADER = autoheader
AUTOMAKE = automake
CATALOGS =  de.gmo fr.gmo it.gmo ko.gmo nl.gmo no.gmo pl.gmo pt.gmo sl.gmo fr.gmo it.gmo ko.gmo nl.gmo no.gmo pl.gmo pt.gmo sl.gmo sv.gmo
CATOBJEXT = .gmo
CC = gcc
DATADIRNAME = share
ECHO_C = 
ECHO_N = -n
GENCAT = 
GMOFILES =  de.gmo fr.gmo it.gmo ko.gmo nl.gmo no.gmo pl.gmo pt.gmo sl.gmo sv.gmo
GMSGFMT = msgfmt
GT_NO = 
GT_YES = #YES#
INSTOBJEXT = .mo
INTLDEPS = ../intl/libintl.a
INTLLIBS = ../intl/libintl.a
INTLOBJS = $(GETTOBJS)
MAKEINFO = makeinfo
MKINSTALLDIRS = ./mkinstalldirs
MSGFMT = msgfmt
PACKAGE = tar
POFILES =  de.po fr.po it.po ko.po nl.po no.po pl.po pt.po sl.po sv.po
POSUB = po
RANLIB = ranlib
RMT = 
U = 
USE_INCLUDED_LIBINTL = yes
USE_NLS = yes
VERSION = 1.12
YACC = bison -y

AUTOMAKE_OPTIONS = gnits dist-shar

BABYL = rmail/* admin/*/RMAIL
EXTRA_DIST = AC-PATCHES AM-PATCHES BI-PATCHES PORTS rebox.el
SUBDIRS = doc lib intl src scripts po tests
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
CONFIG_HEADER_IN = config.h.in
CONFIG_HEADER_FULL = config.h
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = config.h
CONFIG_CLEAN_FILES = 
DIST_COMMON =  README ABOUT-NLS AUTHORS BACKLOG COPYING ChangeLog \
INSTALL Makefile.am Makefile.in NEWS THANKS TODO acconfig.h \
acinclude.m4 aclocal.m4 config.h.in configure configure.in install-sh \
missing mkinstalldirs stamp-h.in


DISTFILES = $(DIST_COMMON) $(SOURCES) $(HEADERS) $(TEXINFOS) $(EXTRA_DIST)

TAR = tar
GZIP = --best
default: all

.SUFFIXES:
$(srcdir)/Makefile.in: Makefile.am $(top_srcdir)/configure.in $(ACLOCAL_M4) 
	cd $(top_srcdir) && $(AUTOMAKE) --gnits Makefile

Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status $(BUILT_SOURCES)
	cd $(top_builddir) \
	  && CONFIG_FILES=$@ CONFIG_HEADERS= $(SHELL) ./config.status

$(srcdir)/aclocal.m4:  configure.in  acinclude.m4
	cd $(srcdir) && $(ACLOCAL)

config.status: configure
	$(SHELL) ./config.status --recheck
$(srcdir)/configure: configure.in $(ACLOCAL_M4) $(CONFIGURE_DEPENDENCIES)
	cd $(srcdir) && $(AUTOCONF)

$(CONFIG_HEADER): stamp-h
stamp-h: $(CONFIG_HEADER_IN) $(top_builddir)/config.status
	cd $(top_builddir) \
	  && CONFIG_FILES= CONFIG_HEADERS=$(CONFIG_HEADER_FULL) \
	     $(SHELL) ./config.status
	@echo timestamp > stamp-h
$(srcdir)/$(CONFIG_HEADER_IN): stamp-h.in
$(srcdir)/stamp-h.in: $(top_srcdir)/configure.in $(ACLOCAL_M4) acconfig.h
	cd $(top_srcdir) && $(AUTOHEADER)
	echo timestamp > $(srcdir)/stamp-h.in

mostlyclean-hdr:

clean-hdr:

distclean-hdr:
	rm -f $(CONFIG_HEADER)

maintainer-clean-hdr:

# This directory's subdirectories are mostly independent; you can cd
# into them and run `make' without going through this Makefile.
# To change the values of `make' variables: instead of editing Makefiles,
# (1) if the variable is set in `config.status', edit `config.status'
#     (which will cause the Makefiles to be regenerated when you run `make');
# (2) otherwise, pass the desired values on the `make' command line.



all-recursive install-data-recursive install-exec-recursive \
installdirs-recursive install-recursive uninstall-recursive  \
check-recursive installcheck-recursive info-recursive dvi-recursive \
mostlyclean-recursive clean-recursive distclean-recursive \
maintainer-clean-recursive:
	@for subdir in $(SUBDIRS); do \
	  target=`echo $@ | sed s/-recursive//`; \
	  echo "Making $$target in $$subdir"; \
	  (cd $$subdir && $(MAKE) $$target) \
	   || case "$(MFLAGS)" in *k*) fail=yes;; *) exit 1;; esac; \
	done && test -z "$$fail"
tags-recursive:
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  (cd $$subdir && $(MAKE) tags); \
	done

tags: TAGS

TAGS: tags-recursive $(HEADERS) $(SOURCES) config.h.in $(TAGS_DEPENDENCIES)
	tags=; \
	here=`pwd`; \
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  test -f $$subdir/TAGS && tags="$$tags -i $$here/$$subdir/TAGS"; \
	done; \
	test -z "$(ETAGS_ARGS)config.h.in$(SOURCES)$(HEADERS)$$tags" \
	  || (cd $(srcdir) && etags $(ETAGS_ARGS) $$tags config.h.in $(SOURCES) $(HEADERS) -o $$here/TAGS)

mostlyclean-tags:

clean-tags:

distclean-tags:
	rm -f TAGS ID

maintainer-clean-tags:

distdir = $(PACKAGE)-$(VERSION)
# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	rm -rf $(distdir)
	GZIP=$(GZIP) $(TAR) zxf $(distdir).tar.gz --mode=a+r
	mkdir $(distdir)/=build
	mkdir $(distdir)/=inst
	dc_install_base=`cd $(distdir)/=inst && pwd`; \
	cd $(distdir)/=build \
	  && ../configure --with-included-gettext --srcdir=.. --prefix=$$dc_install_base \
	  && $(MAKE) \
	  && $(MAKE) dvi \
	  && $(MAKE) check \
	  && $(MAKE) install \
	  && $(MAKE) installcheck \
	  && $(MAKE) dist
	rm -rf $(distdir)
	@echo "========================"; \
	echo "$(distdir).tar.gz is ready for distribution"; \
	echo "========================"
dist: distdir
	-chmod -R a+r $(distdir)
	GZIP=$(GZIP) $(TAR) chozf $(distdir).tar.gz --mode=a+r $(distdir)
	rm -rf $(distdir)
dist-shar: distdir
	-chmod -R a+r $(distdir)
	rm -rf $(distdir)
dist-all: distdir
	-chmod -R a+r $(distdir)
	GZIP=$(GZIP) $(TAR) chozf $(distdir).tar.gz --mode=a+r $(distdir)
	rm -rf $(distdir)
distdir: $(DISTFILES)
	@if sed 15q $(srcdir)/NEWS | fgrep -e "$(VERSION)" > /dev/null; then :; else \
	  echo "NEWS not updated; not releasing" 1>&2; \
	  exit 1; \
	fi
	rm -rf $(distdir)
	mkdir $(distdir)
	-chmod 755 $(distdir)
	@for file in $(DISTFILES); do \
	  d=$(srcdir); \
	  test -f $(distdir)/$$file \
	  || ln $$d/$$file $(distdir)/$$file 2> /dev/null \
	  || cp -p $$d/$$file $(distdir)/$$file; \
	done
	for subdir in $(SUBDIRS); do		\
	  test -d $(distdir)/$$subdir		\
	  || mkdir $(distdir)/$$subdir		\
	  || exit 1;				\
	  chmod 755 $(distdir)/$$subdir;	\
	  (cd $$subdir && $(MAKE) distdir=../$(distdir)/$$subdir distdir) \
	    || exit 1; \
	done
info: info-recursive
dvi: dvi-recursive
check: all-am
	$(MAKE) check-recursive
installcheck: installcheck-recursive
all-recursive-am: $(CONFIG_HEADER)
	$(MAKE) all-recursive

all-am: Makefile config.h all-local

install-exec: install-exec-recursive
	@$(NORMAL_INSTALL)

install-data: install-data-recursive
	@$(NORMAL_INSTALL)

install: install-recursive
	@:

uninstall: uninstall-recursive

all: all-recursive-am all-am

install-strip:
	$(MAKE) INSTALL_PROGRAM='$(INSTALL_PROGRAM) -s' install
installdirs: installdirs-recursive


mostlyclean-generic:
	test -z "$(MOSTLYCLEANFILES)" || rm -f $(MOSTLYCLEANFILES)

clean-generic:
	test -z "$(CLEANFILES)" || rm -f $(CLEANFILES)

distclean-generic:
	rm -f Makefile $(DISTCLEANFILES)
	rm -f config.cache config.log stamp-h
	test -z "$(CONFIG_CLEAN_FILES)" || rm -f $(CONFIG_CLEAN_FILES)

maintainer-clean-generic:
	test -z "$(MAINTAINERCLEANFILES)" || rm -f $(MAINTAINERCLEANFILES)
	test -z "$(BUILT_SOURCES)" || rm -f $(BUILT_SOURCES)
mostlyclean-am:  mostlyclean-hdr mostlyclean-tags mostlyclean-generic

clean-am:  clean-hdr clean-tags clean-generic mostlyclean-am

distclean-am:  distclean-hdr distclean-tags distclean-generic clean-am

maintainer-clean-am:  maintainer-clean-hdr maintainer-clean-tags \
		maintainer-clean-generic distclean-am

mostlyclean:  mostlyclean-recursive mostlyclean-am

clean:  clean-recursive clean-am

distclean:  distclean-recursive distclean-am
	rm -f config.status

maintainer-clean:  maintainer-clean-recursive maintainer-clean-am
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."
	rm -f config.status

.PHONY: default mostlyclean-hdr distclean-hdr clean-hdr \
maintainer-clean-hdr install-data-recursive uninstall-data-recursive \
install-exec-recursive uninstall-exec-recursive installdirs-recursive \
uninstalldirs-recursive all-recursive check-recursive \
installcheck-recursive info-recursive dvi-recursive \
mostlyclean-recursive distclean-recursive clean-recursive \
maintainer-clean-recursive tags tags-recursive mostlyclean-tags \
distclean-tags clean-tags maintainer-clean-tags distdir info dvi \
installcheck all-recursive-am all-am install-exec install-data install \
uninstall all installdirs mostlyclean-generic distclean-generic \
clean-generic maintainer-clean-generic clean mostlyclean distclean \
maintainer-clean


all-local: $(CONFIG_HEADER)

id: ID

ID:
	cd lib && $(MAKE) $@
	cd src && $(MAKE) $@

dist-zoo: $(DISTFILES)
	rm -rf $(distdir)
	mkdir $(distdir)
	distdir=`cd $(distdir) && pwd` \
	  && cd $(srcdir) \
	  && automake --include-deps --output-dir=$$distdir
	@for file in $(DISTFILES); do		\
	  test -f $(distdir)/$$file \
	    || cp -p $(srcdir)/$$file $(distdir)/$$file; \
	done
	for subdir in $(SUBDIRS); do		\
	  test -d $(distdir)/$$subdir		\
	  || mkdir $(distdir)/$$subdir		\
	  || exit 1;				\
	  chmod 777 $(distdir)/$$subdir;	\
	  (cd $$subdir && $(MAKE) dist) || exit 1; \
	done
	@sublist="$(DIST_SUBDIRS)";		\
	for dir in $$sublist; do		\
	  echo copying directory $$dir;		\
	  tar -chf - $$dir | (cd $(distdir) && tar -xBpf -); \
	done
	chmod -R a+r $(distdir)
	find $(distdir) -type f | xargs dosfn
#	find $(distdir) -type f | xargs recode :ibmpc
	mv $(distdir) $(PACKAGE)
	find $(PACKAGE) -type f | zoo ahIq $(PACKAGE).zoo
	rm -rf $(PACKAGE)

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
