package flx;
class Rendering
{
	var definitions: Array<Definition>;
	var textures: Array<Digest>;
	var materials: Array<Material>;
}
class Definition
{
	var type: Byte;
}
class Material
{
	var num_faces: DWord;
	var using_definitions: Array<DWord>;
}
