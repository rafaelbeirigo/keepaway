# Makefile for Keepaway Players

CC    	= g++
COMPILE = $(CC) $(INCLUDES) ${FLAGS} ${DEFINES}
YACC = bison

SRC_DIR = .
DST_DIR = .
TARGET  = keepaway_player

# ==== INCLUDES =================================================

SOCCER_INCLUDES	= 
INCLUDES	= $(SOCCER_INCLUDES)

# ==== FLAGS ====================================================

# Substitute operating system that is used:
# SunOS_5 linux
OSFLAGS      	= ${OSFLAGS_linux}
CFLAGS_LIBS     = ${CLIBS_linux}
#OSFLAGS        = $(OSFLAGS_SunOS_5)
#CFLAGS_LIBS    = ${CLIBS_SunOS_5}

CFLAGS_DEBUG	= -g
CFLAGS_OPT     	= #-O3 #-static
CFLAGS_WARN     = -Wall

OSFLAGS_SunOS_5 = -DSolaris 
OSFLAGS_linux   = -Dlinux -rdynamic

CLIBS_SunOS_5   = 
CLIBS_linux     =

FLAGS           = ${OSFLAGS} ${CFLAGS_OPT} ${CFLAGS_DEBUG} ${CFLAGS_WARN}

# ==== LIBS ====================================================

CLIBS_SunOS_5   = -lsocket -lnsl -lpthread
CLIBS_linux     = -lpthread -ldl

# ==== DEFINES =================================================
#DEFINES	        = -DEC_LOG_ENABLED=1

# ==== SOURCES =================================================

SRCS		=	\
		Connection.cc \
		SenseHandler.cc \
		ActHandler.cc \
		SoccerTypes.cc \
		Objects.cc \
		WorldModel.cc \
		WorldModelHighLevel.cc \
		WorldModelPredict.cc \
		WorldModelUpdate.cc \
		WorldModelKeepaway.cc \
		WorldModelSayMsgTypes.cc \
		ServerSettings.cc \
		PlayerSettings.cc \
		GenericValues.cc \
		Formations.cc \
		Geometry.cc \
		Parse.cc \
		Logger.cc \
		LoggerDraw.cc \

SRCS_PLAYER 	= ${SRCS} \
		BasicPlayer.cc \
		KeepawayPlayer.cc \
		HandCodedAgent.cc \
		tiles2.cc \
		LinearSarsaAgent.cc \
		main.cc

OBJS_PLAYER	= $(SRCS_PLAYER:.cc=.o)

# ==== RULES ==================================================

all::	$(TARGET) demo_extension.so

.cc.o:
	$(COMPILE) -c -o $@ $(@F:%.o=%.cc)

# TODO Windows and Mac versions of this.
# TODO Convert the whole build to CMake?
demo_extension.so: DemoExtension.cc
	$(COMPILE) -fPIC -shared -o demo_extension.so DemoExtension.cc

keepaway_player: $(OBJS_PLAYER)  
	$(COMPILE) -o  $@ $(OBJS_PLAYER) ${CFLAGS_LIBS}

update:
	cvs update

commit:
	cvs commit

clean:
	rm -f $(TARGET) $(OBJS_PLAYER) *core *~ a.out

depend:
	gccmakedep $(DEPENDFLAGS) -s "# DO NOT DELETE THIS LINE" -- $(INCLUDES) -- $(SRCS_PLAYER)

# DO NOT DELETE THIS LINE
Connection.o: Connection.cc /usr/include/errno.h /usr/include/features.h \
 /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/x86_64-linux-gnu/bits/errno.h /usr/include/linux/errno.h \
 /usr/include/x86_64-linux-gnu/asm/errno.h \
 /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
 /usr/include/string.h /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/x86_64-linux-gnu/sys/types.h \
 /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/time.h \
 /usr/include/endian.h /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/sys/sysmacros.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/x86_64-linux-gnu/sys/socket.h \
 /usr/include/x86_64-linux-gnu/sys/uio.h \
 /usr/include/x86_64-linux-gnu/bits/uio.h \
 /usr/include/x86_64-linux-gnu/bits/socket.h \
 /usr/include/x86_64-linux-gnu/bits/sockaddr.h \
 /usr/include/x86_64-linux-gnu/asm/socket.h \
 /usr/include/asm-generic/socket.h \
 /usr/include/x86_64-linux-gnu/asm/sockios.h \
 /usr/include/asm-generic/sockios.h Connection.h /usr/include/stdio.h \
 /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
 /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/include/c++/4.6/exception /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc /usr/include/netdb.h \
 /usr/include/netinet/in.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdint.h /usr/include/stdint.h \
 /usr/include/x86_64-linux-gnu/bits/in.h /usr/include/rpc/netdb.h \
 /usr/include/x86_64-linux-gnu/bits/siginfo.h \
 /usr/include/x86_64-linux-gnu/bits/netdb.h /usr/include/arpa/inet.h \
 Logger.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc /usr/include/c++/4.6/iomanip \
 /usr/include/c++/4.6/set /usr/include/c++/4.6/bits/stl_tree.h \
 /usr/include/c++/4.6/bits/stl_set.h \
 /usr/include/c++/4.6/bits/stl_multiset.h \
 /usr/include/x86_64-linux-gnu/sys/time.h
