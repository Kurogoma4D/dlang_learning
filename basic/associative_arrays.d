module basic.associative_arrays;

import std.array : assocArray;
import std.algorithm.iteration : each, group, splitter, sum;
import std.string : toLower;
import std.stdio : writeln, writefln;

void main(string[] args) {
    string text = "Rock D with D";

    int[string] words;
    text.toLower().splitter(" ").each!(w => words[w]++);

    foreach (key, value; words) {
        writefln("key: %s, value: %d", key, value);
    }

    writeln("Words: ", words.keys);

    writeln("# Words: ", words.byValue.sum);

    auto array = ['a', 'a', 'a', 'b', 'b', 'c', 'd', 'e', 'e'];

    auto keyValue = array.group;

    writeln("Key/Value range: ", keyValue);

    writeln("Associative array: ", keyValue.assocArray);
}
