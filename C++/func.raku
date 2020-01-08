# $ g++ -shared -o my_func.so func.cpp 
# $ raku func.raku
# 42

use NativeCall;

sub my_func() returns int32 is native('my_func.so') is symbol('_Z7my_funcv') {*}

say my_func();
