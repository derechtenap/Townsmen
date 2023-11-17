extends Node2D


func _process(delta):
	
	# Top-down movement
	var direction = Input.get_vector("left", "right", "up", "down")
	position += direction * 500 * delta
	
	# Shoot Laser
	if Input.is_action_pressed("primaryAction"):
		print("Shoot Laser!")

	# Shoot Grenade
	if Input.is_action_pressed("secondaryAction"):
		print("Shoot Grenade!")
