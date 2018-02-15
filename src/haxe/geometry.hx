package flx.format;
class Geometry extends Section
{
	public var vertices: Array<Vector3>;

		// 3つの頂点インデックスで構成
		// 面数 = 配列数 / 3
	public var faces: Array<DWord>;

	public var normals: Array<Vector3>;

		// UVのセット, 複数定義できる
	public var uv_sets: Array<UVSet>;

}
class UVSet extends Chunk
{
	public var uv: Array<Vector2>;

}
