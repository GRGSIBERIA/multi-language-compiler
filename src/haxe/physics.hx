package flx;
class Physics
{
	public var rigidbodies: Array<Rigidbody>;
	public var colliders: Array<Collider>;
	public var physic_materials: Array<PhysicMaterial>;
	public var springs: Array<Spring>;
	public var motors: Array<Motor>;
	public var limitations: Array<Limitation>;
	public var angular_limits: Array<AngularLimit>;
	public var limit_springs: Array<LimitSpring>;
	public var angular_drives: Array<AngularDrive>;
	public var projections: Array<Projection>;
	public var joints: Array<Joint>;
	public var fixed_joints: Array<FixedJoint>;
	public var hinge_joints: Array<HingeJoint>;
	public var spring_joints: Array<SpringJoint>;
	public var configurable_joints: Array<ConfigurableJoint>;
}
class Rigidbody
{
	public var attached_bone_id: Bone;
	public var mass: Float;
	public var drag: Float;
	public var angular_drag: Float;
	public var use_gravity: Byte;
	public var is_kinematic: Byte;
	public var interpolate: Byte;
	public var collision_detection: Byte;
	public var freeze_position: FreezeAxes;
	public var freeze_rotation: FreezeAxes;
	public var collider_id: Collider;
}
class FreezeAxes
{
	public var x: Byte;
	public var y: Byte;
	public var z: Byte;
}
class Collider
{
	public var center: Vector3;
	public var collider_type: Byte;
	public var size: Vector3;
	public var physic_material_id: PhysicMaterial;
}
class PhysicMaterial
{
	public var dynamic_friction: Float;
	public var static_friction: Float;
	public var bounciness: Float;
	public var friction_combine: Byte;
	public var bounce_combine: Byte;
}
class Spring
{
	public var enabled: Byte;
	public var spring: Float;
	public var damper: Float;
	public var target_position: Float;
}
class Motor
{
	public var enabled: Byte;
	public var target_velocity: Float;
	public var force: Float;
	public var free_spin: Byte;
}
class Limitation
{
	public var min: Float;
	public var max: Float;
	public var bounciness: Float;
	public var bounce_min_velocity: Float;
	public var contact_distance: Float;
}
class Break
{
	public var break_force: Float;
	public var break_torque: Float;
}
class Joint
{
	public var attached_rigidbody_id: Rigidbody;
	public var connected_rigidbody_id: Rigidbody;
	public var anchor: Vector3;
	public var axis: Vector3;
	public var connected_anchor: Vector3;
	public var enable_collision: Byte;
	public var enable_preprocessing: Byte;
}
class FixedJoint
{
}
class HingeJoint
{
}
class SpringJoint
{
	public var spring: Float;
	public var damper: Float;
	public var min_distance: Float;
	public var max_distance: Float;
	public var tolerance: Float;
}
class AngularLimit
{
	public var limit: Float;
	public var bounciness: Float;
	public var contact_distance: Float;
}
class LimitSpring
{
	public var spring: Float;
	public var damper: Float;
}
class AngularDrive
{
	public var position_spring: Float;
	public var position_damper: Float;
	public var maximum_force: Float;
}
class Projection
{
	public var projection_mode: Byte;
	public var distance: Float;
	public var angle: Float;
}
class ConfigurableJoint
{
	public var connected_anchor: Vector3;
	public var secondary_axis: Vector3;
	public var x_motion: Byte;
	public var y_motion: Byte;
	public var z_motion: Byte;
	public var angular_x_motion: Byte;
	public var angular_y_motion: Byte;
	public var angular_z_motion: Byte;
	public var linear_limit_spring_id: LimitSpring;
	public var linear_limit_id: AngularLimit;
	public var angular_x_limit_spring_id: LimitSpring;
	public var low_angular_x_limit_id: AngularLimit;
	public var high_angular_x_limit_id: AngularLimit;
	public var angular_yz_limit_spring_id: LimitSpring;
	public var angular_y_limit_id: AngularLimit;
	public var angular_z_limit_id: AngularLimit;
	public var target_position: Vector3;
	public var target_velocity: Vector3;
	public var angular_x_drive_id: AngularDrive;
	public var angular_yz_drive_id: AngularDrive;
	public var slerp_drive_id: AngularDrive;
	public var projection_id: Projection;
	public var configured_in_world_space: Byte;
	public var swap_bodies: Byte;
}
