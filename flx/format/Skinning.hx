package flx.format;

class Skinning extends flx.format.Section
{
	public var bones: Array<Bone>;

	// 頂点あたりの最大ウェイト数
	public var influented_num_bones_per_vertex: DWord;

	// ウェイトの数はinfluented_num_bones_per_vertex * vertices.size
	// 頂点ごとのウェイト値を定義
	public var weights: Array<Weight>;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class Bone extends flx.format.Chunk
{
	public var parent_id: Bone;

	// グローバルから見た時のボーンの向き
	// ボーンのローカル軸に相当
	public var direction: Quaternion;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class Weight extends flx.format.Chunk
{
	// ウェイト値は w = {w_n| 0 < n < 5} -> w1 + w2 + w3 + w4 = 1
	public var value: Float;

	public var bone_id: DWord;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class Limitation extends flx.format.Chunk
{
	public var x: Byte;

	public var y: Byte;

	public var z: Byte;

	public var bone_id: DWord;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
