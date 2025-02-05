extends RigidBody2D

@export var max_veloc = 400
@export var max_force = 500

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var force = 0;
	if Input.is_action_pressed("accel_left"):
		force = -max_force;
		print("to the left!!");
	if Input.is_action_pressed("accel_right"):
		force = max_force;
		print("to the right!!");
	
	self.apply_central_force(Vector2(force,0));
