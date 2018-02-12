package flx;
class Skinning
{
	public var bones: Array<Bone>;
	public var influented_num_bones_per_vertex: DWord;
	public var weights: Array<Weight>;
}
class Bone
{
	public var parent_id: Bone;
	public var direction: Quaternion;
}
class Weight
{
	public var value: Float;
}
