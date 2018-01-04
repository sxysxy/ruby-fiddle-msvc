
SHELL = /bin/sh

# V=0 quiet, V=1 verbose.  other values don't work.
V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
ECHO1 = $(V:1=@ :)
ECHO = $(ECHO1:0=@ echo)
NULLCMD = :

#### Start of system configuration section. ####
top_srcdir = $(topdir)/.
srcdir = $(top_srcdir)/ext/fiddle
topdir = ../..
hdrdir = $(top_srcdir)/include
arch_hdrdir = $(extout)/include/$(arch)
PATH_SEPARATOR = ;
VPATH = $(srcdir);$(arch_hdrdir)/ruby;$(hdrdir)/ruby
RUBYLIB =
RUBYOPT = -
prefix = $(DESTDIR)ruby250-x64-mswin64
exec_prefix = $(prefix)
rubylibprefix = $(prefix)/lib/$(RUBY_BASE_NAME)
bindir = $(exec_prefix)/bin
sbindir = $(exec_prefix)/sbin
libexecdir = $(exec_prefix)/libexec
datadir = $(prefix)/share
sysconfdir = $(DESTDIR)
sharedstatedir = $(prefix)/com
localstatedir = $(prefix)/var
libdir = $(exec_prefix)/lib
includedir = $(prefix)/include
oldincludedir = $(DESTDIR)/usr/include
infodir = $(datadir)/info
mandir = $(datadir)/man
ridir = $(datadir)/ri
docdir = $(datadir)/doc/$(RUBY_BASE_NAME)
archlibdir = $(libdir)/$(arch)
sitearchlibdir = $(libdir)/$(sitearch)
archincludedir = $(includedir)/$(arch)
sitearchincludedir = $(includedir)/$(sitearch)
rubyarchdir = $(rubylibdir)/$(arch)
rubylibdir = $(rubylibprefix)/$(ruby_version)
sitedir = $(rubylibprefix)/site_ruby
sitearchdir = $(sitelibdir)/$(sitearch)
sitelibdir = $(sitedir)/$(ruby_version)
vendordir = $(rubylibprefix)/vendor_ruby
vendorarchdir = $(vendorlibdir)/$(sitearch)
vendorlibdir = $(vendordir)/$(ruby_version)
rubyhdrdir = $(includedir)/$(RUBY_BASE_NAME)-$(ruby_version)
sitehdrdir = $(rubyhdrdir)/site_ruby
vendorhdrdir = $(rubyhdrdir)/vendor_ruby
rubyarchhdrdir = $(rubyhdrdir)/$(arch)
sitearchhdrdir = $(sitehdrdir)/$(sitearch)
vendorarchhdrdir = $(vendorhdrdir)/$(sitearch)
archdir = $(rubyarchdir)


CC = cl -nologo
CXX = $(CC)
LIBRUBY = $(RUBY_SO_NAME).lib
LIBRUBY_A = $(RUBY_SO_NAME)-static.lib
LIBRUBYARG_SHARED = $(LIBRUBY)
LIBRUBYARG_STATIC = $(LIBRUBY_A)
empty =
OUTFLAG = -Fe$(empty)
COUTFLAG = -Fo$(empty)
CSRCFLAG = -Tc$(empty)

