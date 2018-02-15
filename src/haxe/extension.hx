package flx.format;
class Float2 extends Chunk
{
	public var x: Float;

	public var y: Float;

}
class Float3 extends Chunk
{
	public var x: Float;

	public var y: Float;

	public var z: Float;

}
class Float4 extends Chunk
{
	public var x: Float;

	public var y: Float;

	public var z: Float;

	public var w: Float;

}
class Half2 extends Chunk
{
	public var x: Float;

	public var y: Float;

}
class Half3 extends Chunk
{
	public var x: Float;

	public var y: Float;

	public var z: Float;

}
class Half4 extends Chunk
{
	public var x: Float;

	public var y: Float;

	public var z: Float;

	public var w: Float;

}
class Vector2 extends Float2
{
}
class Vector3 extends Float3
{
}
class Quaternion extends Float4
{
}
// UTF-8文字列, 0x00終端
class WString extends Chunk
{
}
// ASCII文字列, 0x00終端
class CString extends Chunk
{
}
// ハッシュ関数はMurmur3を利用する
class Digest extends DWord
{
}
class Position extends Vector3
{
}
class Rotation extends Quaternion
{
}
class Section extends Chunk
{
	public var size: DWord;

}
class Chunk extends Chunk
{
}
