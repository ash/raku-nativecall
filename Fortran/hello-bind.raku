# $ gfortran -shared -o hello-bind.so hello-bind.f95
# $ raku hello-bind.raku
#  Hello, World!

use NativeCall;

sub hello() is native('hello-bind.so') is symbol('hello') {*}

hello();