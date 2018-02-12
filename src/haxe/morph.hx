package flx;
class Morph extends Chunk
{
	public var target_vertex_ids: Array<DWord>;

	public var target_uv_ids: Array<DWord>;

	public var target_bone_ids: Array<DWord>;

	public var target_material_ids: Array<DWord>;

	public var vertex_morphes: Array<VertexMorph>;

	public var uv_morphes: Array<UVMorph>;

	public var bone_morphes: Array<BoneMorph>;

	public var material_morphes: Array<MaterialMorph>;

}
class MorphBase
{
}
class VertexMorph extends MorphBase
{
	public var directions: Array<Vector3>;

}
class UVMorph extends MorphBase
{
	public var directions: Array<Vector2>;

}
class BoneMorph extends MorphBase
{
	public var directions: Array<Vector3>;

}
class MaterialMorph extends MorphBase
{
	public var parameters: Array<MaterialMorphValue>;

}
class MaterialMorphValue
{
	public var parameter_digest: Digest;

	public var value: Float;

}
