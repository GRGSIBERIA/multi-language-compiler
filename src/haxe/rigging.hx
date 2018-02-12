package flx;
class Rigging
{
	var nodes: Array<Node>;
	var iks: Array<IK>;
	var controllers: Array<Controller>;
	var constraints: Array<Constraint>;
}
class RigBase
{
}
class Node
{
}
class IK
{
	var iterations: DWord;
	var limitation_radian: Float;
}
class Controller
{
	var rotation: Quaternion;
}
class Constraint
{
	var constraint_type: Byte;
	var type_of: Byte;
	var constraint_from_id: DWord;
	var constraint_to_id: DWord;
}
