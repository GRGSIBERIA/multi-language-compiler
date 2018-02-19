package flx.format;

class Locale extends flx.format.Section
{
	public var system: SystemName;

	public var locales: Array<LocaleName>;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class SystemName extends flx.format.Chunk
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

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class LocaleName extends flx.format.Chunk
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

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
