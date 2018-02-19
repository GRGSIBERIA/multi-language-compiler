package flx.format;
import haxe.io.Bytes;

interface Literal {
    public function write(bytes: haxe.io.BytesOutput) : Void;
    public function read(bytes: haxe.io.BytesInput) : Void;
}
class Integer implements Literal {
    var value : Int;

    public function write(bytes: haxe.io.BytesOutput) : Void {
        bytes.writeInt32(value);
    }
    public function read(bytes: haxe.io.BytesInput) : Void {
        this.value = bytes.readInt32();
    }
}
class Short implements Literal {
    var value : Int;

    public function write(bytes: haxe.io.BytesOutput) : Void {
        bytes.writeInt16(value);
    }
    public function read(bytes: haxe.io.BytesInput) : Void {
        this.value = bytes.readInt16();
    }
}
class Char implements Literal {
    var value : Int;

    public function write(bytes: haxe.io.BytesOutput) : Void {
        bytes.writeInt8(value);
    }
    public function read(bytes: haxe.io.BytesInput) : Void {
        this.value = bytes.readInt8();
    }
}
// 符号なし32ビット整数値を扱えない処理系があったので，現状の実装では符号付き32ビット整数を読み込む
class DWord implements Literal {
    var value : Int;

    public function write(bytes: haxe.io.BytesOutput) : Void {
        bytes.writeInt32(value);
    }
    public function read(bytes: haxe.io.BytesInput) : Void {
        this.value = bytes.readInt32();
    }
}
class Word implements Literal {
    var value : Int;

    public function write(bytes: haxe.io.BytesOutput) : Void {
        bytes.writeUInt16(value);
    }
    public function read(bytes: haxe.io.BytesInput) : Void {
        this.value = bytes.readUInt16();
    }
}
class Byte implements Literal {
    var value : Int;

    public function write(bytes: haxe.io.BytesOutput) : Void {
        bytes.writeByte(value);
    }
    public function read(bytes: haxe.io.BytesInput) : Void {
        this.value = bytes.readByte();
    }
}
class Float implements Literal {
    var value : Float;

    public function write(bytes: haxe.io.BytesOutput) : Void {
        bytes.writeFloat(value);
    }
    public function read(bytes: haxe.io.BytesInput) : Void {
        this.value = bytes.readFloat();
    }
}
class Double implements Literal {
    var value : Double;

    public function write(bytes: haxe.io.BytesOutput) : Void {
        bytes.writeDouble(value);
    }
    public function read(bytes: haxe.io.BytesInput) : Void {
        this.value = bytes.readDouble();
    }
}
class Array {

}