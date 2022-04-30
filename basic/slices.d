module basic.slices;

import std.stdio : writeln;

void main(string[] args) {
    int[] test = [3, 9, 11, 7, 2, 76, 90, 6];
    test.writeln;

    writeln("First element: ", test[0]);
    writeln("Last element: ", test[$ - 1]);

    writeln("Exclude the first two elements: ", test[2 .. $]);

    writeln("Slices are views on the memory:");
    auto test2 = test;
    auto subView = test[3 .. $];
    test[] += 1;
    test.writeln;
    test2.writeln;
    subView.writeln;

    assert(test[2 .. 2].length == 0);
}
