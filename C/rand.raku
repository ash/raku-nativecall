use NativeCall;

sub c_rand() returns int32 is native('c') is symbol('rand') {*}

say c_rand();

