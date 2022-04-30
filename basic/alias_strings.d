module basic.alias_strings;

import std.stdio : writeln, writefln;
import std.range : walkLength;
import std.uni : byGrapheme;
import std.string : format;

void main(string[] args) {
    string str = format("%s %s", "Hellö", "Wörld");
    writeln("My string: ", str);
    writeln("Array length (code unit count)" ~ " of string: ", str.walkLength);
    writeln("Range length (code point count)" ~ " of string: ", str.walkLength);
    writeln("Caracter length (grapheme count)" ~ " of string: ", str.byGrapheme.walkLength);

    import std.array : replace;

    writeln(replace(str, "lö", "lo"));

    import std.algorithm : endsWith;

    writefln("Does % s end with 'rid'? %s", str, str.endsWith(str, "rid"));

    import std.conv : to;

    dstring dstr = to!dstring(str);
    writeln("My dstring: ", dstr);
}
