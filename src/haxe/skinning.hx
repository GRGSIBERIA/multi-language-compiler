package flx;
class Skinning extends Chunk
{
	public var bones: Array<Bone>;

		// 頂点あたりの最大ウェイト数
	public var influented_num_bones_per_vertex: DWord;

		// ウェイトの数はinfluented_num_bones_per_vertex * vertices.size
		// 頂点ごとのウェイト値を定義
	public var weights: Array<Weight>;

}
class Bone
{
	public var parent_id: Bone;

		// グローバルから見た時のボーンの向き
		// ボーンのローカル軸に相当
	public var direction: Quaternion;

}
class Weight
{
		// ウェイト値は w = {w_n| 0 < n < 5} -> w1 + w2 + w3 + w4 = 1
	public var value: Float;

}
