# $ gfortran -shared -o my_sqr.so sqr.f95
# $ raku sqr.raku
# 64

use NativeCall;

sub my_sqr(int32) returns int32 is native('my_sqr.so') is symbol('my_sqr_') {*}

say my_sqr(8);
