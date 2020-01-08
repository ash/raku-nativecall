# $ gfortran -shared -o hello.so hello.f95
# $ raku hello.raku
#  Hello, World!

use NativeCall;

sub hello() is native('hello.so') is symbol('hello_') {*}

hello();