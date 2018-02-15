package flx.format;
class Rendering extends Section
{
	public var definitions: Array<Definition>;

	public var textures: Array<Digest>;

	public var materials: Array<Material>;

}
// typeはcommon.jsonの順番に準拠
// レンダラやシェーダの入力名を対応させる
class Definition extends Chunk
{
	public var type: Byte;

}
class Material extends Chunk
{
	public var num_faces: DWord;

	public var using_definitions: Array<DWord>;

}
