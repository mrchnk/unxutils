# Makefile.in generated by automake 1.7.3 from Makefile.am.
# doc/Makefile.  Generated from Makefile.in by configure.

# Copyright 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003
# Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



srcdir = .
top_srcdir = ..

pkgdatadir = $(datadir)/file
pkglibdir = $(libdir)/file
pkgincludedir = $(includedir)/file
top_builddir = ..

am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
INSTALL = /bin/install -c
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
host_triplet = i686-pc-cygwin
ACLOCAL = ${SHELL} /misc/file-4.02/missing --run aclocal-1.7
AMDEP_FALSE = #
AMDEP_TRUE = 
AMTAR = ${SHELL} /misc/file-4.02/missing --run tar
AUTOCONF = ${SHELL} /misc/file-4.02/missing --run autoconf
AUTOHEADER = ${SHELL} /misc/file-4.02/missing --run autoheader
AUTOMAKE = ${SHELL} /misc/file-4.02/missing --run automake-1.7
AWK = gawk
CC = gcc
CCDEPMODE = depmode=gcc
CFLAGS = -g -O2
CPP = gcc -E
CPPFLAGS = 
CYGPATH_W = cygpath -w
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
ECHO_C = 
ECHO_N = -n
ECHO_T = 
EGREP = grep -E
EXEEXT = .exe
FSECT5_FALSE = 
FSECT5_TRUE = #
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = ${SHELL} $(install_sh) -c -s
LDFLAGS = 
LIBOBJS = 
LIBS = -lz 
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LN_S = ln -s
LTLIBOBJS = 
MAINT = #
MAINTAINER_MODE_FALSE = 
MAINTAINER_MODE_TRUE = #
MAKEINFO = ${SHELL} /misc/file-4.02/missing --run makeinfo
OBJEXT = o
PACKAGE = file
PACKAGE_BUGREPORT = 
PACKAGE_NAME = 
PACKAGE_STRING = 
PACKAGE_TARNAME = 
PACKAGE_VERSION = 
PATH_SEPARATOR = :
RANLIB = ranlib
SET_MAKE = 
SHELL = /bin/bash
STRIP = strip
VERSION = 4.02
ac_ct_CC = gcc
ac_ct_RANLIB = ranlib
ac_ct_STRIP = strip
am__fastdepCC_FALSE = 
am__fastdepCC_TRUE = #
am__include = include
am__leading_dot = .
am__quote = 
bindir = ${exec_prefix}/bin
build = i686-pc-cygwin
build_alias = 
build_cpu = i686
build_os = cygwin
build_vendor = pc
datadir = ${prefix}/share
exec_prefix = ${prefix}
fsect = 4
host = i686-pc-cygwin
host_alias = 
host_cpu = i686
host_os = cygwin
host_vendor = pc
includedir = ${prefix}/include
infodir = ${prefix}/info
install_sh = /misc/file-4.02/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localstatedir = ${prefix}/var
mandir = ${prefix}/man
oldincludedir = /usr/include
prefix = /usr/local
program_transform_name = s,x,x,
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
sysconfdir = ${prefix}/etc
target_alias = 
MAGIC = $(pkgdatadir)/magic
#man_MAGIC = magic.5
man_MAGIC = magic.4
man_MANS = file.1 $(man_MAGIC) libmagic.3

EXTRA_DIST = file.man magic.man libmagic.man
CLEANFILES = $(man_MANS)
subdir = doc
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = $(top_builddir)/config.h
CONFIG_CLEAN_FILES =
DIST_SOURCES =

NROFF = nroff
MANS = $(man_MANS)
DIST_COMMON = Makefile.am Makefile.in
all: all-am

.SUFFIXES:
$(srcdir)/Makefile.in: # Makefile.am  $(top_srcdir)/configure.in $(ACLOCAL_M4)
	cd $(top_srcdir) && \
	  $(AUTOMAKE) --gnu  doc/Makefile
Makefile: # $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@ $(am__depfiles_maybe)

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs

distclean-libtool:
	-rm -f libtool
uninstall-info-am:

man1dir = $(mandir)/man1
install-man1: $(man1_MANS) $(man_MANS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(man1dir)
	@list='$(man1_MANS) $(dist_man1_MANS) $(nodist_man1_MANS)'; \
	l2='$(man_MANS) $(dist_man_MANS) $(nodist_man_MANS)'; \
	for i in $$l2; do \
	  case "$$i" in \
	    *.1*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  if test -f $(srcdir)/$$i; then file=$(srcdir)/$$i; \
	  else file=$$i; fi; \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  case "$$ext" in \
	    1*) ;; \
	    *) ext='1' ;; \
	  esac; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed -e 's/^.*\///'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " $(INSTALL_DATA) $$file $(DESTDIR)$(man1dir)/$$inst"; \
	  $(INSTALL_DATA) $$file $(DESTDIR)$(man1dir)/$$inst; \
	done
