use NativeCall;

sub myrand() returns int32 is native('libmyrand.so') {*}

say myrand();
