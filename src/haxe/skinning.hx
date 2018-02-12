package flx;
class Skinning
{
	var bones: Array<Bone>;
	var influented_num_bones_per_vertex: DWord;
	var weights: Array<Weight>;
}
class Bone
{
	var parent_id: Bone;
	var direction: Quaternion;
}
class Weight
{
	var value: Float;
}
