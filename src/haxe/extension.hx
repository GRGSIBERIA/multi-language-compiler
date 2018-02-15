package flx.format;
class Float2 extends flx.format.Chunk
{
	public var x: Float;

	public var y: Float;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class Float3 extends flx.format.Chunk
{
	public var x: Float;

	public var y: Float;

	public var z: Float;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class Float4 extends flx.format.Chunk
{
	public var x: Float;

	public var y: Float;

	public var z: Float;

	public var w: Float;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class Half2 extends flx.format.Chunk
{
	public var x: Float;

	public var y: Float;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class Half3 extends flx.format.Chunk
{
	public var x: Float;

	public var y: Float;

	public var z: Float;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class Half4 extends flx.format.Chunk
{
	public var x: Float;

	public var y: Float;

	public var z: Float;

	public var w: Float;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class Vector2 extends flx.format.Float2
{
	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class Vector3 extends flx.format.Float3
{
	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class Quaternion extends flx.format.Float4
{
	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
// UTF-8文字列, 0x00終端
class WString extends flx.format.Chunk
{
	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
// ASCII文字列, 0x00終端
class CString extends flx.format.Chunk
{
	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
// ハッシュ関数はMurmur3を利用する
class Digest extends flx.format.DWord
{
	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class Position extends flx.format.Vector3
{
	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class Rotation extends flx.format.Quaternion
{
	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class Section extends flx.format.Chunk
{
	public var size: DWord;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class Chunk extends flx.format.Chunk
{
	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