RUBY_EXTCONF_H = extconf.h
cflags   = 
cxxflags = 
optflags = 
debugflags = 
warnflags = 
CCDLFLAGS = 
CFLAGS   = $(CCDLFLAGS) -MD -Zi -W2 -wd4100 -wd4127 -wd4210 -wd4214 -wd4255 -wd4574  -wd4668 -wd4710 -wd4711 -wd4820 -wd4996  -we4028 -we4142 -O2sy-  -Zm600 $(ARCH_FLAG)
INCFLAGS = -I. -I$(arch_hdrdir) -I$(hdrdir) -I$(srcdir) -I$(top_srcdir)
DEFS     = 
CPPFLAGS = -DRUBY_EXTCONF_H=\"$(RUBY_EXTCONF_H)\"  -D_WIN32_WINNT=0x0600  
CXXFLAGS = $(CCDLFLAGS) -MD -Zi -W2 -wd4100 -wd4127 -wd4210 -wd4214 -wd4255 -wd4574  -wd4668 -wd4710 -wd4711 -wd4820 -wd4996  -we4028 -we4142 -O2sy-  -Zm600 $(ARCH_FLAG)
ldflags  = -incremental:no -debug -opt:ref -opt:icf
dldflags = -incremental:no -debug -opt:ref -opt:icf -dll $(LIBPATH) 
ARCH_FLAG = 
DLDFLAGS = $(ldflags) $(dldflags) $(ARCH_FLAG)
LDSHARED = cl -nologo -LD
LDSHAREDXX = $(LDSHARED)
AR = lib -nologo
EXEEXT = .exe

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = x64-vcruntime140-ruby250
RUBY_BASE_NAME = ruby
RUBYW_INSTALL_NAME = rubyw

arch = x64-mswin64_140
sitearch = x64-vcruntime140
ruby_version = 2.5.0
ruby = $(topdir:/=\)\miniruby.exe -I'$(topdir)' -I'$(top_srcdir)/lib' -I'$(extout)/$(arch)' -I'$(extout)/common'
RUBY = $(ruby)
ruby_headers = {.;$(VPATH)}$(hdrdir)/ruby.h {.;$(VPATH)}$(hdrdir)/ruby/backward.h {.;$(VPATH)}$(hdrdir)/ruby/ruby.h {.;$(VPATH)}$(hdrdir)/ruby/defines.h {.;$(VPATH)}$(hdrdir)/ruby/missing.h {.;$(VPATH)}$(hdrdir)/ruby/intern.h {.;$(VPATH)}$(hdrdir)/ruby/st.h {.;$(VPATH)}$(hdrdir)/ruby/subst.h $(arch_hdrdir)/ruby/config.h $(RUBY_EXTCONF_H)

RM = $(COMSPEC) /C $(top_srcdir:/=\)\win32\rm.bat
RM_RF = $(RUBY) -run -e rm -- -rf
RMDIRS = $(COMSPEC) /C $(top_srcdir:/=\)\win32\rmdirs.bat
MAKEDIRS = $(COMSPEC) /E:ON /C $(top_srcdir:/=\)\win32\makedirs.bat
INSTALL = @$(RUBY) -run -e install -- -vp
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 0644
COPY = @$(RUBY) -run -e cp -- -v
TOUCH = exit >

#### End of system configuration section. ####

preload = 
EXTSO = 
libpath = . $(topdir)
LIBPATH =  -libpath:. -libpath:$(topdir)
DEFFILE = $(TARGET)-$(arch).def

CLEANFILES = mkmf.log $(DEFFILE)
DISTCLEANFILES = vc*.pdb
DISTCLEANDIRS = 

extout = $(topdir)/.ext
extout_prefix = $(extout)$(target_prefix)/
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED) libffi.lib  user32.lib advapi32.lib shell32.lib ws2_32.lib iphlpapi.lib imagehlp.lib shlwapi.lib  
ORIG_SRCS = closure.c conversions.c fiddle.c function.c handle.c pointer.c
SRCS = $(ORIG_SRCS) 
OBJS = closure.obj conversions.obj fiddle.obj function.obj handle.obj pointer.obj
HDRS = $(srcdir)/closure.h $(srcdir)/conversions.h $(srcdir)/fiddle.h $(srcdir)/function.h
LOCAL_HDRS = 
TARGET = fiddle
TARGET_NAME = fiddle
TARGET_ENTRY = Init_$(TARGET_NAME)
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

