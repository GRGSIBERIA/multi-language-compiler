package flx.format;
class Morph extends flx.format.Section
{
	public var target_vertex_ids: Array<DWord>;

	public var target_uv_ids: Array<DWord>;

	public var target_bone_ids: Array<DWord>;

	public var target_material_ids: Array<DWord>;

	public var vertex_morphes: Array<VertexMorph>;

	public var uv_morphes: Array<UVMorph>;

	public var bone_morphes: Array<BoneMorph>;

	public var material_morphes: Array<MaterialMorph>;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class MorphBase extends flx.format.Chunk
{
	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class VertexMorph extends flx.format.MorphBase
{
	public var directions: Array<Vector3>;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class UVMorph extends flx.format.MorphBase
{
	public var directions: Array<Vector2>;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class BoneMorph extends flx.format.MorphBase
{
	public var directions: Array<Vector3>;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class MaterialMorph extends flx.format.MorphBase
{
	public var parameters: Array<MaterialMorphValue>;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
class MaterialMorphValue extends flx.format.Chunk
{
	public var parameter_digest: Digest;

	public var value: Float;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
