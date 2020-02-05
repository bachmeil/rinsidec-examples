RInsideC makes it possible to call R from any language with a C FFI.

This repo holds usage examples in C and Ruby:

- `hello.c` and `hello.rb` are conventional Hello World programs, except
    it is R printing to the screen.
- `test.c` and `test.rb` pass data and call R API functions.

To compile and run the C examples:

```
make hello
make test
```

The Ruby examples require [the FFI gem](https://github.com/ffi/ffi). The
simplest way to install that is `gem install ffi -- --enable-system-libffi`.
To run them:

```
ruby hello.rb
ruby test.rb
```
