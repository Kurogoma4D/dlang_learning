module basic.control_flow;

import std.stdio : writeln;

void main(string[] args) {
    if (1 == 1)
        writeln("You can trust math in D");
    else
        writeln("dead code");

    int c = 5;
    switch (c) {
        case 0: .. case 9:
            writeln(c, " is within 0-9");
            break;
        case 10:
            writeln("A Ten!");
            break;
        default:
            writeln("Nothing");
            break;
    }
}
