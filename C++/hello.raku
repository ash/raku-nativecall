# $ g++ -shared -o hello.so hello.cpp
# $ raku hello.raku
# Hello, World!

use NativeCall;

sub hello() is native('hello.so') is symbol('_Z5hellov') {*}

hello();