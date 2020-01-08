# $ g++ -shared -o my_sqr.so sqr.cpp 
# $ raku sqr.raku
# 25

use NativeCall;

sub my_sqr(int32) returns int32 is native('my_sqr.so') is symbol('_Z6my_sqri') {*}

say my_sqr(5);
