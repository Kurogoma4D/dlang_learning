module basic.templates;

import std.stdio : writeln;

class Animal(string noise) {
    void makeNoise() {
        writeln(noise ~ "!");
    }
}

class Dog : Animal!("Woof") {

}

class Cat : Animal!("Meeoauw") {

}

void multipleNoise(T)(T animal, int n) {
    for (int i = 0; i < n; i++) {
        animal.makeNoise();
    }
}

void main(string[] args) {
    auto dog = new Dog;
    auto cat = new Cat;

    multipleNoise(dog, 5);
    multipleNoise(cat, 5);
}
