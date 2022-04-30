module basic.mutability;

import std.stdio : writeln;

void main(string[] args) {
    int m = 100;
    writeln("m: ", typeof(m).stringof);
    m = 10;

    const int* cm = &m;
    writeln("cm: ", typeof(cm).stringof);
    // ↓コンパイルエラー
    // *cm = 100;

    // ↓これもエラー
    // immutable int* im = &m;

    immutable v = 100;
    writeln("v: ", typeof(v).stringof);

    const int* cv = &v;
    writeln("*cv: ", typeof(cv).stringof);
}
