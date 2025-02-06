extends Resource

func control_force(root: Node2D) -> float:
	var motor: RigidBody2D = root.get_node("Motor")
	var pendulum: RigidBody2D = root.get_node("Pendulum")

	var force: float = 0.1 * (pendulum.transform.origin.x - motor.transform.origin.x)**3
	if abs(force) > motor.max_force:
		force = motor.max_force * sign(force)

	return force

func test() -> String:
	print("penis");
	return "penis2"
