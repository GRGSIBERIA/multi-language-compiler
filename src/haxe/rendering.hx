package flx;
class Rendering extends Chunk
{
	public var definitions: Array<Definition>;

	public var textures: Array<Digest>;

	public var materials: Array<Material>;

}
// typeはcommon.jsonの順番に準拠
// レンダラやシェーダの入力名を対応させる
class Definition
{
	public var type: Byte;

}
class Material
{
	public var num_faces: DWord;

	public var using_definitions: Array<DWord>;

}
