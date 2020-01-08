# $ g++ -shared -o my_sqr_c.so sqr-c.cpp 
# $ raku sqr-c.raku
# 25

use NativeCall;

sub my_sqr(int32) returns int32 is native('my_sqr_c.so') is symbol('my_sqr') {*}

say my_sqr(5);
