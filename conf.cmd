set LIBS=-lxml2 -lpthread -lexpat /extras/lib/iconv.a -lpthread -lcx
set LDFLAGS=-Zomf -Zmap -static-libgcc -Zstack 8192 -Zhigh-mem /extras/lib/iconv.a -lexpat -Zlinker /PM:PM -lcx
set path=c:\usr\local1430\bin;%path%
md build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/openttd -DCMAKE_BUILD_TYPE=RelWithDebInfo  -DCMAKE_DISABLE_PRECOMPILE_HEADERS=ON .. 2>&1 |tee configure.log