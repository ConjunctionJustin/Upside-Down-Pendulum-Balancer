extends Node2D

var motor
var max_force
var max_veloc

var algorithm

func _ready() -> void:
	motor = $Motor
	max_force = motor.max_force
	max_veloc = motor.max_veloc
	
	algorithm = preload("res://Scripts/Algorithm/main_algorithm.gd").new()


func _process(delta: float) -> void:
	var force = 0;
	
	force = algorithm.control_force(self)
	
	if Input.is_action_pressed("accel_left"):
		force = -max_force;
	if Input.is_action_pressed("accel_right"):
		force = max_force;
	motor.apply_central_force(Vector2(force,0));
	
	if motor.linear_velocity.x > max_veloc:
		motor.linear_velocity = Vector2(max_veloc, 0);
	if motor.linear_velocity.x < -max_veloc:
		motor.linear_velocity = Vector2(-max_veloc, 0);
