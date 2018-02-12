package flx;
class Morph
{
	var target_vertex_ids: Array<DWord>;
	var target_uv_ids: Array<DWord>;
	var target_bone_ids: Array<DWord>;
	var target_material_ids: Array<DWord>;
	var vertex_morphes: Array<VertexMorph>;
	var uv_morphes: Array<UVMorph>;
	var bone_morphes: Array<BoneMorph>;
	var material_morphes: Array<MaterialMorph>;
}
class MorphBase
{
}
class VertexMorph
{
	var directions: Array<Vector3>;
}
class UVMorph
{
	var directions: Array<Vector2>;
}
class BoneMorph
{
	var directions: Array<Vector3>;
}
class MaterialMorph
{
	var parameters: Array<MaterialMorphValue>;
}
class MaterialMorphValue
{
	var parameter_digest: Digest;
	var value: Float;
}