TIMESTAMP_DIR = $(extout)/.timestamp
BINDIR        = $(extout)/bin
RUBYCOMMONDIR = $(extout)/common
RUBYLIBDIR    = $(RUBYCOMMONDIR)$(target_prefix)
RUBYARCHDIR   = $(extout)/$(arch)$(target_prefix)
HDRDIR        = $(extout)/include/ruby$(target_prefix)
ARCHHDRDIR    = $(extout)/include/$(arch)/ruby$(target_prefix)
TARGET_SO_DIR = $(RUBYARCHDIR)/
TARGET_SO     = $(TARGET_SO_DIR)$(DLLIB)
CLEANLIBS     = $(TARGET_SO) 
CLEANOBJS     = *.obj $(TARGET)-$(arch).exp $(TARGET)-$(arch).lib $(TARGET)-$(arch).pdb *.bak
LIBFFI_CLEAN = none

all:    install
static: all
.PHONY: all install static install-so install-rb
.PHONY: clean clean-so clean-static clean-rb

clean-static::
clean-rb-default::
clean-rb::
clean-so::
clean: clean-so clean-static clean-rb-default clean-rb
		-$(Q)$(RM) $(CLEANLIBS:/=\) $(CLEANOBJS:/=\) $(CLEANFILES:/=\) .*.time

distclean-rb-default::
distclean-rb::
distclean-so::
distclean-static::
distclean: clean distclean-so distclean-static distclean-rb-default distclean-rb
		-$(Q)$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		-$(Q)$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES:/=\)
		-$(Q)$(RMDIRS) $(DISTCLEANDIRS:/=\)

realclean: distclean
install: install-so install-rb

install-so: $(TARGET_SO)
clean-so::
	-$(Q)$(RM) $(TARGET_SO:/=\) $(TIMESTAMP_DIR:/=\)\$(arch:/=\)\.time
	-$(Q)$(RMDIRS) $(TARGET_SO_DIR:/=\)
clean-static::
	-$(Q)$(RM) $(STATIC_LIB)
install-rb: pre-install-rb do-install-rb install-rb-default
install-rb-default: pre-install-rb-default do-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
do-install-rb:
do-install-rb-default:
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.fiddle.time
do-install-rb-default: $(RUBYLIBDIR)/fiddle/closure.rb
$(RUBYLIBDIR)/fiddle/closure.rb: $(srcdir)/lib/fiddle/closure.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.fiddle.time
	$(Q) $(COPY) $(srcdir)/lib/fiddle/closure.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR:/=\)\fiddle\closure.rb
do-install-rb-default: $(RUBYLIBDIR)/fiddle/cparser.rb
$(RUBYLIBDIR)/fiddle/cparser.rb: $(srcdir)/lib/fiddle/cparser.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.fiddle.time
	$(Q) $(COPY) $(srcdir)/lib/fiddle/cparser.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR:/=\)\fiddle\cparser.rb
do-install-rb-default: $(RUBYLIBDIR)/fiddle/function.rb
$(RUBYLIBDIR)/fiddle/function.rb: $(srcdir)/lib/fiddle/function.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.fiddle.time
	$(Q) $(COPY) $(srcdir)/lib/fiddle/function.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR:/=\)\fiddle\function.rb
do-install-rb-default: $(RUBYLIBDIR)/fiddle/import.rb
$(RUBYLIBDIR)/fiddle/import.rb: $(srcdir)/lib/fiddle/import.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.fiddle.time
	$(Q) $(COPY) $(srcdir)/lib/fiddle/import.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR:/=\)\fiddle\import.rb
do-install-rb-default: $(RUBYLIBDIR)/fiddle/pack.rb
$(RUBYLIBDIR)/fiddle/pack.rb: $(srcdir)/lib/fiddle/pack.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.fiddle.time
	$(Q) $(COPY) $(srcdir)/lib/fiddle/pack.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR:/=\)\fiddle\pack.rb
do-install-rb-default: $(RUBYLIBDIR)/fiddle/struct.rb
$(RUBYLIBDIR)/fiddle/struct.rb: $(srcdir)/lib/fiddle/struct.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.fiddle.time
	$(Q) $(COPY) $(srcdir)/lib/fiddle/struct.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR:/=\)\fiddle\struct.rb
do-install-rb-default: $(RUBYLIBDIR)/fiddle/types.rb
$(RUBYLIBDIR)/fiddle/types.rb: $(srcdir)/lib/fiddle/types.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.fiddle.time
	$(Q) $(COPY) $(srcdir)/lib/fiddle/types.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR:/=\)\fiddle\types.rb
do-install-rb-default: $(RUBYLIBDIR)/fiddle/value.rb
$(RUBYLIBDIR)/fiddle/value.rb: $(srcdir)/lib/fiddle/value.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.fiddle.time
	$(Q) $(COPY) $(srcdir)/lib/fiddle/value.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR:/=\)\fiddle\value.rb
pre-install-rb-default: $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
do-install-rb-default: $(RUBYLIBDIR)/fiddle.rb
$(RUBYLIBDIR)/fiddle.rb: $(srcdir)/lib/fiddle.rb $(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time
	$(Q) $(COPY) $(srcdir)/lib/fiddle.rb $(@D)
clean-rb-default::
	-$(Q)$(RM) $(RUBYLIBDIR:/=\)\fiddle.rb
pre-install-rb-default:
!if "$(Q)" == "@"
	@$(MAKE) -q do-install-rb-default || \
!endif
	$(ECHO1:0=echo) installing default fiddle libraries
clean-rb-default::
	-$(Q)$(RM) $(TIMESTAMP_DIR:/=\)\.RUBYCOMMONDIR.-.fiddle.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR:/=\)\fiddle
	-$(Q)$(RM) $(TIMESTAMP_DIR:/=\)\.RUBYCOMMONDIR.time
	-$(Q)$(RMDIRS) $(RUBYLIBDIR:/=\)
$(TIMESTAMP_DIR)/$(arch)/.time:
	$(Q) $(MAKEDIRS) $(@D) $(TARGET_SO_DIR)
	$(Q) $(TOUCH) $@
$(TIMESTAMP_DIR)/.RUBYCOMMONDIR.-.fiddle.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYLIBDIR)/fiddle
	$(Q) $(TOUCH) $@
$(TIMESTAMP_DIR)/.RUBYCOMMONDIR.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYLIBDIR)
	$(Q) $(TOUCH) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .mm .cxx .cpp .obj .asm

{$(srcdir)}.cc.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(srcdir)}.cc.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

{$(arch_hdrdir)/ruby}.cc.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(arch_hdrdir)/ruby}.cc.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

{$(hdrdir)/ruby}.cc.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(hdrdir)/ruby}.cc.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

.cc.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

.cc.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

{$(srcdir)}.mm.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(srcdir)}.mm.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

{$(arch_hdrdir)/ruby}.mm.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(arch_hdrdir)/ruby}.mm.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

{$(hdrdir)/ruby}.mm.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(hdrdir)/ruby}.mm.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

.mm.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

.mm.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

{$(srcdir)}.cxx.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(srcdir)}.cxx.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

{$(arch_hdrdir)/ruby}.cxx.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(arch_hdrdir)/ruby}.cxx.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

{$(hdrdir)/ruby}.cxx.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(hdrdir)/ruby}.cxx.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

.cxx.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

.cxx.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

{$(srcdir)}.cpp.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(srcdir)}.cpp.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

{$(arch_hdrdir)/ruby}.cpp.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(arch_hdrdir)/ruby}.cpp.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

{$(hdrdir)/ruby}.cpp.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

{$(hdrdir)/ruby}.cpp.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

.cpp.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\=/)

.cpp.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\=/)

{$(srcdir)}.c.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c $(CSRCFLAG)$(<:\=/)

{$(srcdir)}.c.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CC) $(CFLAGS) $(CPPFLAGS) -Fa$(@) -c $(CSRCFLAG)$(<:\=/)

{$(arch_hdrdir)/ruby}.c.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c $(CSRCFLAG)$(<:\=/)

{$(arch_hdrdir)/ruby}.c.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CC) $(CFLAGS) $(CPPFLAGS) -Fa$(@) -c $(CSRCFLAG)$(<:\=/)

{$(hdrdir)/ruby}.c.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c $(CSRCFLAG)$(<:\=/)

{$(hdrdir)/ruby}.c.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CC) $(CFLAGS) $(CPPFLAGS) -Fa$(@) -c $(CSRCFLAG)$(<:\=/)

.c.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c $(CSRCFLAG)$(<:\=/)

.c.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CC) $(CFLAGS) $(CPPFLAGS) -Fa$(@) -c $(CSRCFLAG)$(<:\=/)

{$(srcdir)}.m.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c $(CSRCFLAG)$(<:\=/)

{$(srcdir)}.m.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CC) $(CFLAGS) $(CPPFLAGS) -Fa$(@) -c $(CSRCFLAG)$(<:\=/)

{$(arch_hdrdir)/ruby}.m.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c $(CSRCFLAG)$(<:\=/)

{$(arch_hdrdir)/ruby}.m.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CC) $(CFLAGS) $(CPPFLAGS) -Fa$(@) -c $(CSRCFLAG)$(<:\=/)

{$(hdrdir)/ruby}.m.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c $(CSRCFLAG)$(<:\=/)

{$(hdrdir)/ruby}.m.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CC) $(CFLAGS) $(CPPFLAGS) -Fa$(@) -c $(CSRCFLAG)$(<:\=/)

