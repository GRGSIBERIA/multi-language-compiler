package flx;
class Rendering
{
	public var definitions: Array<Definition>;
	public var textures: Array<Digest>;
	public var materials: Array<Material>;
}
class Definition
{
	public var type: Byte;
}
class Material
{
	public var num_faces: DWord;
	public var using_definitions: Array<DWord>;
}
