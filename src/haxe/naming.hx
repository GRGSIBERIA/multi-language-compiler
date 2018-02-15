package flx.format;
class Locale extends Section
{
	public var system: SystemName;

	public var locales: Array<LocaleName>;

}
class SystemName extends Chunk
{
		// 以下の順番でシステム名が格納
		// bones
		// definitions
		// materials
		// textures
		// vertex_morphes
		// uv_morphes
		// bone_morphes
		// material_morphes
		// nodes
		// controller
		// constraints
		// rigidbodies
		// physic_materials
		// joints
	public var names: Array<CString>;

}
class LocaleName extends Chunk
{
		// 言語に応じた国コードを2バイトで表現
		// ISO 639-1:2002 Alpha-2 Codeに準拠
	public var locale_point: Byte;

		// 以下の順番で翻訳名が格納
		// bones
		// definitions
		// materials
		// textures
		// vertex_morphes
		// uv_morphes
		// bone_morphes
		// material_morphes
		// nodes
		// controller
		// constraints
		// rigidbodies
		// physic_materials
		// joints
	public var names: Array<WString>;

}
