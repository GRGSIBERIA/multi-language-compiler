package flx.format;
class Geometry extends flx.format.Section
{
	public var vertices: Array<Vector3>;

		// 3つの頂点インデックスで構成
		// 面数 = 配列数 / 3
	public var faces: Array<DWord>;

	public var normals: Array<Vector3>;

		// UVのセット, 複数定義できる
	public var uv_sets: Array<UVSet>;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class UVSet extends flx.format.Chunk
{
	public var uv: Array<Vector2>;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
