import sys.io.File;

class Main {
    static function main() {
        trace("Hello, world!");
        var a = File.read("./src/common.hx", true);
        var b = a.readAll();
        trace(b.getInt32(0));
    }
}
