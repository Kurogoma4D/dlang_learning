module basic.memory;

import std.stdio : writeln;

void safeFun() @safe {
    writeln("Hello World");
    int* p = new int;
    // ↓コンパイルエラーだけど静的解析では出てくれない
    // int* f = p + 5;
}

void unsafeFun() {
    int* p = new int;
    int* fiddling = p + 5;
}

void main(string[] args) {
    safeFun();
    unsafeFun();
}
