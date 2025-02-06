extends Resource

func control_force(root: Node2D) -> float:
	var motor = root.get_child(0)
	var pendulum = root.get_child(1)
	
	var force: float = 5 * (pendulum.transform.x - motor.transform.x)
	if abs(force) > motor.max_force:
		force = motor.max_force * sign(force)
	return force

func test() -> String:
	print("penis");
	return "penis2"