uninstall-man1:
	@$(NORMAL_UNINSTALL)
	@list='$(man1_MANS) $(dist_man1_MANS) $(nodist_man1_MANS)'; \
	l2='$(man_MANS) $(dist_man_MANS) $(nodist_man_MANS)'; \
	for i in $$l2; do \
	  case "$$i" in \
	    *.1*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  case "$$ext" in \
	    1*) ;; \
	    *) ext='1' ;; \
	  esac; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed -e 's/^.*\///'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " rm -f $(DESTDIR)$(man1dir)/$$inst"; \
	  rm -f $(DESTDIR)$(man1dir)/$$inst; \
	done

man3dir = $(mandir)/man3
install-man3: $(man3_MANS) $(man_MANS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(man3dir)
	@list='$(man3_MANS) $(dist_man3_MANS) $(nodist_man3_MANS)'; \
	l2='$(man_MANS) $(dist_man_MANS) $(nodist_man_MANS)'; \
	for i in $$l2; do \
	  case "$$i" in \
	    *.3*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  if test -f $(srcdir)/$$i; then file=$(srcdir)/$$i; \
	  else file=$$i; fi; \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  case "$$ext" in \
	    3*) ;; \
	    *) ext='3' ;; \
	  esac; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed -e 's/^.*\///'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " $(INSTALL_DATA) $$file $(DESTDIR)$(man3dir)/$$inst"; \
	  $(INSTALL_DATA) $$file $(DESTDIR)$(man3dir)/$$inst; \
	done
uninstall-man3:
	@$(NORMAL_UNINSTALL)
	@list='$(man3_MANS) $(dist_man3_MANS) $(nodist_man3_MANS)'; \
	l2='$(man_MANS) $(dist_man_MANS) $(nodist_man_MANS)'; \
	for i in $$l2; do \
	  case "$$i" in \
	    *.3*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  case "$$ext" in \
	    3*) ;; \
	    *) ext='3' ;; \
	  esac; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed -e 's/^.*\///'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " rm -f $(DESTDIR)$(man3dir)/$$inst"; \
	  rm -f $(DESTDIR)$(man3dir)/$$inst; \
	done

man4dir = $(mandir)/man4
install-man4: $(man4_MANS) $(man_MANS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(man4dir)
	@list='$(man4_MANS) $(dist_man4_MANS) $(nodist_man4_MANS)'; \
	l2='$(man_MANS) $(dist_man_MANS) $(nodist_man_MANS)'; \
	for i in $$l2; do \
	  case "$$i" in \
	    *.4*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  if test -f $(srcdir)/$$i; then file=$(srcdir)/$$i; \
	  else file=$$i; fi; \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  case "$$ext" in \
	    4*) ;; \
	    *) ext='4' ;; \
	  esac; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed -e 's/^.*\///'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " $(INSTALL_DATA) $$file $(DESTDIR)$(man4dir)/$$inst"; \
	  $(INSTALL_DATA) $$file $(DESTDIR)$(man4dir)/$$inst; \
	done
uninstall-man4:
	@$(NORMAL_UNINSTALL)
	@list='$(man4_MANS) $(dist_man4_MANS) $(nodist_man4_MANS)'; \
	l2='$(man_MANS) $(dist_man_MANS) $(nodist_man_MANS)'; \
	for i in $$l2; do \
	  case "$$i" in \
	    *.4*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  case "$$ext" in \
	    4*) ;; \
	    *) ext='4' ;; \
	  esac; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed -e 's/^.*\///'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " rm -f $(DESTDIR)$(man4dir)/$$inst"; \
	  rm -f $(DESTDIR)$(man4dir)/$$inst; \
	done

man5dir = $(mandir)/man5
install-man5: $(man5_MANS) $(man_MANS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(man5dir)
	@list='$(man5_MANS) $(dist_man5_MANS) $(nodist_man5_MANS)'; \
	l2='$(man_MANS) $(dist_man_MANS) $(nodist_man_MANS)'; \
	for i in $$l2; do \
	  case "$$i" in \
	    *.5*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  if test -f $(srcdir)/$$i; then file=$(srcdir)/$$i; \
	  else file=$$i; fi; \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  case "$$ext" in \
	    5*) ;; \
	    *) ext='5' ;; \
	  esac; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed -e 's/^.*\///'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " $(INSTALL_DATA) $$file $(DESTDIR)$(man5dir)/$$inst"; \
	  $(INSTALL_DATA) $$file $(DESTDIR)$(man5dir)/$$inst; \
	done