SenseHandler.o: SenseHandler.cc SenseHandler.h Connection.h \
 /usr/include/stdio.h /usr/include/features.h \
 /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/libio.h \
 /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
 /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/x86_64-linux-gnu/bits/wchar.h /usr/include/xlocale.h \
 /usr/include/c++/4.6/exception /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc /usr/include/netdb.h \
 /usr/include/netinet/in.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdint.h /usr/include/stdint.h \
 /usr/include/x86_64-linux-gnu/sys/socket.h \
 /usr/include/x86_64-linux-gnu/sys/uio.h \
 /usr/include/x86_64-linux-gnu/sys/types.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h \
 /usr/include/x86_64-linux-gnu/sys/sysmacros.h \
 /usr/include/x86_64-linux-gnu/bits/uio.h \
 /usr/include/x86_64-linux-gnu/bits/socket.h \
 /usr/include/x86_64-linux-gnu/bits/sockaddr.h \
 /usr/include/x86_64-linux-gnu/asm/socket.h \
 /usr/include/asm-generic/socket.h \
 /usr/include/x86_64-linux-gnu/asm/sockios.h \
 /usr/include/asm-generic/sockios.h \
 /usr/include/x86_64-linux-gnu/bits/in.h /usr/include/rpc/netdb.h \
 /usr/include/x86_64-linux-gnu/bits/siginfo.h \
 /usr/include/x86_64-linux-gnu/bits/netdb.h /usr/include/arpa/inet.h \
 WorldModel.h Objects.h SoccerTypes.h Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h PlayerSettings.h Logger.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc /usr/include/c++/4.6/iomanip \
 /usr/include/c++/4.6/set /usr/include/c++/4.6/bits/stl_tree.h \
 /usr/include/c++/4.6/bits/stl_set.h \
 /usr/include/c++/4.6/bits/stl_multiset.h \
 /usr/include/x86_64-linux-gnu/sys/time.h LoggerDraw.h Formations.h \
 /usr/include/c++/4.6/list /usr/include/c++/4.6/bits/stl_list.h \
 /usr/include/c++/4.6/bits/list.tcc ActHandler.h Parse.h \
 WorldModelSayMsgFactory.h SayMsgFactory.h SayMsgTypes.h SayMsgIDs.h \
 SayMsgDataTypes.h /usr/include/assert.h WorldModelSayMsgTypes.h \
 /usr/include/signal.h /usr/include/x86_64-linux-gnu/bits/signum.h \
 /usr/include/x86_64-linux-gnu/bits/sigaction.h \
 /usr/include/x86_64-linux-gnu/bits/sigcontext.h \
 /usr/include/x86_64-linux-gnu/bits/sigstack.h \
 /usr/include/x86_64-linux-gnu/sys/ucontext.h \
 /usr/include/x86_64-linux-gnu/bits/sigthread.h /usr/include/string.h
ActHandler.o: ActHandler.cc ActHandler.h Connection.h \
 /usr/include/stdio.h /usr/include/features.h \
 /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/libio.h \
 /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
 /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/x86_64-linux-gnu/bits/wchar.h /usr/include/xlocale.h \
 /usr/include/c++/4.6/exception /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc /usr/include/netdb.h \
 /usr/include/netinet/in.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdint.h /usr/include/stdint.h \
 /usr/include/x86_64-linux-gnu/sys/socket.h \
 /usr/include/x86_64-linux-gnu/sys/uio.h \
 /usr/include/x86_64-linux-gnu/sys/types.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h \
 /usr/include/x86_64-linux-gnu/sys/sysmacros.h \
 /usr/include/x86_64-linux-gnu/bits/uio.h \
 /usr/include/x86_64-linux-gnu/bits/socket.h \
 /usr/include/x86_64-linux-gnu/bits/sockaddr.h \
 /usr/include/x86_64-linux-gnu/asm/socket.h \
 /usr/include/asm-generic/socket.h \
 /usr/include/x86_64-linux-gnu/asm/sockios.h \
 /usr/include/asm-generic/sockios.h \
 /usr/include/x86_64-linux-gnu/bits/in.h /usr/include/rpc/netdb.h \
 /usr/include/x86_64-linux-gnu/bits/siginfo.h \
 /usr/include/x86_64-linux-gnu/bits/netdb.h /usr/include/arpa/inet.h \
 WorldModel.h Objects.h SoccerTypes.h Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h PlayerSettings.h Logger.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc /usr/include/c++/4.6/iomanip \
 /usr/include/c++/4.6/set /usr/include/c++/4.6/bits/stl_tree.h \
 /usr/include/c++/4.6/bits/stl_set.h \
 /usr/include/c++/4.6/bits/stl_multiset.h \
 /usr/include/x86_64-linux-gnu/sys/time.h LoggerDraw.h Formations.h \
 /usr/include/c++/4.6/list /usr/include/c++/4.6/bits/stl_list.h \
 /usr/include/c++/4.6/bits/list.tcc /usr/include/poll.h \
 /usr/include/x86_64-linux-gnu/sys/poll.h \
 /usr/include/x86_64-linux-gnu/bits/poll.h /usr/include/c++/4.6/cstring \
 /usr/include/string.h /usr/include/signal.h \
 /usr/include/x86_64-linux-gnu/bits/signum.h \
 /usr/include/x86_64-linux-gnu/bits/sigaction.h \
 /usr/include/x86_64-linux-gnu/bits/sigcontext.h \
 /usr/include/x86_64-linux-gnu/bits/sigstack.h \
 /usr/include/x86_64-linux-gnu/sys/ucontext.h \
 /usr/include/x86_64-linux-gnu/bits/sigthread.h
