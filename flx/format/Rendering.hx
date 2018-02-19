package flx.format;

class Rendering extends flx.format.Section
{
	public var definitions: Array<Definition>;

	public var textures: Array<Digest>;

	public var materials: Array<Material>;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

// typeはcommon.jsonの順番に準拠
// レンダラやシェーダの入力名を対応させる
class Definition extends flx.format.Chunk
{
	public var type: Byte;

	public var material_id: DWord;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class Material extends flx.format.Chunk
{
	public var num_faces: DWord;

	public var using_definitions: Array<DWord>;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
