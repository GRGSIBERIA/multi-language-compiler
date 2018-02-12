package flx;
class Physics
{
	var rigidbodies: Array<Rigidbody>;
	var colliders: Array<Collider>;
	var physic_materials: Array<PhysicMaterial>;
	var springs: Array<Spring>;
	var motors: Array<Motor>;
	var limitations: Array<Limitation>;
	var angular_limits: Array<AngularLimit>;
	var limit_springs: Array<LimitSpring>;
	var angular_drives: Array<AngularDrive>;
	var projections: Array<Projection>;
	var joints: Array<Joint>;
	var fixed_joints: Array<FixedJoint>;
	var hinge_joints: Array<HingeJoint>;
	var spring_joints: Array<SpringJoint>;
	var configurable_joints: Array<ConfigurableJoint>;
}
class Rigidbody
{
	var attached_bone_id: Bone;
	var mass: Float;
	var drag: Float;
	var angular_drag: Float;
	var use_gravity: Byte;
	var is_kinematic: Byte;
	var interpolate: Byte;
	var collision_detection: Byte;
	var freeze_position: FreezeAxes;
	var freeze_rotation: FreezeAxes;
	var collider_id: Collider;
}
class FreezeAxes
{
	var x: Byte;
	var y: Byte;
	var z: Byte;
}
class Collider
{
	var center: Vector3;
	var collider_type: Byte;
	var size: Vector3;
	var physic_material_id: PhysicMaterial;
}
class PhysicMaterial
{
	var dynamic_friction: Float;
	var static_friction: Float;
	var bounciness: Float;
	var friction_combine: Byte;
	var bounce_combine: Byte;
}
class Spring
{
	var enabled: Byte;
	var spring: Float;
	var damper: Float;
	var target_position: Float;
}
class Motor
{
	var enabled: Byte;
	var target_velocity: Float;
	var force: Float;
	var free_spin: Byte;
}
class Limitation
{
	var min: Float;
	var max: Float;
	var bounciness: Float;
	var bounce_min_velocity: Float;
	var contact_distance: Float;
}
class Break
{
	var break_force: Float;
	var break_torque: Float;
}
class Joint
{
	var attached_rigidbody_id: Rigidbody;
	var connected_rigidbody_id: Rigidbody;
	var anchor: Vector3;
	var axis: Vector3;
	var connected_anchor: Vector3;
	var enable_collision: Byte;
	var enable_preprocessing: Byte;
}
class FixedJoint
{
}
class HingeJoint
{
}
class SpringJoint
{
	var spring: Float;
	var damper: Float;
	var min_distance: Float;
	var max_distance: Float;
	var tolerance: Float;
}
class AngularLimit
{
	var limit: Float;
	var bounciness: Float;
	var contact_distance: Float;
}
class LimitSpring
{
	var spring: Float;
	var damper: Float;
}
class AngularDrive
{
	var position_spring: Float;
	var position_damper: Float;
	var maximum_force: Float;
}
class Projection
{
	var projection_mode: Byte;
	var distance: Float;
	var angle: Float;
}
class ConfigurableJoint
{
	var connected_anchor: Vector3;
	var secondary_axis: Vector3;
	var x_motion: Byte;
	var y_motion: Byte;
	var z_motion: Byte;
	var angular_x_motion: Byte;
	var angular_y_motion: Byte;
	var angular_z_motion: Byte;
	var linear_limit_spring_id: LimitSpring;
	var linear_limit_id: AngularLimit;
	var angular_x_limit_spring_id: LimitSpring;
	var low_angular_x_limit_id: AngularLimit;
	var high_angular_x_limit_id: AngularLimit;
	var angular_yz_limit_spring_id: LimitSpring;
	var angular_y_limit_id: AngularLimit;
	var angular_z_limit_id: AngularLimit;
	var target_position: Vector3;
	var target_velocity: Vector3;
	var angular_x_drive_id: AngularDrive;
	var angular_yz_drive_id: AngularDrive;
	var slerp_drive_id: AngularDrive;
	var projection_id: Projection;
	var configured_in_world_space: Byte;
	var swap_bodies: Byte;
}