SoccerTypes.o: SoccerTypes.cc /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/wchar.h /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/c++/4.6/exception \
 /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc /usr/include/libio.h \
 /usr/include/_G_config.h /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h /usr/include/string.h \
 SoccerTypes.h Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h Parse.h
Objects.o: Objects.cc Objects.h SoccerTypes.h \
 /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/wchar.h /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/c++/4.6/exception \
 /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h /usr/include/stdlib.h \
 /usr/include/x86_64-linux-gnu/bits/waitflags.h \
 /usr/include/x86_64-linux-gnu/bits/waitstatus.h \
 /usr/include/x86_64-linux-gnu/sys/types.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h \
 /usr/include/x86_64-linux-gnu/sys/sysmacros.h /usr/include/alloca.h \
 /usr/include/string.h
WorldModel.o: WorldModel.cc /usr/include/stdio.h /usr/include/features.h \
 /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/libio.h \
 /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h /usr/include/errno.h \
 /usr/include/x86_64-linux-gnu/bits/errno.h /usr/include/linux/errno.h \
 /usr/include/x86_64-linux-gnu/asm/errno.h \
 /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
 /usr/include/strings.h /usr/include/xlocale.h /usr/include/pthread.h \
 /usr/include/endian.h /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h /usr/include/sched.h \
 /usr/include/time.h /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/string.h \
 /usr/include/math.h /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h /usr/include/c++/4.6/map \
 /usr/include/c++/4.6/bits/stl_tree.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/exception /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/stl_map.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/stl_multimap.h \
 /usr/include/c++/4.6/bits/range_access.h WorldModel.h Objects.h \
 SoccerTypes.h /usr/include/c++/4.6/iostream /usr/include/c++/4.6/ostream \
 /usr/include/c++/4.6/ios /usr/include/c++/4.6/iosfwd \
 /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/unistd.h /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc Geometry.h ServerSettings.h \
 GenericValues.h PlayerSettings.h Logger.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc /usr/include/c++/4.6/iomanip \
 /usr/include/c++/4.6/set /usr/include/c++/4.6/bits/stl_set.h \
 /usr/include/c++/4.6/bits/stl_multiset.h \
 /usr/include/x86_64-linux-gnu/sys/time.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h LoggerDraw.h Formations.h \
 /usr/include/c++/4.6/list /usr/include/c++/4.6/bits/stl_list.h \
 /usr/include/c++/4.6/bits/list.tcc
WorldModelHighLevel.o: WorldModelHighLevel.cc \
 /usr/include/c++/4.6/cstring \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/string.h /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/c++/4.6/list \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/exception /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/stl_list.h \
 /usr/include/c++/4.6/initializer_list /usr/include/c++/4.6/bits/list.tcc \
 /usr/include/stdio.h /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/libio.h \
 /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h WorldModel.h Objects.h \
 SoccerTypes.h /usr/include/c++/4.6/iostream /usr/include/c++/4.6/ostream \
 /usr/include/c++/4.6/ios /usr/include/c++/4.6/iosfwd \
 /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h PlayerSettings.h Logger.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc /usr/include/c++/4.6/iomanip \
 /usr/include/c++/4.6/set /usr/include/c++/4.6/bits/stl_tree.h \
 /usr/include/c++/4.6/bits/stl_set.h \
 /usr/include/c++/4.6/bits/stl_multiset.h \
 /usr/include/x86_64-linux-gnu/sys/time.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h LoggerDraw.h Formations.h
