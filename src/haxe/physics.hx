package flx.format;

class Physics extends flx.format.Section
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

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class Rigidbody extends flx.format.Chunk
{
		// Rigidbodyを取り付けたいボーンのID
	public var attached_bone_id: Bone;

		// 重量(kg)
	public var mass: Float;

		// 空気抵抗
	public var drag: Float;

		// 回転の空気抵抗
	public var angular_drag: Float;

	public var use_gravity: Byte;

	public var is_kinematic: Byte;

		// 0: None
		// 1: Interpolate
		// 2: Extrapolate
	public var interpolate: Byte;

		// 0: Discrete
		// 1: Continuous
		// 2: Continuous Dynamic
	public var collision_detection: Byte;

	public var freeze_position: FreezeAxes;

	public var freeze_rotation: FreezeAxes;

	public var collider_id: Collider;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class FreezeAxes extends flx.format.Chunk
{
	public var x: Byte;

	public var y: Byte;

	public var z: Byte;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class Collider extends flx.format.Chunk
{
		// コライダーの中心位置
		// Rigidbodyがアタッチされたオブジェクトのローカル座標からのオフセット
	public var center: Vector3;

		// 0: Sphere
		// 1: Box
		// 2: Capsule
	public var collider_type: Byte;

		// collider_typeに応じて，以下の順番で格納
		// 0: Radius, null, null
		// 1: Width, Height, Depth
		// 2: Radius, Height
	public var size: Vector3;

	public var physic_material_id: PhysicMaterial;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class PhysicMaterial extends flx.format.Chunk
{
		// 動摩擦，0から1までの値を取る
	public var dynamic_friction: Float;

		// 静的摩擦，0から1までの値を取る
	public var static_friction: Float;

		// 弾性率，0から1までの値を取る
		// 0は跳ね返らない，1は無損失で跳ね返る
	public var bounciness: Float;

		// 衝突するオブジェクト間の摩擦
		// 0: Average
		// 1: Minimum
		// 2: Maximum
		// 3: Multiply
	public var friction_combine: Byte;

		// 衝突するオブジェクト間の弾力
		// 0: Average
		// 1: Minimum
		// 2: Maximum
		// 3: Multiply
	public var bounce_combine: Byte;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class Spring extends flx.format.Chunk
{
	public var enabled: Byte;

	public var spring: Float;

	public var damper: Float;

	public var target_position: Float;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class Motor extends flx.format.Chunk
{
	public var enabled: Byte;

	public var target_velocity: Float;

	public var force: Float;

	public var free_spin: Byte;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class Limitation extends flx.format.Chunk
{
	public var min: Float;

	public var max: Float;

	public var bounciness: Float;

	public var bounce_min_velocity: Float;

	public var contact_distance: Float;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class Break extends flx.format.Chunk
{
	public var break_force: Float;

	public var break_torque: Float;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class Joint extends flx.format.Chunk
{
	public var attached_rigidbody_id: Rigidbody;

	public var connected_rigidbody_id: Rigidbody;

	public var anchor: Vector3;

	public var axis: Vector3;

	public var connected_anchor: Vector3;

	public var enable_collision: Byte;

	public var enable_preprocessing: Byte;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class FixedJoint extends flx.format.Chunk
{
	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class HingeJoint extends flx.format.Chunk
{
	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class SpringJoint extends flx.format.Chunk
{
	public var spring: Float;

	public var damper: Float;

	public var min_distance: Float;

	public var max_distance: Float;

	public var tolerance: Float;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class AngularLimit extends flx.format.Chunk
{
	public var limit: Float;

	public var bounciness: Float;

	public var contact_distance: Float;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class LimitSpring extends flx.format.Chunk
{
	public var spring: Float;

	public var damper: Float;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class AngularDrive extends flx.format.Chunk
{
	public var position_spring: Float;

	public var position_damper: Float;

	public var maximum_force: Float;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class Projection extends flx.format.Chunk
{
	public var projection_mode: Byte;

	public var distance: Float;

	public var angle: Float;

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}

class ConfigurableJoint extends flx.format.Chunk
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

	public function write(bytes: BytesData, pos: Int)
	{
	}
	public function read(bytes: BytesData, pos: Int)
	{
	}
}
