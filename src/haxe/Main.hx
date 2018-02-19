import src.haxe.Common.Int;
class Main {
    static function main() {
        var a = haxe.io.Bytes.alloc(4);
        a.setInt32(0, 1234);
        trace(a.getInt32(0));
    }
}