WorldModelPredict.o: WorldModelPredict.cc /usr/include/stdio.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/libio.h \
 /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h WorldModel.h Objects.h \
 SoccerTypes.h /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/x86_64-linux-gnu/bits/wchar.h /usr/include/xlocale.h \
 /usr/include/c++/4.6/exception /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h PlayerSettings.h Logger.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc /usr/include/c++/4.6/iomanip \
 /usr/include/c++/4.6/set /usr/include/c++/4.6/bits/stl_tree.h \
 /usr/include/c++/4.6/bits/stl_set.h \
 /usr/include/c++/4.6/bits/stl_multiset.h \
 /usr/include/x86_64-linux-gnu/sys/time.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h LoggerDraw.h Formations.h \
 /usr/include/c++/4.6/list /usr/include/c++/4.6/bits/stl_list.h \
 /usr/include/c++/4.6/bits/list.tcc
WorldModelUpdate.o: WorldModelUpdate.cc WorldModel.h Objects.h \
 SoccerTypes.h /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/wchar.h /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/c++/4.6/exception \
 /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h PlayerSettings.h Logger.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/libio.h /usr/include/_G_config.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc /usr/include/c++/4.6/iomanip \
 /usr/include/c++/4.6/set /usr/include/c++/4.6/bits/stl_tree.h \
 /usr/include/c++/4.6/bits/stl_set.h \
 /usr/include/c++/4.6/bits/stl_multiset.h \
 /usr/include/x86_64-linux-gnu/sys/time.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h LoggerDraw.h Formations.h \
 /usr/include/c++/4.6/list /usr/include/c++/4.6/bits/stl_list.h \
 /usr/include/c++/4.6/bits/list.tcc Parse.h SayMsgDecoder.h \
 /usr/include/c++/4.6/vector /usr/include/c++/4.6/bits/stl_construct.h \
 /usr/include/c++/4.6/bits/stl_uninitialized.h \
 /usr/include/c++/4.6/bits/stl_vector.h \
 /usr/include/c++/4.6/bits/stl_bvector.h \
 /usr/include/c++/4.6/bits/vector.tcc SayMsgFactory.h SayMsgTypes.h \
 SayMsgIDs.h SayMsgDataTypes.h /usr/include/assert.h \
 WorldModelSayMsgFactory.h WorldModelSayMsgTypes.h \
 /usr/include/c++/4.6/cstdlib /usr/include/stdlib.h \
 /usr/include/x86_64-linux-gnu/bits/waitflags.h \
 /usr/include/x86_64-linux-gnu/bits/waitstatus.h \
 /usr/include/x86_64-linux-gnu/sys/types.h \
 /usr/include/x86_64-linux-gnu/sys/sysmacros.h /usr/include/alloca.h \
 /usr/include/c++/4.6/cstring /usr/include/string.h \
 /usr/include/x86_64-linux-gnu/sys/times.h \
 /usr/include/x86_64-linux-gnu/sys/resource.h \
 /usr/include/x86_64-linux-gnu/bits/resource.h
WorldModelKeepaway.o: WorldModelKeepaway.cc /usr/include/assert.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/wchar.h /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/c++/4.6/exception \
 /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc WorldModel.h Objects.h \
 SoccerTypes.h Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h PlayerSettings.h Logger.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/libio.h /usr/include/_G_config.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc /usr/include/c++/4.6/iomanip \
 /usr/include/c++/4.6/set /usr/include/c++/4.6/bits/stl_tree.h \
 /usr/include/c++/4.6/bits/stl_set.h \
 /usr/include/c++/4.6/bits/stl_multiset.h \
 /usr/include/x86_64-linux-gnu/sys/time.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h LoggerDraw.h Formations.h \
 /usr/include/c++/4.6/list /usr/include/c++/4.6/bits/stl_list.h \
 /usr/include/c++/4.6/bits/list.tcc
WorldModelSayMsgTypes.o: WorldModelSayMsgTypes.cc WorldModelSayMsgTypes.h \
 WorldModel.h Objects.h SoccerTypes.h /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/wchar.h /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/c++/4.6/exception \
 /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h PlayerSettings.h Logger.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/libio.h /usr/include/_G_config.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc /usr/include/c++/4.6/iomanip \
 /usr/include/c++/4.6/set /usr/include/c++/4.6/bits/stl_tree.h \
 /usr/include/c++/4.6/bits/stl_set.h \
 /usr/include/c++/4.6/bits/stl_multiset.h \
 /usr/include/x86_64-linux-gnu/sys/time.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h LoggerDraw.h Formations.h \
 /usr/include/c++/4.6/list /usr/include/c++/4.6/bits/stl_list.h \
 /usr/include/c++/4.6/bits/list.tcc SayMsgTypes.h SayMsgIDs.h \
 SayMsgDataTypes.h /usr/include/assert.h