uninstall-man5:
	@$(NORMAL_UNINSTALL)
	@list='$(man5_MANS) $(dist_man5_MANS) $(nodist_man5_MANS)'; \
	l2='$(man_MANS) $(dist_man_MANS) $(nodist_man_MANS)'; \
	for i in $$l2; do \
	  case "$$i" in \
	    *.5*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  case "$$ext" in \
	    5*) ;; \
	    *) ext='5' ;; \
	  esac; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed -e 's/^.*\///'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " rm -f $(DESTDIR)$(man5dir)/$$inst"; \
	  rm -f $(DESTDIR)$(man5dir)/$$inst; \
	done
tags: TAGS
TAGS:

ctags: CTAGS
CTAGS:

DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)

top_distdir = ..
distdir = $(top_distdir)/$(PACKAGE)-$(VERSION)

distdir: $(DISTFILES)
	@srcdirstrip=`echo "$(srcdir)" | sed 's|.|.|g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's|.|.|g'`; \
	list='$(DISTFILES)'; for file in $$list; do \
	  case $$file in \
	    $(srcdir)/*) file=`echo "$$file" | sed "s|^$$srcdirstrip/||"`;; \
	    $(top_srcdir)/*) file=`echo "$$file" | sed "s|^$$topsrcdirstrip/|$(top_builddir)/|"`;; \
	  esac; \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  dir=`echo "$$file" | sed -e 's,/[^/]*$$,,'`; \
	  if test "$$dir" != "$$file" && test "$$dir" != "."; then \
	    dir="/$$dir"; \
	    $(mkinstalldirs) "$(distdir)$$dir"; \
	  else \
	    dir=''; \
	  fi; \
	  if test -d $$d/$$file; then \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -pR $(srcdir)/$$file $(distdir)$$dir || exit 1; \
	    fi; \
	    cp -pR $$d/$$file $(distdir)$$dir || exit 1; \
	  else \
	    test -f $(distdir)/$$file \
	    || cp -p $$d/$$file $(distdir)/$$file \
	    || exit 1; \
	  fi; \
	done
check-am: all-am
check: check-am
all-am: Makefile $(MANS)

installdirs:
	$(mkinstalldirs) $(DESTDIR)$(man1dir) $(DESTDIR)$(man3dir) $(DESTDIR)$(man4dir) $(DESTDIR)$(man5dir)

install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	  INSTALL_STRIP_FLAG=-s \
	  `test -z '$(STRIP)' || \
	    echo "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'"` install
mostlyclean-generic:

clean-generic:
	-test -z "$(CLEANFILES)" || rm -f $(CLEANFILES)

distclean-generic:
	-rm -f Makefile $(CONFIG_CLEAN_FILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean: clean-am

clean-am: clean-generic clean-libtool mostlyclean-am

distclean: distclean-am

distclean-am: clean-am distclean-generic distclean-libtool

dvi: dvi-am

dvi-am:

info: info-am

info-am:

install-data-am: install-man

install-exec-am:

install-info: install-info-am

install-man: install-man1 install-man3 install-man4 install-man5

installcheck-am:

maintainer-clean: maintainer-clean-am

maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-generic mostlyclean-libtool

pdf: pdf-am

pdf-am:

ps: ps-am

ps-am:

uninstall-am: uninstall-info-am uninstall-man

uninstall-man: uninstall-man1 uninstall-man3 uninstall-man4 \
	uninstall-man5

.PHONY: all all-am check check-am clean clean-generic clean-libtool \
	distclean distclean-generic distclean-libtool distdir dvi \
	dvi-am info info-am install install-am install-data \
	install-data-am install-exec install-exec-am install-info \
	install-info-am install-man install-man1 install-man3 \
	install-man4 install-man5 install-strip installcheck \
	installcheck-am installdirs maintainer-clean \
	maintainer-clean-generic mostlyclean mostlyclean-generic \
	mostlyclean-libtool pdf pdf-am ps ps-am uninstall uninstall-am \
	uninstall-info-am uninstall-man uninstall-man1 uninstall-man3 \
	uninstall-man4 uninstall-man5


file.1:	Makefile file.man
	@rm -f $@
	sed -e s@__CSECTION__@1@g \
	    -e s@__FSECTION__@${fsect}@g \
	    -e s@__VERSION__@${VERSION}@g \
	    -e s@__MAGIC__@${MAGIC}@g $(srcdir)/file.man > $@

magic.${fsect}: Makefile magic.man
	@rm -f $@
	sed -e s@__CSECTION__@1@g \
	    -e s@__FSECTION__@${fsect}@g \
	    -e s@__VERSION__@${VERSION}@g \
	    -e s@__MAGIC__@${MAGIC}@g $(srcdir)/magic.man > $@

libmagic.3: Makefile libmagic.man
	@rm -f $@
	sed -e s@__CSECTION__@1@g \
	    -e s@__FSECTION__@${fsect}@g \
	    -e s@__VERSION__@${VERSION}@g \
	    -e s@__MAGIC__@${MAGIC}@g $(srcdir)/libmagic.man > $@
# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
