package src.haxe;
import haxe.io.Bytes;

interface Convertable {
    public function write(bytes: haxe.io.Bytes, pos: Int) : Void;
    public function read(bytes: haxe.io.Bytes, pos: Int) : Int;
}
class Binary {
    var pos : Int;
    var bytes : haxe.io.Bytes;

    public function new(bytes: haxe.io.Bytes) {
        this.bytes = bytes;
        this.pos = 0;
    }

    public function readInt() : Int {
        var val = this.get(this.pos);
        this.pos += 4;
    }
}
class Int implements Convertable {
    public function write(val: flx.format.Int, pos: flx.format.Int) : flx.format.Int {
        
    }
    public function read(bytes: haxe.io.Bytes, pos: flx.format.Int) : flx.format.Int {
        
    }
}
class Short implements Convertable {

}
class Char implements Convertable {

}
class DWord implements Convertable {

}
class Word implements Convertable {

}
class Byte implements Convertable {

}
class Float implements Convertable {

}
class Double implements Convertable {

}
class Array {

}