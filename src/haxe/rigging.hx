package flx;
class Rigging
{
	public var nodes: Array<Node>;
	public var iks: Array<IK>;
	public var controllers: Array<Controller>;
	public var constraints: Array<Constraint>;
}
class RigBase
{
}
class Node
{
}
class IK
{
	public var iterations: DWord;
	public var limitation_radian: Float;
}
class Controller
{
	public var rotation: Quaternion;
}
class Constraint
{
	public var constraint_type: Byte;
	public var type_of: Byte;
	public var constraint_from_id: DWord;
	public var constraint_to_id: DWord;
}
