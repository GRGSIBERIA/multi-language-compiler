package flx.format;
class Rigging extends Section
{
	public var nodes: Array<Node>;

	public var iks: Array<IK>;

	public var controllers: Array<Controller>;

	public var constraints: Array<Constraint>;

}
class RigBase extends Chunk
{
}
class Node extends RigBase
{
}
class IK extends Chunk
{
		// IKの計算回数
	public var iterations: DWord;

		// IKの計算1回あたりの制限確度, ラジアン
	public var limitation_radian: Float;

}
class Controller extends RigBase
{
	public var rotation: Quaternion;

}
class Constraint extends Chunk
{
		// 0: Parent
		// 1: Orient
		// 2: Point
		// 3: Aim
		// 4: Pole Vector
	public var constraint_type: Byte;

		// ikは厳密にはcontroller扱い
		// 0: bone
		// 1: node
		// 2: controller
	public var type_of: Byte;

		// 拘束の元になるオブジェクトのID
		// type_ofの数値による
	public var constraint_from_id: DWord;

		// 拘束の先になるオブジェクトのID
		// type_ofの数値による
	public var constraint_to_id: DWord;

}
