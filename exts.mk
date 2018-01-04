V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
ECHO1 = $(V:1=@:)
ECHO = $(ECHO1:0=@echo)
MFLAGS = -$(MAKEFLAGS)

ruby = $(topdir:/=\)\miniruby.exe -I'$(topdir)' -I'$(top_srcdir)/lib' \
       -I'$(extout)/$(arch)' -I'$(extout)/common'
RUBY = $(ruby)
extensions = ext/fiddle/.
EXTOBJS = dmyext.obj
EXTLIBS =
EXTSO =
EXTLDFLAGS =
EXTINITS =
SUBMAKEOPTS = DLDOBJS="$(EXTOBJS) $(EXTENCS)" EXTOBJS= \
	      EXTSOLIBS="$(EXTLIBS)" LIBRUBY_SO_UPDATE=$(LIBRUBY_EXTS) \
	      EXTLDFLAGS="$(EXTLDFLAGS)" EXTINITS="$(EXTINITS)" \
	      UPDATE_LIBRARIES="$(UPDATE_LIBRARIES)" SHOWFLAGS=
NOTE_MESG = $(RUBY) $(top_srcdir)/tool/colorize.rb skip
NOTE_NAME = $(RUBY) $(top_srcdir)/tool/colorize.rb fail

all: $(extensions:/.=/all)
all: note
install: $(extensions:/.=/install)
install: note
static: $(extensions:/.=/static)
static: note
install-so: $(extensions:/.=/install-so)
install-so: note
install-rb: $(extensions:/.=/install-rb)
install-rb: note
clean: $(extensions:/.=/clean)
distclean: $(extensions:/.=/distclean)
realclean: $(extensions:/.=/realclean)

clean:
	-$(Q)$(RM) ext/extinit.obj
distclean:
	-$(Q)$(RM) ext/extinit.c

ruby.exe rubyw.exe: $(extensions:/.=/all)
all static: ruby.exe rubyw.exe
ruby.exe rubyw.exe: $(EXTOBJS)
ruby.exe:
	$(Q)$(MAKE) $(MFLAGS) $(SUBMAKEOPTS) $@
rubyw.exe:
	$(Q)$(MAKE) $(MFLAGS) $(SUBMAKEOPTS) $@
libencs:
	$(Q)$(MAKE) -f enc.mk V=$(V) $@

ext/fiddle/all:
	$(Q)cd $(@D) && $(MAKE) $(MFLAGS) V=$(V) $(@F)
ext/fiddle/install:
	$(Q)cd $(@D) && $(MAKE) $(MFLAGS) V=$(V) $(@F)
ext/fiddle/static:
	$(Q)cd $(@D) && $(MAKE) $(MFLAGS) V=$(V) $(@F)
ext/fiddle/install-so:
	$(Q)cd $(@D) && $(MAKE) $(MFLAGS) V=$(V) $(@F)
ext/fiddle/install-rb:
	$(Q)cd $(@D) && $(MAKE) $(MFLAGS) V=$(V) $(@F)
ext/fiddle/clean:
	$(Q)cd $(@D) && $(MAKE) $(MFLAGS) V=$(V) $(@F)
ext/fiddle/distclean:
	$(Q)cd $(@D) && $(MAKE) $(MFLAGS) V=$(V) $(@F)
ext/fiddle/realclean:
	$(Q)cd $(@D) && $(MAKE) $(MFLAGS) V=$(V) $(@F)

extso:
	@echo EXTSO=$(EXTSO)

note:
