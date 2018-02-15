package flx.format;
import haxe.io.Bytes;

interface Convertable {
    public function write() : Void;
    public function read(bytes: sys.io.Bytes, pos: sys.Int) : Int;
}
class Int implements Convertable {
    
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