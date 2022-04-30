module basic.arrays;
import std.stdio : writeln;

char[] encrypt(char[] input, char shift) {
    auto result = input.dup;
    result[] -= 'a';
    result[] += shift;
    result[] %= 26;
    result[] += 'a';
    return result;
}

void main(string[] args) {
    char[] toBeEncrypted = ['w', 'e', 'l', 'c', 'o', 'm', 'e', 't', 'o', 'd'];

    writeln("Before: ", toBeEncrypted);
    auto encrypted = encrypt(toBeEncrypted, 16);
    writeln("After: ", encrypted);

    assert(encrypted == ['m', 'u', 'b', 's', 'e', 'c', 'u', 'j', 'e', 't']);
}