ServerSettings.o: ServerSettings.cc ServerSettings.h Geometry.h \
 /usr/include/math.h /usr/include/features.h \
 /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h \
 /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/postypes.h \
 /usr/include/c++/4.6/cwchar /usr/include/wchar.h /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/exception /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/iosfwd \
 /usr/include/c++/4.6/cctype /usr/include/ctype.h \
 /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/bits/locale_classes.h \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc GenericValues.h \
 /usr/include/libio.h /usr/include/_G_config.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h /usr/include/string.h
PlayerSettings.o: PlayerSettings.cc PlayerSettings.h GenericValues.h \
 /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/wchar.h /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/c++/4.6/exception \
 /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc
GenericValues.o: GenericValues.cc GenericValues.h \
 /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/wchar.h /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/c++/4.6/exception \
 /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc Parse.h /usr/include/libio.h \
 /usr/include/_G_config.h /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h /usr/include/stdlib.h \
 /usr/include/x86_64-linux-gnu/bits/waitflags.h \
 /usr/include/x86_64-linux-gnu/bits/waitstatus.h \
 /usr/include/x86_64-linux-gnu/sys/types.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h \
 /usr/include/x86_64-linux-gnu/sys/sysmacros.h /usr/include/alloca.h \
 /usr/include/string.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc
Formations.o: Formations.cc Formations.h SoccerTypes.h \
 /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/wchar.h /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/c++/4.6/exception \
 /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h Parse.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/libio.h /usr/include/_G_config.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc
Geometry.o: Geometry.cc Geometry.h /usr/include/math.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h \
 /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/postypes.h \
 /usr/include/c++/4.6/cwchar /usr/include/wchar.h /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/exception /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/iosfwd \
 /usr/include/c++/4.6/cctype /usr/include/ctype.h \
 /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/bits/locale_classes.h \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc /usr/include/libio.h \
 /usr/include/_G_config.h /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h
Parse.o: Parse.cc Parse.h /usr/include/ctype.h /usr/include/features.h \
 /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h /usr/include/xlocale.h \
 /usr/include/math.h /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h /usr/include/string.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h
Logger.o: Logger.cc Logger.h /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/wchar.h /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/c++/4.6/exception \
 /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/libio.h /usr/include/_G_config.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc /usr/include/c++/4.6/iomanip \
 /usr/include/c++/4.6/set /usr/include/c++/4.6/bits/stl_tree.h \
 /usr/include/c++/4.6/bits/stl_set.h \
 /usr/include/c++/4.6/bits/stl_multiset.h \
 /usr/include/x86_64-linux-gnu/sys/time.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h /usr/include/c++/4.6/cstring \
 /usr/include/string.h
LoggerDraw.o: LoggerDraw.cc LoggerDraw.h SoccerTypes.h \
 /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/wchar.h /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/c++/4.6/exception \
 /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/libio.h /usr/include/_G_config.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc /usr/include/c++/4.6/cstring \
 /usr/include/string.h
BasicPlayer.o: BasicPlayer.cc BasicPlayer.h ActHandler.h Connection.h \
 /usr/include/stdio.h /usr/include/features.h \
 /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/libio.h \
 /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
 /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/x86_64-linux-gnu/bits/wchar.h /usr/include/xlocale.h \
 /usr/include/c++/4.6/exception /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc /usr/include/netdb.h \
 /usr/include/netinet/in.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdint.h /usr/include/stdint.h \
 /usr/include/x86_64-linux-gnu/sys/socket.h \
 /usr/include/x86_64-linux-gnu/sys/uio.h \
 /usr/include/x86_64-linux-gnu/sys/types.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h \
 /usr/include/x86_64-linux-gnu/sys/sysmacros.h \
 /usr/include/x86_64-linux-gnu/bits/uio.h \
 /usr/include/x86_64-linux-gnu/bits/socket.h \
 /usr/include/x86_64-linux-gnu/bits/sockaddr.h \
 /usr/include/x86_64-linux-gnu/asm/socket.h \
 /usr/include/asm-generic/socket.h \
 /usr/include/x86_64-linux-gnu/asm/sockios.h \
 /usr/include/asm-generic/sockios.h \
 /usr/include/x86_64-linux-gnu/bits/in.h /usr/include/rpc/netdb.h \
 /usr/include/x86_64-linux-gnu/bits/siginfo.h \
 /usr/include/x86_64-linux-gnu/bits/netdb.h /usr/include/arpa/inet.h \
 WorldModel.h Objects.h SoccerTypes.h Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h PlayerSettings.h Logger.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc /usr/include/c++/4.6/iomanip \
 /usr/include/c++/4.6/set /usr/include/c++/4.6/bits/stl_tree.h \
 /usr/include/c++/4.6/bits/stl_set.h \
 /usr/include/c++/4.6/bits/stl_multiset.h \
 /usr/include/x86_64-linux-gnu/sys/time.h LoggerDraw.h Formations.h \
 /usr/include/c++/4.6/list /usr/include/c++/4.6/bits/stl_list.h \
 /usr/include/c++/4.6/bits/list.tcc Parse.h
