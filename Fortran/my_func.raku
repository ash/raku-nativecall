# $ gfortran -o my_func.so -shared func.f95
# $ raku my_func.raku
# 42

use NativeCall;

sub my_func() returns int32 is native('my_func.so') is symbol('my_func_') {*}

say my_func();
