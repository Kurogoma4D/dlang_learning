module basic.classes;

import std.stdio : writeln;

class Any {
    protected string type;

    this(string type) {
        this.type = type;
    }

    final string getType() {
        return type;
    }

    abstract string convertToString();
}

class Integer : Any {
    private {
        int number;
    }

    this(int number) {
        super("integer");
        this.number = number;
    }

public:

    override string convertToString() {
        import std.conv : to;

        return to!string(number);

    }
}

class Float : Any {
    private float number;

    this(float number) {
        super("float");
        this.number = number;
    }

    override string convertToString() {
        import std.string : format;

        return format("%.1f", number);

    }
}

void main(string[] args) {
    Any[] anys = [
        new Integer(10),
        new Float(3.1415f)
    ];

    foreach (Any any; anys) {
        writeln("any's type = ", any.getType());
        writeln("Content = ", any.convertToString());
    }
}