KeepawayPlayer.o: KeepawayPlayer.cc KeepawayPlayer.h BasicPlayer.h \
 ActHandler.h Connection.h /usr/include/stdio.h /usr/include/features.h \
 /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/libio.h \
 /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
 /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/x86_64-linux-gnu/bits/wchar.h /usr/include/xlocale.h \
 /usr/include/c++/4.6/exception /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc /usr/include/netdb.h \
 /usr/include/netinet/in.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdint.h /usr/include/stdint.h \
 /usr/include/x86_64-linux-gnu/sys/socket.h \
 /usr/include/x86_64-linux-gnu/sys/uio.h \
 /usr/include/x86_64-linux-gnu/sys/types.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h \
 /usr/include/x86_64-linux-gnu/sys/sysmacros.h \
 /usr/include/x86_64-linux-gnu/bits/uio.h \
 /usr/include/x86_64-linux-gnu/bits/socket.h \
 /usr/include/x86_64-linux-gnu/bits/sockaddr.h \
 /usr/include/x86_64-linux-gnu/asm/socket.h \
 /usr/include/asm-generic/socket.h \
 /usr/include/x86_64-linux-gnu/asm/sockios.h \
 /usr/include/asm-generic/sockios.h \
 /usr/include/x86_64-linux-gnu/bits/in.h /usr/include/rpc/netdb.h \
 /usr/include/x86_64-linux-gnu/bits/siginfo.h \
 /usr/include/x86_64-linux-gnu/bits/netdb.h /usr/include/arpa/inet.h \
 WorldModel.h Objects.h SoccerTypes.h Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h PlayerSettings.h Logger.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc /usr/include/c++/4.6/iomanip \
 /usr/include/c++/4.6/set /usr/include/c++/4.6/bits/stl_tree.h \
 /usr/include/c++/4.6/bits/stl_set.h \
 /usr/include/c++/4.6/bits/stl_multiset.h \
 /usr/include/x86_64-linux-gnu/sys/time.h LoggerDraw.h Formations.h \
 /usr/include/c++/4.6/list /usr/include/c++/4.6/bits/stl_list.h \
 /usr/include/c++/4.6/bits/list.tcc SMDPAgent.h Parse.h SayMsgEncoder.h \
 SayMsgTypes.h SayMsgIDs.h SayMsgDataTypes.h /usr/include/assert.h \
 /usr/include/c++/4.6/vector /usr/include/c++/4.6/bits/stl_construct.h \
 /usr/include/c++/4.6/bits/stl_uninitialized.h \
 /usr/include/c++/4.6/bits/stl_vector.h \
 /usr/include/c++/4.6/bits/stl_bvector.h \
 /usr/include/c++/4.6/bits/vector.tcc /usr/include/c++/4.6/cstring \
 /usr/include/string.h
HandCodedAgent.o: HandCodedAgent.cc /usr/include/string.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/stdlib.h \
 /usr/include/x86_64-linux-gnu/bits/waitflags.h \
 /usr/include/x86_64-linux-gnu/bits/waitstatus.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/x86_64-linux-gnu/sys/types.h \
 /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/sys/sysmacros.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h /usr/include/alloca.h \
 HandCodedAgent.h SMDPAgent.h WorldModel.h Objects.h SoccerTypes.h \
 /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/wchar.h /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/include/c++/4.6/exception /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h PlayerSettings.h Logger.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/libio.h /usr/include/_G_config.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc /usr/include/c++/4.6/iomanip \
 /usr/include/c++/4.6/set /usr/include/c++/4.6/bits/stl_tree.h \
 /usr/include/c++/4.6/bits/stl_set.h \
 /usr/include/c++/4.6/bits/stl_multiset.h \
 /usr/include/x86_64-linux-gnu/sys/time.h LoggerDraw.h Formations.h \
 /usr/include/c++/4.6/list /usr/include/c++/4.6/bits/stl_list.h \
 /usr/include/c++/4.6/bits/list.tcc /usr/include/c++/4.6/cstdlib
tiles2.o: tiles2.cc /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/wchar.h /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/xlocale.h /usr/include/c++/4.6/exception \
 /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc tiles2.h /usr/include/libio.h \
 /usr/include/_G_config.h /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h /usr/include/stdlib.h \
 /usr/include/x86_64-linux-gnu/bits/waitflags.h \
 /usr/include/x86_64-linux-gnu/bits/waitstatus.h \
 /usr/include/x86_64-linux-gnu/sys/types.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h \
 /usr/include/x86_64-linux-gnu/sys/sysmacros.h /usr/include/alloca.h \
 /usr/include/fcntl.h /usr/include/x86_64-linux-gnu/bits/fcntl.h \
 /usr/include/x86_64-linux-gnu/bits/uio.h \
 /usr/include/x86_64-linux-gnu/bits/stat.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h