.m.obj:
	$(ECHO) compiling $(<:\=/)
	$(Q) $(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c $(CSRCFLAG)$(<:\=/)

.m.asm:
	$(ECHO) translating $(<:\=/)
	$(Q) $(CC) $(CFLAGS) $(CPPFLAGS) -Fa$(@) -c $(CSRCFLAG)$(<:\=/)

$(TARGET_SO): $(DEFFILE) $(OBJS) Makefile $(TIMESTAMP_DIR)/$(arch)/.time
	$(ECHO) linking shared-object $(DLLIB)
	-$(Q)$(RM) $(@:/=\)
	$(Q) $(LDSHARED) -Fe$(@) $(OBJS) $(LIBS) $(LOCAL_LIBS) -link $(DLDFLAGS) -implib:$(*F:.so=)-$(arch).lib -pdb:$(*F:.so=)-$(arch).pdb -def:$(DEFFILE)
	$(Q) @if exist $(@).manifest $(RUBY) -run -e wait_writable -- -n 10 $(@)
	$(Q) @if exist $(@).manifest mt -nologo -manifest $(@).manifest -outputresource:$(@);2
	$(Q) @if exist $(@).manifest $(RM) $(@:/=\).manifest



$(DEFFILE): 
	$(ECHO) generating $(@:\=/)
	$(Q) (echo EXPORTS && echo $(TARGET_ENTRY)) > $@

###
$(OBJS): $(hdrdir)/ruby/win32.h

$(OBJS): $(RUBY_EXTCONF_H)

PWD =

CONFIGURE_LIBFFI = \
	$(LIBFFI_CONFIGURE) --disable-shared \
		--host=$(LIBFFI_ARCH) --enable-builddir=$(arch) \
		CC="$(CC)" CFLAGS="$(LIBFFI_CFLAGS)" \
		LD="$(LD)" LDFLAGS="$(LIBFFI_LDFLAGS)"

$(STATIC_LIB) $(RUBYARCHDIR)/$(DLLIB) $(DLLIB): $(LIBFFI_A)

$(OBJS): $(FFI_H)

.PHONY: .FORCE hdr

.FORCE:

hdr: $(FFI_H)

configure-libffi build-libffi: .FORCE
configure-libffi \
$(LIBFFI_DIR)/include/ffi.h \
$(LIBFFI_DIR)/include/ffitarget.h \
$(LIBFFI_DIR)/fficonfig.h \
$(LIBFFI_DIR)/Makefile:
	$(Q) $(MAKEDIRS) $(LIBFFI_DIR)
	$(Q) $(CONFIGURE_LIBFFI)

build-libffi $(LIBFFI_A):
	$(Q) $(SUBMAKE_PRE) $(MAKE) $(SUBMAKE_ARG)

clean-none:
clean-libffi:
	$(Q) $(SUBMAKE_PRE) $(MAKE) $(SUBMAKE_ARG) clean

distclean-none:
distclean-libffi:
	$(Q) $(SUBMAKE_PRE) $(MAKE) $(SUBMAKE_ARG) distclean
	$(Q) $(RM) $(LIBFFI_DIR)/local.exp
	$(Q) $(RUBY) -rfileutils -e "FileUtils.rmdir(Dir.glob(ARGV[0]+'/**/{,.*/}'), :parents=>true)" $(LIBFFI_DIR)

realclean-none:
realclean-libffi:
	$(Q) $(RMALL) $(LIBFFI_DIR)

.PHONY: clean-libffi distclean-libffi realclean-libffi
.PHONY: clean-none distclean-none realclean-none

clean: clean-$(LIBFFI_CLEAN)
distclean: distclean-$(LIBFFI_CLEAN)
realclean: realclean-$(LIBFFI_CLEAN)

.PHONY: configure configure-libffi

# AUTOGENERATED DEPENDENCIES START
closure.obj: $(RUBY_EXTCONF_H)
closure.obj: $(arch_hdrdir)/ruby/config.h
closure.obj: $(hdrdir)/ruby/backward.h
closure.obj: $(hdrdir)/ruby/defines.h
closure.obj: $(hdrdir)/ruby/encoding.h
closure.obj: $(hdrdir)/ruby/intern.h
closure.obj: $(hdrdir)/ruby/io.h
closure.obj: $(hdrdir)/ruby/missing.h
closure.obj: $(hdrdir)/ruby/onigmo.h
closure.obj: $(hdrdir)/ruby/oniguruma.h
closure.obj: $(hdrdir)/ruby/ruby.h
closure.obj: $(hdrdir)/ruby/st.h
closure.obj: $(hdrdir)/ruby/subst.h
closure.obj: $(hdrdir)/ruby/thread.h
closure.obj: $(top_srcdir)/include/ruby.h
closure.obj: $(top_srcdir)/internal.h
closure.obj: {.;$(VPATH)}closure.c
closure.obj: {.;$(VPATH)}closure.h
closure.obj: {.;$(VPATH)}conversions.h
closure.obj: {.;$(VPATH)}fiddle.h
closure.obj: {.;$(VPATH)}function.h
conversions.obj: $(RUBY_EXTCONF_H)
conversions.obj: $(arch_hdrdir)/ruby/config.h
conversions.obj: $(hdrdir)/ruby/backward.h
conversions.obj: $(hdrdir)/ruby/defines.h
conversions.obj: $(hdrdir)/ruby/intern.h
conversions.obj: $(hdrdir)/ruby/missing.h
conversions.obj: $(hdrdir)/ruby/ruby.h
conversions.obj: $(hdrdir)/ruby/st.h
conversions.obj: $(hdrdir)/ruby/subst.h
conversions.obj: $(top_srcdir)/include/ruby.h
conversions.obj: {.;$(VPATH)}closure.h
conversions.obj: {.;$(VPATH)}conversions.c
conversions.obj: {.;$(VPATH)}conversions.h
conversions.obj: {.;$(VPATH)}fiddle.h
conversions.obj: {.;$(VPATH)}function.h
fiddle.obj: $(RUBY_EXTCONF_H)
fiddle.obj: $(arch_hdrdir)/ruby/config.h
fiddle.obj: $(hdrdir)/ruby/backward.h
fiddle.obj: $(hdrdir)/ruby/defines.h
fiddle.obj: $(hdrdir)/ruby/intern.h
fiddle.obj: $(hdrdir)/ruby/missing.h
fiddle.obj: $(hdrdir)/ruby/ruby.h
fiddle.obj: $(hdrdir)/ruby/st.h
fiddle.obj: $(hdrdir)/ruby/subst.h
fiddle.obj: $(top_srcdir)/include/ruby.h
fiddle.obj: {.;$(VPATH)}closure.h
fiddle.obj: {.;$(VPATH)}conversions.h
fiddle.obj: {.;$(VPATH)}fiddle.c
fiddle.obj: {.;$(VPATH)}fiddle.h
fiddle.obj: {.;$(VPATH)}function.h
function.obj: $(RUBY_EXTCONF_H)
function.obj: $(arch_hdrdir)/ruby/config.h
function.obj: $(hdrdir)/ruby/backward.h
function.obj: $(hdrdir)/ruby/defines.h
function.obj: $(hdrdir)/ruby/intern.h
function.obj: $(hdrdir)/ruby/missing.h
function.obj: $(hdrdir)/ruby/ruby.h
function.obj: $(hdrdir)/ruby/st.h
function.obj: $(hdrdir)/ruby/subst.h
function.obj: $(hdrdir)/ruby/thread.h
function.obj: $(top_srcdir)/include/ruby.h
function.obj: {.;$(VPATH)}closure.h
function.obj: {.;$(VPATH)}conversions.h
function.obj: {.;$(VPATH)}fiddle.h
function.obj: {.;$(VPATH)}function.c
function.obj: {.;$(VPATH)}function.h
handle.obj: $(RUBY_EXTCONF_H)
handle.obj: $(arch_hdrdir)/ruby/config.h
handle.obj: $(hdrdir)/ruby/backward.h
handle.obj: $(hdrdir)/ruby/defines.h
handle.obj: $(hdrdir)/ruby/intern.h
handle.obj: $(hdrdir)/ruby/missing.h
handle.obj: $(hdrdir)/ruby/ruby.h
handle.obj: $(hdrdir)/ruby/st.h
handle.obj: $(hdrdir)/ruby/subst.h
handle.obj: $(top_srcdir)/include/ruby.h
handle.obj: {.;$(VPATH)}closure.h
handle.obj: {.;$(VPATH)}conversions.h
handle.obj: {.;$(VPATH)}fiddle.h
handle.obj: {.;$(VPATH)}function.h
handle.obj: {.;$(VPATH)}handle.c
pointer.obj: $(RUBY_EXTCONF_H)
pointer.obj: $(arch_hdrdir)/ruby/config.h
pointer.obj: $(hdrdir)/ruby/backward.h
pointer.obj: $(hdrdir)/ruby/defines.h
pointer.obj: $(hdrdir)/ruby/encoding.h
pointer.obj: $(hdrdir)/ruby/intern.h
pointer.obj: $(hdrdir)/ruby/io.h
pointer.obj: $(hdrdir)/ruby/missing.h
pointer.obj: $(hdrdir)/ruby/onigmo.h
pointer.obj: $(hdrdir)/ruby/oniguruma.h
pointer.obj: $(hdrdir)/ruby/ruby.h
pointer.obj: $(hdrdir)/ruby/st.h
pointer.obj: $(hdrdir)/ruby/subst.h
pointer.obj: $(top_srcdir)/include/ruby.h
pointer.obj: {.;$(VPATH)}closure.h
pointer.obj: {.;$(VPATH)}conversions.h
pointer.obj: {.;$(VPATH)}fiddle.h
pointer.obj: {.;$(VPATH)}function.h
pointer.obj: {.;$(VPATH)}pointer.c
# AUTOGENERATED DEPENDENCIES END