LinearSarsaAgent.o: LinearSarsaAgent.cc /usr/include/stdlib.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/x86_64-linux-gnu/bits/waitflags.h \
 /usr/include/x86_64-linux-gnu/bits/waitstatus.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h /usr/include/xlocale.h \
 /usr/include/x86_64-linux-gnu/sys/types.h \
 /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/sys/sysmacros.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h /usr/include/alloca.h \
 /usr/include/string.h /usr/include/x86_64-linux-gnu/sys/stat.h \
 /usr/include/x86_64-linux-gnu/bits/stat.h /usr/include/fcntl.h \
 /usr/include/x86_64-linux-gnu/bits/fcntl.h \
 /usr/include/x86_64-linux-gnu/bits/uio.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h LinearSarsaAgent.h \
 SMDPAgent.h tiles2.h /usr/include/stdio.h /usr/include/libio.h \
 /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 LoggerDraw.h SoccerTypes.h /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/x86_64-linux-gnu/bits/wchar.h \
 /usr/include/c++/4.6/exception /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc
main.o: main.cc SenseHandler.h Connection.h /usr/include/stdio.h \
 /usr/include/features.h /usr/include/x86_64-linux-gnu/bits/predefs.h \
 /usr/include/x86_64-linux-gnu/sys/cdefs.h \
 /usr/include/x86_64-linux-gnu/bits/wordsize.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs.h \
 /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stddef.h \
 /usr/include/x86_64-linux-gnu/bits/types.h \
 /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/libio.h \
 /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdarg.h \
 /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
 /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
 /usr/include/c++/4.6/iostream \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++config.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/os_defines.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/cpu_defines.h \
 /usr/include/c++/4.6/ostream /usr/include/c++/4.6/ios \
 /usr/include/c++/4.6/iosfwd /usr/include/c++/4.6/bits/stringfwd.h \
 /usr/include/c++/4.6/bits/postypes.h /usr/include/c++/4.6/cwchar \
 /usr/include/x86_64-linux-gnu/bits/wchar.h /usr/include/xlocale.h \
 /usr/include/c++/4.6/exception /usr/include/c++/4.6/bits/char_traits.h \
 /usr/include/c++/4.6/bits/stl_algobase.h \
 /usr/include/c++/4.6/bits/functexcept.h \
 /usr/include/c++/4.6/bits/exception_defines.h \
 /usr/include/c++/4.6/bits/cpp_type_traits.h \
 /usr/include/c++/4.6/ext/type_traits.h \
 /usr/include/c++/4.6/ext/numeric_traits.h \
 /usr/include/c++/4.6/bits/stl_pair.h /usr/include/c++/4.6/bits/move.h \
 /usr/include/c++/4.6/bits/concept_check.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_types.h \
 /usr/include/c++/4.6/bits/stl_iterator_base_funcs.h \
 /usr/include/c++/4.6/bits/stl_iterator.h \
 /usr/include/c++/4.6/debug/debug.h /usr/include/c++/4.6/bits/localefwd.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++locale.h \
 /usr/include/c++/4.6/clocale /usr/include/locale.h \
 /usr/include/x86_64-linux-gnu/bits/locale.h /usr/include/c++/4.6/cctype \
 /usr/include/ctype.h /usr/include/endian.h \
 /usr/include/x86_64-linux-gnu/bits/endian.h \
 /usr/include/x86_64-linux-gnu/bits/byteswap.h \
 /usr/include/c++/4.6/bits/ios_base.h \
 /usr/include/c++/4.6/ext/atomicity.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/gthr-default.h \
 /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
 /usr/include/x86_64-linux-gnu/bits/sched.h \
 /usr/include/x86_64-linux-gnu/bits/time.h \
 /usr/include/x86_64-linux-gnu/bits/timex.h \
 /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
 /usr/include/x86_64-linux-gnu/bits/setjmp.h /usr/include/unistd.h \
 /usr/include/x86_64-linux-gnu/bits/posix_opt.h \
 /usr/include/x86_64-linux-gnu/bits/environments.h \
 /usr/include/x86_64-linux-gnu/bits/confname.h /usr/include/getopt.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/atomic_word.h \
 /usr/include/c++/4.6/bits/locale_classes.h /usr/include/c++/4.6/string \
 /usr/include/c++/4.6/bits/allocator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++allocator.h \
 /usr/include/c++/4.6/ext/new_allocator.h /usr/include/c++/4.6/new \
 /usr/include/c++/4.6/bits/ostream_insert.h \
 /usr/include/c++/4.6/bits/cxxabi_forced.h \
 /usr/include/c++/4.6/bits/stl_function.h \
 /usr/include/c++/4.6/backward/binders.h \
 /usr/include/c++/4.6/bits/range_access.h \
 /usr/include/c++/4.6/bits/basic_string.h \
 /usr/include/c++/4.6/initializer_list \
 /usr/include/c++/4.6/bits/basic_string.tcc \
 /usr/include/c++/4.6/bits/locale_classes.tcc \
 /usr/include/c++/4.6/streambuf /usr/include/c++/4.6/bits/streambuf.tcc \
 /usr/include/c++/4.6/bits/basic_ios.h \
 /usr/include/c++/4.6/bits/locale_facets.h /usr/include/c++/4.6/cwctype \
 /usr/include/wctype.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_base.h \
 /usr/include/c++/4.6/bits/streambuf_iterator.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/ctype_inline.h \
 /usr/include/c++/4.6/bits/locale_facets.tcc \
 /usr/include/c++/4.6/bits/basic_ios.tcc \
 /usr/include/c++/4.6/bits/ostream.tcc /usr/include/c++/4.6/istream \
 /usr/include/c++/4.6/bits/istream.tcc /usr/include/netdb.h \
 /usr/include/netinet/in.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.6/include/stdint.h /usr/include/stdint.h \
 /usr/include/x86_64-linux-gnu/sys/socket.h \
 /usr/include/x86_64-linux-gnu/sys/uio.h \
 /usr/include/x86_64-linux-gnu/sys/types.h \
 /usr/include/x86_64-linux-gnu/sys/select.h \
 /usr/include/x86_64-linux-gnu/bits/select.h \
 /usr/include/x86_64-linux-gnu/bits/sigset.h \
 /usr/include/x86_64-linux-gnu/sys/sysmacros.h \
 /usr/include/x86_64-linux-gnu/bits/uio.h \
 /usr/include/x86_64-linux-gnu/bits/socket.h \
 /usr/include/x86_64-linux-gnu/bits/sockaddr.h \
 /usr/include/x86_64-linux-gnu/asm/socket.h \
 /usr/include/asm-generic/socket.h \
 /usr/include/x86_64-linux-gnu/asm/sockios.h \
 /usr/include/asm-generic/sockios.h \
 /usr/include/x86_64-linux-gnu/bits/in.h /usr/include/rpc/netdb.h \
 /usr/include/x86_64-linux-gnu/bits/siginfo.h \
 /usr/include/x86_64-linux-gnu/bits/netdb.h /usr/include/arpa/inet.h \
 WorldModel.h Objects.h SoccerTypes.h Geometry.h /usr/include/math.h \
 /usr/include/x86_64-linux-gnu/bits/huge_val.h \
 /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
 /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
 /usr/include/x86_64-linux-gnu/bits/inf.h \
 /usr/include/x86_64-linux-gnu/bits/nan.h \
 /usr/include/x86_64-linux-gnu/bits/mathdef.h \
 /usr/include/x86_64-linux-gnu/bits/mathcalls.h ServerSettings.h \
 GenericValues.h PlayerSettings.h Logger.h /usr/include/c++/4.6/fstream \
 /usr/include/c++/4.6/bits/codecvt.h /usr/include/c++/4.6/cstdio \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/basic_file.h \
 /usr/include/c++/4.6/x86_64-linux-gnu/./bits/c++io.h \
 /usr/include/c++/4.6/bits/fstream.tcc /usr/include/c++/4.6/iomanip \
 /usr/include/c++/4.6/set /usr/include/c++/4.6/bits/stl_tree.h \
 /usr/include/c++/4.6/bits/stl_set.h \
 /usr/include/c++/4.6/bits/stl_multiset.h \
 /usr/include/x86_64-linux-gnu/sys/time.h LoggerDraw.h Formations.h \
 /usr/include/c++/4.6/list /usr/include/c++/4.6/bits/stl_list.h \
 /usr/include/c++/4.6/bits/list.tcc ActHandler.h KeepawayPlayer.h \
 BasicPlayer.h SMDPAgent.h HandCodedAgent.h /usr/include/c++/4.6/cstdlib \
 /usr/include/stdlib.h /usr/include/x86_64-linux-gnu/bits/waitflags.h \
 /usr/include/x86_64-linux-gnu/bits/waitstatus.h /usr/include/alloca.h \
 LinearSarsaAgent.h tiles2.h /usr/include/fcntl.h \
 /usr/include/x86_64-linux-gnu/bits/fcntl.h \
 /usr/include/x86_64-linux-gnu/bits/stat.h Parse.h /usr/include/string.h \
 /usr/include/dlfcn.h /usr/include/x86_64-linux-gnu/bits/dlfcn.h \
 /usr/include/c++/4.6/vector /usr/include/c++/4.6/bits/stl_construct.h \
 /usr/include/c++/4.6/bits/stl_uninitialized.h \
 /usr/include/c++/4.6/bits/stl_vector.h \
 /usr/include/c++/4.6/bits/stl_bvector.h \
 /usr/include/c++/4.6/bits/vector.tcc
